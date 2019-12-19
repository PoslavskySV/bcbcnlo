import cc.redberry.core.context.OutputFormat
import cc.redberry.core.tensor.Tensor
import cc.redberry.core.tensor.Tensors
import cc.redberry.groovy.Redberry
import groovy.transform.BaseScript

import java.util.regex.Matcher

import static Config.$DropHeavyQuarks
import static Config.$IncludeZ
import static cc.redberry.groovy.RedberryStatic.*

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
    def amp = fromFeynArts(shifeMomentum(5, new File('feynarts/amp_5').text.t))

    println '\n\n'

    amp <<= projectQuarks & EliminateMetrics
    amp <<= Numerator
    amp <<= 'gStrong = 1'.t & 'e = 1'.t
    amp <<= expand
    amp <<= uTrace & uSimplify

    amp <<= PaVe[3] & PaVe[2] & PaVe[1]
    amp <<= expand

    def fcFile = new File('/Users/Poslavsky/Downloads/fcInput.m')
    fcFile.delete()
    fcFile << ToFc(amp)

    def scalars = 'e_{abcd}*eps_a*epsBcMinus_b*pBcMinus_{c}*pBcPlus_{d} = scalar0'.t
    scalars &= 'e_{abcd}*eps_a*epsBcPlus_b*pBcMinus_{c}*pBcPlus_{d} = scalar0'.t
    def ampD = amp as List

    println ampD[95]
    println ToFc(ampD[95])
//    return

    def G5repl = Identity//'G5  = -I*e_abcd*G_a*G_b*G_c*G_d/24'.t
    ampD = ampD.collect { it << (G5repl & dSimplify & dTrace & expand & mFactor & scalars) }

    def fcd = new File('/Users/Poslavsky/Downloads/fcd.txt').text.replace('^', '**').replace('"', '').t << 'D = d'.t
    for (int i = 0; i < fcd.size(); i++) {
        println "======= $i ======="
        println(mFactor >> expand(ampD[i] - fcd[i]))
        println(mFactor >> expand((ampD[i] - fcd[i]) << 'd = 4'.t))
    }

    println "======= Total ======="

    println(mFactor >> expand(Tensors.sum(ampD) - Tensors.sum(fcd as List)))

    def ampT = amp << (dSimplify & dTrace & expand & mFactor & scalars)
    println(mFactor >> expand(ampT - Tensors.sum(fcd as List)))

    println "======= 4 ======="
    println(mFactor >> expand((ampT - Tensors.sum(fcd as List)) << 'd = 4'.t))

    println mFactor(ampT).toString(OutputFormat.WolframMathematica)
}
