import cc.redberry.core.transformations.abbreviations.AbbreviationsBuilder
import cc.redberry.groovy.Redberry
import groovy.transform.BaseScript

import static Config.$OutputPath

@BaseScript
Setup setup
initialize()

use(Redberry) {
    $OutputPath = "z_amps_VV"

    def abbrs = AbbreviationsBuilder.readFromFile(abbreviationsFile).abbreviationReplacements()

    def epsG = 'eps_a = evbar[k1_a]*I*e*G_a*eu[k2_a]/s'.t
    def epsZ = 'epsZ_a = evbar[k1_a]*((I*CW**(-1)*e*SW*G_{a}*(1+G5)/2+I*CW**(-1)*e*SW**(-1)*(-1/2+SW**2)*G_{a}*(1-G5)/2))*eu[k2_a]/(s - MZ**2 + I*MZ*GammaZ)'.t << 'GammaZ = 0'.t

    abbrs.each {
        println it
    }
}