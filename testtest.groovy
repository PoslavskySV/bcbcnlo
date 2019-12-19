import cc.redberry.core.tensor.Product
import cc.redberry.core.tensor.ProductContent
import cc.redberry.core.tensor.Tensor
import cc.redberry.core.transformations.Transformation
import cc.redberry.core.transformations.abbreviations.AbbreviationsBuilder
import cc.redberry.groovy.Redberry

import static cc.redberry.core.tensor.StructureOfContractions.toPosition
import static cc.redberry.core.tensor.Tensors.antiSymmetric

use(Redberry) {
    setAntiSymmetric('e_abcd')
    def replEps = { Product p ->
        def t = p.allScalars.find { it.size() == 5 }
        if (t == null)
            return p
        ProductContent eps = t.content
        int i = 0
        for (; i < eps.size(); i++)
            if (eps.get(i).indices.size() == 4)
                break
        def st = eps.structureOfContractions
        def a = eps.get(toPosition(st.contractions[i][0]))
        def b = eps.get(toPosition(st.contractions[i][1]))
        def c = eps.get(toPosition(st.contractions[i][2]))
        def d = eps.get(toPosition(st.contractions[i][3]))

        return p << t.eq("Eps[${a.stringName},${b.stringName}, ${c.stringName}, ${d.stringName}]".t)
    }

    def tr = { Tensor t ->
        t.transformParentAfterChild { x ->
            if (x.class == Product) {
                Product p = x
                for (def sc in p.allScalars) {
                    if (sc.size() == 2) {
                        x <<= sc.eq(('sp[' + sc[0].stringName + ', ' + sc[1].stringName + ']').t)
                    }
                }
                if (x instanceof Product)
                    x = replEps(x)
            }
            x
        }
    } as Transformation

//
//    tr = tr & 'epsBcPlus^{a}*pBcPlus_{d}*epsZ^{h}*e^{d}_{jah}*epsBcMinus^{j} = Eps[pBcPlus, epsBcMinus, epsBcPlus, epsZ]'.t
//    tr = tr & 'e_{a}^{i}_{jh}*epsBcPlus^{a}*pBcMinus_{i}*epsBcMinus^{j}*epsZ^{h} = Eps[epsBcPlus, pBcMinus, epsBcMinus, epsZ]'.t
//    tr = tr & 'pBcPlus_{g}*pBcMinus_{o}*e_{ba}^{go}*epsBcMinus^{a}*epsZ^{b} = Eps[epsZ, epsBcMinus, pBcPlus, pBcMinus]'.t
//    tr = tr & 'pBcMinus_{b}*pBcPlus_{g}*epsBcMinus^{o}*e_{ao}^{gb}*epsBcPlus^{a} = Eps[epsBcPlus, epsBcMinus, pBcPlus, pBcMinus]'.t
//    tr = tr & 'pBcPlus_{f}*epsZ^{a}*epsBcPlus^{h}*pBcMinus_{g}*e^{f}_{ha}^{g} = Eps[pBcPlus, epsBcPlus, epsZ, pBcMinus]'.t
//    tr = tr & 'pBcMinus_{d}*eps^{g}*pBcPlus_{b}*epsBcPlus^{a}*e^{b}_{a}^{d}_{g} = Eps[pBcPlus, epsBcPlus, pBcMinus, eps]'.t

    def abbrs = AbbreviationsBuilder.readFromFile('z_amps_VV/Abbreviations.ser')
    abbrs.abbreviations.each {
        println((tr >> it.asSubstitution()).toString().replace('=', '->') + ',')
    }
}