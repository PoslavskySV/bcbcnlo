#!/bin/bash

function copy {
    state=$1
    mkdir "arXiv/z$state" || true
    cp "z_amps_$state/amp_tree_level.m" "arXiv/z$state/Tree.m"
    cp "z_amps_$state/amp_counterterms_div.m" "arXiv/z$state/TreeDiv.m"
    cp "z_amps_$state/amp_counterterms_fin.m" "arXiv/z$state/TreeFin.m"
    cp "z_amps_$state/DivergentPart.m" "arXiv/z$state/1LoopDiv.m"
    cp "z_amps_$state/FinitPart.m" "arXiv/z$state/1LoopFin.m"
    cp "z_amps_$state/TotalAmplitude.m" "arXiv/z$state/1LoopFin.m"
}

copy PP
copy PV
copy VV
