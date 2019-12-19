import groovy.transform.BaseScript

import static Config.*

@BaseScript
Setup Setup

return

$IncludeZ = false
$DropHeavyQuarks = false
$FeynArtsInput = 'z_feynarts'

initialize()

def states = [PV: [1, 0], PP: [0, 0], VV: [1, 1]]
////def states = [VV: [1, 1]]
//def states = [PP: [0, 0], PV: [0, 1]]
//def states = [PV: [0, 1]]
for (def sp in states.keySet()) {
    $OutputPath = "z_amps_${sp}"
    ensureOutputCreated()
    setBcBcStates(*states[sp])

    doTreeLevel()
    do1Loop()
    doCounterterms()
    doMultiplicationTable()
}