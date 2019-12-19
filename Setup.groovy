import cc.redberry.core.context.CC
import cc.redberry.core.context.OutputFormat
import cc.redberry.core.tensor.*
import cc.redberry.core.transformations.TransformationCollection
import cc.redberry.core.transformations.abbreviations.AbbreviationsBuilder
import cc.redberry.core.utils.TimingStatistics
import cc.redberry.groovy.Redberry

import static Config.*
import static cc.redberry.core.indices.IndexType.Matrix1
import static cc.redberry.core.indices.IndexType.Matrix2
import static cc.redberry.core.tensor.Tensors.antiSymmetric
import static cc.redberry.core.tensor.Tensors.setSymmetric
import static cc.redberry.core.utils.TensorUtils.*
import static cc.redberry.groovy.RedberryPhysics.*
import static cc.redberry.groovy.RedberryStatic.*

abstract class Setup extends Script {
    /************** Configuration ******************/
    public $MomentasConfiguration = [k1_a: '0', k2_a: '0', pBcMinus_a: 'MC+MB', pBcPlus_a: 'MC+MB']

    public $InternalMomentas = ['q_a'],
           $ExternalMomentas = $MomentasConfiguration.keySet()

    /************** Internal vars ******************/

    public projectQuarks,
           replaceScalars,
           $mandelstam,
           $loopReplacements,
           expand,
           uTrace,
           uSimplify,
           leviSimplify, leviSimplify4,
           dTrace, dTrace4,
           dSimplify, dSimplify4,
           WolframFactor,
           reduceMomentums,
           mFactor

    public $SUNN, $CA, $CF, $Tf, $Nf, $Constants

    public Map PaVe
    public TimingStatistics stats
    public List multiplicationTable

    abstract def runScript()

    def run() {
        long start = System.currentTimeMillis()
        System.addShutdownHook {
            println ''
            println("[Bc+Bc] Finished within ${System.currentTimeMillis() - start}ms. Transformations stats:\n\n${stats.toStringSeconds()}")
        }
        runScript()
    }

    private static boolean redberryStarted = false

    private static void redberrySetup() {
        if (redberryStarted)
            return
        use(Redberry) {
            redberryStarted = true
            CC.resetTensorNames(31415926535L)
            CC.parserAllowsSameVariance = true

            setAntiSymmetric 'e_abcd'
            setAntiSymmetric 'f_ABC'
            setSymmetric 'd_ABC'

            defineMatrices 'T_A', Matrix2.matrix, //unitary matrices
                    'G_a', 'G5', 'GS[p_a]', Matrix1.matrix, //gamma matrices
                    'DiracSlash[p_a]', Matrix1.matrix,
                    'v[p_a]', Matrix1.vector, Matrix2.vector, //final quark wave function
                    'ubar[p_a]', Matrix1.covector, Matrix2.covector, //final antiquark wave function
                    'ev[p_a]', 'eu[p_a]', Matrix1.vector, //initial positron  wave function
                    'evbar[p_a]', 'eubar[p_a]', Matrix1.covector, //initial positron  wave function
                    'V_iA', Matrix1.matrix, Matrix2.matrix, //quark-gluon vertex
                    'D[p_m, mass]', Matrix1.matrix //quark propagator
            'DiracSlash[p_a] := G^a*p_a'.t
            'Pair[p_a, q_a] := q^a*p_a'.t
            'f_ABCD := f_ABE*f_ECD'.t
            'MU := 0'.t
            'MD := 0'.t
            'MS := 0'.t
        }
    }

    void ensureOutputCreated() {
        if (!(new File($OutputPath).exists()))
            new File($OutputPath).mkdirs()

    }

    private boolean initialized = false

    void initialize() {
        if (initialized)
            return
        initialized = true
        use(Redberry) {
            Setup.redberrySetup()
            ensureOutputCreated()

            $InternalMomentas = $InternalMomentas.t
            $ExternalMomentas = $ExternalMomentas.t

            $SUNN = 3.t
            if ($DropHeavyQuarks)
                $Nf = "Nf = 5".t
            else
                $Nf = 'Nf = 6'.t
            $Tf = 'Tf = 1/2'.t
            $CA = "CA = ${$SUNN}".t
            $CF = "CF = (${$SUNN}**2-1)/2/${$SUNN}".t
            $Constants = $Nf & $Tf & $CA & $CF

            $mandelstam = setMandelstam($MomentasConfiguration)
            $loopReplacements = []
            for (def q in $InternalMomentas)
                for (def o in ($InternalMomentas + $ExternalMomentas))
                    $loopReplacements << (q * ((o.indices % q.indices.inverted) >> o)).eq("${q.stringName}${o.stringName}".t)
            replaceScalars = $mandelstam
            replaceScalars = replaceScalars.add('pBcMinus_a*epsBcMinus^a = 0'.t)
            replaceScalars = replaceScalars.add('pBcPlus_a*epsBcPlus^a = 0'.t)
            replaceScalars = replaceScalars.add($loopReplacements)
            replaceScalars = timing 'Mandelstam', replaceScalars

            expand = timing 'Expand', ExpandTensorsAndEliminate[replaceScalars] & replaceScalars & 'd^n_n = d'.t
            uTrace = timing 'UnitaryTrace', UnitaryTrace[[N: $SUNN]]
            uSimplify = timing 'UnitarySimplify', UnitarySimplify[[N: $SUNN]]

            //d-dimensional Dirac
            def leviOptions = [Simplifications: replaceScalars, Dimension: 'd'.t, OverallSimplifications: expand]
            leviSimplify = timing 'LeviSimplify', LeviCivitaSimplify.minkowski[leviOptions]
            def dOptions = [ExpandAndEliminate: expand, Dimension: 'd', TraceOfOne: 4, Cache: true, LeviCivitaSimplify: leviSimplify]
            dTrace = timing 'DiracTrace', DiracTrace[dOptions]
            dSimplify = timing 'DiracSimplify', DiracSimplify[dOptions]

            //4-dimensional Dirac
            leviOptions = [Simplifications: replaceScalars, Dimension: 4, OverallSimplifications: expand & 'd = 4'.t]
            leviSimplify4 = timing 'LeviSimplify4', LeviCivitaSimplify.minkowski[leviOptions]
            dOptions = [ExpandAndEliminate: expand & 'd = 4'.t, Dimension: 4, TraceOfOne: 4, Cache: true, LeviCivitaSimplify: leviSimplify]
            dTrace4 = timing 'DiracTrace4', DiracTrace[dOptions]
            dSimplify4 = timing 'DiracSimplify4', DiracSimplify[dOptions]


            reduceMomentums = 'pBcMinus_a*eps^a = -pBcPlus_a*eps^a'.t & 'pBcMinus_a*epsZ^a = -pBcPlus_a*epsZ^a'.t
//            reduceMomentums &= 'e_abcd*pBcMinus^a*epsBcMinus^b*epsBcPlus^c*eps^d = 0'.t
            if ($LoadMathematica) {
                evaluate(new File('LoadMathematica.groovy'))
                WolframFactor = timing 'Wolfram', $WolframFactor
                mFactor = timing 'Factor', Factor[[FactorizationEngine: WolframFactor, FactorScalars: false]]
            } else {
                WolframFactor = timing 'Wolfram', Identity
                mFactor = timing 'Factor', Identity
            }

            loadTID()

            stats = new TimingStatistics()
            stats.track(replaceScalars, expand, uTrace, uSimplify, dTrace, dTrace4, dSimplify, dSimplify4, WolframFactor, mFactor, leviSimplify, leviSimplify4)
            stats.resetAll()
        }
    }

    void setBcBcStates(spin1, spin2) {
        use(Redberry) {
            projectQuarks = Identity
            def s1 = spin1 == 0 ? 'G5' : 'epsBcMinus^a*G_a'
            def s2 = spin2 == 0 ? 'G5' : 'epsBcPlus^a*G_a'
            projectQuarks &= "v[paCharm_a]*ubar[pBottom_a] = (G^a*pBcMinus_a - MC - MB)*$s1".t
            projectQuarks &= "v[paBottom_a]*ubar[pCharm_a] = (G^a*pBcPlus_a - MC - MB)*$s2".t

            //Bc-
            projectQuarks &= 'paCharm_a  = MC/(MB+MC)*pBcMinus_a'.t
            projectQuarks &= 'pBottom_a  = MB/(MB+MC)*pBcMinus_a'.t
            //Bc+
            projectQuarks &= 'paBottom_a = MB/(MB+MC)*pBcPlus_a'.t
            projectQuarks &= 'pCharm_a   = MC/(MB+MC)*pBcPlus_a'.t

            //<<'G5  = -I*e_abcd*G_a*G_b*G_c*G_d/24'.t
        }
    }

    void loadTID() {
        PaVe = [:]
        def localPaVe = PaVe
        use(Redberry) {
            new File('TID.redberry').eachLine { pv ->
                pv = pv.t
                localPaVe[pv[0].indices.size()] = pv
            }
        }
    }

    void buildTID() {
        use(Redberry) {
            def file = new File('TID.redberry')
            file.delete()
            for (def i in 1..3) {
                def PaVe = PassarinoVeltman(i, 'q_a', ['pBcMinus_a', 'pBcPlus_a'], replaceScalars & 'd^i_i = d'.t)
                PaVe <<= replaceScalars & mFactor
                file << PaVe << '\n'
            }
        }
    }

    public String toFileName(String file, String ext = '') {
        while (file.startsWith('/'))
            file = file.substring(1)
        return $OutputPath + '/' + file + ext
    }

    public File toFile(String file, String ext = '') {
        new File(toFileName(file, ext))
    }

    public SaveAmplitude(int iAmp, expr) {
        SaveAmplitude("amp_$iAmp", expr)
    }

    public SaveAmplitude(String ampName, expr) {
        def file = toFile(ampName, '.redberry')
        file.delete()
        file << expr

        file = toFile(ampName, '.m')
        file.delete()
        file << expr.toString(OutputFormat.WolframMathematica)
    }

    public Tensor ReadAmplitude(String ampName) {
        use(Redberry) { toFile(ampName, '.redberry').text.t }
    }

    public Tensor ReadAmplitude(int iAmp) {
        use(Redberry) { toFile("amp_$iAmp", '.redberry').text.t }
    }

    public WriteMathematicaSetup(scalars) {
        use(Redberry) {
            def spForMathematica = { e ->
                def f = e[0].class == Product ? e[0].factor : 1.t
                def lhs = e[0] / f
                Expand((lhs[0].stringName.t * lhs[1].stringName.t).eq(e[1] / f))
            }
            def forMathematica = { expr ->
                if (expr.class == SimpleTensor)
                    return expr.stringName
                if (expr.class == Expression)
                    return expr.toString(OutputFormat.WolframMathematica).replace('=', '->')
                return expr.toString(OutputFormat.WolframMathematica)
            }

            def setupFile = toFile('MathematicaSetup', '.m')
            setupFile.delete()
            setupFile << '$InternalMomentas = {' <<
                    $InternalMomentas.collect({ forMathematica(it) }).join(', ') << '};\n'
            setupFile << '$ExternalMomentas = {' <<
                    $ExternalMomentas.collect({ forMathematica(it) }).join(', ') << '};\n'

            setupFile << '$LoopVariablesDefinitions = {'
            setupFile << $loopReplacements.collect({ forMathematica(spForMathematica(it).transpose()) }).join(', ')
            setupFile << '};\n'

            setupFile << '$Mandelstam = {'
            setupFile << $mandelstam.expressions.collect({ forMathematica(spForMathematica(it)) }).join(', ')
            setupFile << '};\n'

            setupFile << '$Scalars = {'
            setupFile << scalars.join(', ')
            setupFile << '};\n'
        }
    }

    public final String getAbbreviationsFile() { toFile('Abbreviations', '.ser') }

    def fromFeynArts(Tensor amp) {
        use(Redberry) {
            amp <<= 'PropagatorDenominator[q_{a}, m] = 1/(q_a*q^a - m**2)'.t
            amp.transformParentAfterChild { x ->
                if (x.class == TensorField && ((TensorField) x).stringName == 'FeynAmpDenominator')
                    Tensors.multiplyAndRenameConflictingDummies(x.toArray())
                else x
            }
        }
    }

    def shifeMomentum(Tensor amp) {
        return shifeMomentum(0, amp)
    }

    def shifeMomentum(def iAmp, Tensor amp) {
        def compatability = new HashSet([8, 14, 35, 36, 37, 39, 40, 41, 44, 47, 48, 49, 50])
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
                    if (!props.isEmpty())
                        if (compatability.contains(iAmp + 1))
                            prop = props[props.size() - 1]
                        else
                            prop = props[0]
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

    void doTreeLevel() {
        initialize()

        def abbrs = new AbbreviationsBuilder()
        abbrs.abbrPrefix = 'scalar'
        abbrs.maxSumSize = 0
        abbrs.abbreviateTopLevel = true

        long elapsed = timing({
            use(Redberry) {
                def amps = new SumBuilder()
                for (int i = 0; ; ++i) {
                    def ampFile = new File($FeynArtsInput + "/amp_tree_$i")
                    if (!ampFile.exists())
                        break
                    amps << fromFeynArts(ampFile.text.t)
                }

                amps = amps.build()
                amps <<= projectQuarks
                amps <<= projectQuarks & uTrace & uSimplify
                amps <<= expand & dSimplify4 & dTrace4 & expand & leviSimplify4 & expand & 'd = 4'.t
                amps <<= reduceMomentums
                amps <<= mFactor

                amps <<= abbrs
                assert isSymbolic(amps)
                SaveAmplitude('amp_tree_level', amps)
            }
        }, false)

        abbrs.writeToFile(abbreviationsFile)

        println "[TreeLevel] done within ${elapsed}ms"
        println "[TreeLevel] written abbreviations:\n"
        abbrs.abbreviations.each { println(it) }
        println ''
    }

    void doCounterterms() {
        initialize()

        def abbrs = AbbreviationsBuilder.readFromFile(abbreviationsFile).replacements

        long elapsed = timing({
            use(Redberry) {
                def amps = new SumBuilder()
                for (int i = 0; ; ++i) {
                    def ampFile = new File($FeynArtsInput + "/amp_tree_$i")
                    if (!ampFile.exists())
                        break
                    amps << fromFeynArts(ampFile.text.t)
                }
                amps = amps.build()

                def Zmb = 'Zmb = 1 - 3*CF*alphaS/(4*pi)*(1/Epsilon - EulerGamma + Log[4*pi] + Log[mu**2/MB**2] + 4/3)'.t
                def Zmc = 'Zmc = Zmb'.t << (Zmb & 'MB = MC'.t)
                def Zqb = 'Zqb = Zmb'.t << Zmb
                def Zqc = 'Zqc = Zmc'.t << Zmc
                def Zalpha = 'Zalpha = 1 - (11/3*CA - 4/3*Tf*Nf)*alphaS/(4*pi)*(1/Epsilon - EulerGamma + Log[4*pi])'.t
                amps *= 'Zqb*Zqc'.t
                amps <<= 'MC = Zmc*MC'.t & 'MB = Zmb*MB'.t & 'gStrong = Zalpha**(1/2)*gStrong'.t
                amps <<= Zqb & Zqc & Zmb & Zmc & Zalpha & 'alphaS = gStrong**2/4/pi'.t & $Constants
                amps <<= expand

                amps <<= Differentiate['gStrong'.t, 'gStrong'.t, 'gStrong'.t, 'gStrong'.t] & 'gStrong = 0'.t
                amps *= '1/24*gStrong**4'.t


                amps <<= projectQuarks & uTrace & uSimplify
                amps <<= expand & dSimplify & dTrace & expand & leviSimplify & expand
                amps <<= reduceMomentums
                amps <<= 'd = 4 - 2*Epsilon'.t
                amps <<= mFactor
                amps <<= abbrs

                amps <<= Together & mFactor
                assert isSymbolic(amps)

                amps *= 'Epsilon'.t
                def ampsDiv = amps << 'Epsilon = 0'.t
                ampsDiv /= 'Epsilon'.t

                def ampsFin = Differentiate['Epsilon'](amps) << 'Epsilon = 0'.t


                SaveAmplitude('amp_counterterms_all', amps)
                SaveAmplitude('amp_counterterms_div', ampsDiv)
                SaveAmplitude('amp_counterterms_fin', ampsFin)

                println ampsDiv
                println ampsFin
                println ''
            }
        }, false)

        println "[Counterterms] done within ${elapsed}ms"
        println ''
    }

    void do1Loop() {
        initialize()

        int nonZeroAmps = 0
        def abbrs = AbbreviationsBuilder.readFromFile(abbreviationsFile)
        abbrs.maxSumSize = 0
        abbrs.abbrPrefix = 'scalar'
        abbrs.abbreviateTopLevel = true

        long elapsed = timing({
            use(Redberry) {
                for (int iDiagram = 0; ; iDiagram++) {
                    def FeynArts = new File($FeynArtsInput + "/amp_${iDiagram}")
                    if (!FeynArts.exists())
                        break

                    boolean $isZero
                    long ampElapsed = timing({
                        def term = fromFeynArts(shifeMomentum(iDiagram, FeynArts.text.t))
                        //drop heavy quarks
                        if ($DropHeavyQuarks && Count(term, Integer.MAX_VALUE, 'MT'.t) != 0)
                            term = 0.t

                        term <<= projectQuarks
                        def num = Numerator(term), den = Denominator(term)
                        assert term == num / den

                        den <<= ExpandAndEliminate & Factor[[FactorizationEngine: WolframFactor]] & replaceScalars
                        den <<= $loopReplacements & mFactor

                        num <<= uTrace & uSimplify
                        num <<= expand
                        num <<= dSimplify & dTrace & expand

                        assert Exponent(num, 'q_a'.t) <= 3
                        for (def i in [3, 2, 1])
                            num <<= PaVe[i] & expand & expand

                        num <<= leviSimplify & expand
                        num <<= reduceMomentums
                        num <<= mFactor
                        assert Exponent(num, 'q_a'.t) == 0

                        term = num.class == Sum ? num.collect({ t -> t / den }).sum() : num / den
                        term <<= abbrs
                        if (!($isZero = isZero(term)))
                            ++nonZeroAmps

                        assert Exponent(term, 'G_a'.t, 'T_A'.t) == 0
                        SaveAmplitude(iDiagram, term)
                    }, false)

                    println "[1loop] amplitude ${iDiagram} done (took ${ampElapsed}ms) ${$isZero ? '(amp = zero)' : ''}"
                }
            }
        }, false)

        abbrs.writeToFile(abbreviationsFile)

        println "[1loop] done within ${elapsed}ms"
        println "[1loop] in total $nonZeroAmps non zero amplitudes"
        println "[1loop] written abbreviations:\n"
        abbrs.abbreviations.each { println(it) }
        WriteMathematicaSetup(abbrs.abbreviations.collect({ it.abbreviation }))
    }

    void doMultiplicationTable() {
        initialize()

        long elapsed = timing({
            use(Redberry) {

                //e+e- bracket
                def epsG = 'eps_a = evbar[k1_a]*I*e*G_a*eu[k2_a]/s'.t
                def epsZ = 'epsZ_a = evbar[k1_a]*((I*CW**(-1)*e*SW*G_{a}*(1+G5)/2+I*CW**(-1)*e*SW**(-1)*(-1/2+SW**2)*G_{a}*(1-G5)/2))*eu[k2_a]/(s - MZ**2 + I*MZ*GammaZ)'.t

                def epss = [epsG, epsZ]


                def conjEps = { eps -> eps.toString().replace('eps', 'epsC').t }
                def epssC = epss.collect { eps ->
                    def epsConj = '{_a -> _b}'.mapping >> eps
                    epsConj <<= Conjugate & 'eu[k2_a]*evbar[k1_a] = ev[k1_a]*eubar[k2_a]'.t & Reverse & 'G5 = -G5'.t
                    conjEps(epsConj)
                }

                def eeBrackets = []
                for (def eps in epss)
                    for (def epsConj in epssC) {
                        def eeBracket = eps[1] * epsConj[1]
                        eeBracket <<= expand
                        eeBracket <<= 'ev[k1_a]*evbar[k1_a] = k1_a*G^a - me'.t
                        eeBracket <<= 'eu[k2_a]*eubar[k2_a] = k2_a*G^a + me'.t
                        eeBracket <<= 'k2_a = pBcPlus_a + pBcMinus_a - k1_a'.t
                        eeBracket <<= dTrace4 & 'd = 4'.t & expand & mFactor
                        eeBracket = (eps[0] * epsConj[0]).eq(eeBracket)
                        eeBracket <<= 'me = 0'.t
                        eeBrackets << eeBracket
                    }

                def eeBracket = new TransformationCollection(eeBrackets)

                def abbrs = AbbreviationsBuilder.readFromFile(abbreviationsFile).abbreviations
                multiplicationTable = []

                def abbrConj = { abbr -> "Conjugate[$abbr]".t }
                for (lAbbr in abbrs) {
                    for (rAbbr in abbrs) {
                        def lhs = lAbbr.abbreviation * abbrConj(rAbbr.abbreviation)
                        def rhs = lAbbr.definition * Conjugate(('eps_a = epsC_a'.t & 'epsZ_a = epsCZ_a'.t) >> rAbbr.definition)
                        rhs <<= expand
                        rhs <<= 'epsBcPlus_a*epsBcPlus_b = -g_ab + pBcPlus_a*pBcPlus_b/(MC+MB)**2'.t
                        rhs <<= 'epsBcMinus_a*epsBcMinus_b = -g_ab + pBcMinus_a*pBcMinus_b/(MC+MB)**2'.t

                        rhs <<= expand & leviSimplify4 & 'd = 4'.t & expand & mFactor
                        rhs <<= eeBracket
                        rhs <<= expand & leviSimplify4 & 'd = 4'.t & expand & mFactor

                        def rule = lhs.eq(rhs)
                        assert isSymbolic(rule)
                        multiplicationTable << rule
                    }
                }

                //writing table

                def rFile = toFile('MultiplicationTable', '.redberry')
                def mFile = toFile('MultiplicationTable', '.m')
                rFile.delete(); mFile.delete();
                mFile << '$MultiplicationTable = {\n'
                for (int i = 0; ; i++) {
                    def rule = multiplicationTable[i]
                    rFile << rule
                    mFile << '    ' << rule.toString(OutputFormat.WolframMathematica).replace('=', '->')
                    if (i == multiplicationTable.size() - 1)
                        break
                    rFile << '\n'
                    mFile << ',\n'
                }
                mFile << '\n}'
            }
        }, false)


        println "[rules] done within ${elapsed}ms"
    }
}