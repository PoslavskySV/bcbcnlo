import cc.redberry.core.tensor.Tensor
import cc.redberry.core.tensor.TensorField
import cc.redberry.core.utils.TensorUtils
import cc.redberry.groovy.Redberry
import groovy.transform.BaseScript

import static cc.redberry.core.utils.TensorUtils.Count
import static cc.redberry.groovy.RedberryStatic.*

@BaseScript
Setup setup
setup.initialize()
setBcBcStates(0, 0)

use(Redberry) {
    'gStrong := 1'.t
    'e := 1'.t
    'MU := 0'.t
    'MD := 0'.t
    'MS := 0'.t


    def ShiftMomentum = { Tensor amp, Closure<Integer> selector ->
        use(Redberry) {
            Tensor prop = null
            amp.parentAfterChild { x ->
                if (x.class == TensorField && ((TensorField) x).stringName == 'FeynAmpDenominator') {
                    def props = []
                    for (int i = 0; i < x.size(); ++i) {
                        def a = x[i]
                        if (a[1] == 0.t && ((a[0] % 'q_a'.t).exists || Count(a[0], Integer.MAX_VALUE, 'q_a'.t) > 0))
                            props << a[0]
                    }
                    if (!props.isEmpty()) {
                        prop = props[selector.call(props.size())]
                    }
                }
            }
            if (prop == null || (prop % 'q_a'.t).exists)
                return amp
            int qPos
            for (qPos = 0; qPos < prop.size(); ++qPos)
                if ((prop[qPos] % 'q_a'.t).exists || Count(prop[qPos], Integer.MAX_VALUE, 'q_a'.t))
                    break;
            assert qPos >= 0 && qPos < prop.size()
            def subs = prop[qPos].eq('Q_a'.t - prop.remove(qPos))
            amp = subs >>> amp
            amp <<= 'Q_a = q_a'.t
            return amp
        }
    }

    def replGZPropagator = Identity
    replGZPropagator &= 'PropagatorDenominator[paBottom_{a}+paCharm_{a}+pBottom_{a}+pCharm_{a}, 0] = 1'.t
    replGZPropagator &= 'PropagatorDenominator[paBottom_{a}+paCharm_{a}+pBottom_{a}+pCharm_{a}, MZ] = 1'.t

    def replEEBr = Identity
    replEEBr &= 'eubar[k2_a]*G_a*ev[k1_a] = eps_a'.t
    replEEBr &= 'eubar[k2_a] * (G_{a} * (1+G5) * I * CW**(-1) * e * SW+G_{a} * (1-G5) * I * CW**(-1) * e * SW**(-1) * (-1/2+SW**2)) * ev[k1_a] = I*epsZ_a'.t


    def aAmps = [:]
    def mapping = [:]
    int myI = 0
    for (; myI < 232; myI++) {
        def myAmp = setup.fromFeynArts(ShiftMomentum(new File("z_feynarts/amp_$myI").text.t, { size -> 0 }))

        myAmp <<= EliminateMetrics
        myAmp *= '16*Pi**4'.t
        def myDen = mFactor >> expand(Denominator(myAmp))

//        myDen <<= ExpandAndEliminate & mFactor
        def myNum = ExpandAndEliminate >> Numerator(myAmp)
//        println myDen
//        println myNum
//        println '\n\n\n'


        for (int i = 0; i < 232; i++) {
            if (!(i < 100 || (i >= 112 && i <= 147) || (i >= 172 && i <= 207)))
                continue
//            println "num $i"
            if (mapping.containsValue(i))
                continue
            def baseAmp = new File("diagrams_mapping/diags/amp_$i").text.t
            baseAmp <<= EliminateMetrics
            baseAmp <<= replEEBr & replGZPropagator

            def pSize = Integer.MAX_VALUE
            for (int j = 0; j < pSize; j++) {
                if (j == 1 && pSize == Integer.MAX_VALUE)
                    break
//                println " ohoho $j"
                def aAmp = setup.fromFeynArts(ShiftMomentum(baseAmp, { size -> pSize = size; j }))
                def aDen = mFactor >> expand(Denominator(aAmp))

                def aNum = ExpandAndEliminate >> Numerator(aAmp)

//                //myDen.size() == aDen.size() && TensorUtils.Count(aAmp, Integer.MAX_VALUE, 'epsZ_a'.t, 'MT'.t) == 0
//                if (true || myDen == aDen) {
//                    println i
////                    println aDen
//                    println "          div: ${mFactor(myDen / aDen)} "
//                    def div2 = (mFactor(myDen - aDen)).toString()
//                    if (div2.length() < 1000)
//                        println "        div2: $div2 "
////                    println aNum
////                    println '\n'
//                }
                if (TensorUtils.equals(myDen, aDen) && TensorUtils.equals(myNum, aNum)) {
                    println "$myI -> $i"
                    mapping[myI] = i
                    break
                }
            }
            if (mapping[myI] != null)
                break
        }

        if (mapping[myI] == null)
            println "ERROR $myI"
    }

    println mapping
    assert mapping.size() == myI


}