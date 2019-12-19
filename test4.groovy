import cc.redberry.groovy.Redberry
import cc.redberry.groovy.RedberryStatic
import groovy.transform.BaseScript

import static cc.redberry.groovy.RedberryStatic.Reverse

@BaseScript
Setup setup
initialize()

use(Redberry) {
    def expr = 'evbar[k1_a]*((I*CW**(-1)*e*SW*G_{a}*(1+G5)+I*CW**(-1)*e*SW**(-1)*(-1/2+SW**2)*G_{a}*(1-G5)))*eu[k2_a]/(s - MZ**2 + I*MZ*GammaZ)'.t
    println expr
    println Reverse >> expr
}