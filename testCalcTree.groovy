import cc.redberry.core.transformations.abbreviations.AbbreviationsBuilder
import cc.redberry.core.utils.TensorUtils
import cc.redberry.groovy.Redberry

def abbrs = AbbreviationsBuilder.readFromFile("z_amps_VV/Abbreviations.ser").abbreviations

use(Redberry) {
    println 'GAMMA:'
    abbrs.each {
        if (TensorUtils.Count(it.definition, 'eps_a'.t) != 0)
            println it.abbreviation
    }

    println 'Z:'
    abbrs.each {
        if (TensorUtils.Count(it.definition, 'epsZ_a'.t) != 0)
            println it.abbreviation
    }
}