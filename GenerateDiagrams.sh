#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    MScript="/Applications/Mathematica.app/Contents/MacOS/MathematicaScript"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    MScript="MathematicaScript"
fi

"$MScript" -script GenerateDiagrams.m $@