import cc.redberry.core.tensor.Tensor
import cc.redberry.core.transformations.Transformation
import cc.redberry.groovy.Redberry
import groovy.transform.BaseScript

import java.util.regex.Matcher

import static Config.$DropHeavyQuarks
import static Config.$IncludeZ
import static cc.redberry.core.indices.IndexType.Matrix1
import static cc.redberry.groovy.RedberryStatic.defineMatrices

@BaseScript
Setup Setup

$IncludeZ = false
$DropHeavyQuarks = false

initialize()

$OutputPath = "amps_PP_temp"
ensureOutputCreated()
setBcBcStates(0, 1)
//doTreeLevel()
//doCounterterms()

def ToFc = { Tensor expr ->
    def str = expr.toString()
    def tPattern = /Tr\[[^\]]*\]/
    Matcher m = (str =~ tPattern)
    StringBuffer buff = new StringBuffer();
    while (m.find())
        m.appendReplacement(buff, m.group().replaceAll('\\*', '.'))
    m.appendTail(buff)
    str = buff.toString()

    def gPattern = /G[\_\^]\{([a-z])\}/
    buff = new StringBuffer();
    m = str =~ gPattern
    while (m.find())
        m.appendReplacement(buff, "GAD[${m.group(1)}]")
    m.appendTail(buff)

    str = buff.toString()

    def vPattern = /([a-zA-Z]+)[\_\^]\{([a-z])\}/

    buff = new StringBuffer();
    m = str =~ vPattern
    while (m.find())
        m.appendReplacement(buff, "FV[${m.group(1)},${m.group(2)}]")
    m.appendTail(buff)

    str = buff.toString()
    str = str.replaceAll('G5', 'GA[5]')
    str = str.replace('**', "^")
    str = str.replace('Tr[', "DiracTrace[")
    return str
}

use(Redberry) {
    'D:=d'.t
    'GS[p_a] := G_a*p^a'.t
    defineMatrices 'TTT', Matrix1.matrix

    def G5repl = 'G5  = -I*e_abcd*G_a*G_b*G_c*G_d/24'.t

    def MatrixTrace = { Tensor x -> def ind = x.indices.getOfType(Matrix1).free; (ind.upper.inverted % ind.lower) >> x
    } as Transformation

    def t = 'G_{o}*G_{b}*G_{a}*G_{n}*G_{g}*G_{d}*G_{o}*G5*G_{d}'.t
    println ToFc(t)

//    println dSimplify('G_{o}*G_{b}*G_{a}*G_{n}*G_{g}*G_{d}*G_{o}'.t)
//    return
    def simp = t << ('G5 = TTT'.t & dSimplify & 'TTT = G5'.t)
    println ToFc(simp)

    def f = t << ('G5 = TTT'.t & dSimplify & 'TTT = G5'.t & MatrixTrace & dTrace & mFactor)

//    println f

//    return
    def tSimplifyFc = 'Tr[-4*G_a*G_n*G_g*G_b*G5]+Tr[-4*G_b*G_a*G_g*G_n*G5]+Tr[-36*G_b*G_a*G_n*G_g*G5]+Tr[14*D*G_b*G_a*G_n*G_g*G5]+Tr[-(D**2*G_b*G_a*G_n*G_g*G5)]+Tr[4*G_b*G_n*G_g*G_a*G5]+Tr[20*G_g*G_b*G_a*G_n*G5]+Tr[-2*D*G_g*G_b*G_a*G_n*G5]+Tr[20*G_n*G_a*G_b*G_g*G5]+Tr[-2*D*G_n*G_a*G_b*G_g*G5]'.t
    def tSimplify = dSimplify(t)
    println 'tSimplifyFc:'
    println tSimplifyFc
    println 'tSimplify:'
    println tSimplify

//    println 'tSimplify - tSimplifyFc:'
//    println mFactor((tSimplify - tSimplifyFc))

    println '\n\n'
    t = MatrixTrace(t)

    println(t << (dTrace & expand & mFactor))
    println(t << (dSimplify & dTrace & expand & mFactor))

    println(t << (G5repl & dTrace & expand & mFactor))
    println(t << (G5repl & dSimplify & dTrace & expand & mFactor))
}
