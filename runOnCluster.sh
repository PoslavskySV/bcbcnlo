#!/bin/bash


#$state = $CMD[[2]];
#$offset = ToExpression[$CMD[[3]]];
#$delta = ToExpression[$CMD[[4]]];
#$step = ToExpression[$CMD[[5]]];
#$pref = $CMD[[6]];

parallel -j3 --line-buffer "math -script DoCrossSectionTable.m {} 0 15 0.02 low" ::: zVV zPV zPP VV PV PP
parallel -j3 --line-buffer "math -script DoCrossSectionTable.m {} 15 200 0.25 mid1" ::: zVV zPV zPP VV PV PP
parallel -j3 --line-buffer "math -script DoCrossSectionTable.m {} 215 100 0.5 mid2" ::: zVV zPV zPP VV PV PP
parallel -j3 --line-buffer "math -script DoCrossSectionTable.m {} 315 700 1 high" ::: zVV zPV zPP VV PV PP