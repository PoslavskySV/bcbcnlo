(* ::Package:: *)

BeginPackage["FIRE`"];


Off[General::shdw];


ClearIBP::Usage="ClearIBP in FIRE.";
Internal::Usage="Internal in FIRE.";
External::Usage="External in FIRE.";
Propagators::Usage="Propagators in FIRE.";
PrepareIBP::Usage="PrepareIBP in FIRE.";
IBP::Usage="IBP in FIRE.";
startinglist::Usage="startinglist in FIRE.";
Prepare::Usage="Prepare[pn] is like Prepare and LoadStart in FIRE.";
SaveStart::Usage="SaveStart in FIRE.";
LoadStart::Usage="LoadStart in FIRE.";
Burn::Usage="Burn in FIRE.";
F::Usage="F in FIRE.";
G::Usage="G in FIRE.";
d::Usage="d in FIRE, The Dimension.";
PrintEnabled::Usage="Enable Print to Display Messages";


Begin["`Private`"];


PrintEnabled=False;
MessagePrint[msg___]:=If[PrintEnabled,Print[msg]];
ErrorPrint[msg_]:=Print[Style[msg,Red]];
ErrorPrint[msg___]:=Print[msg];


Get[ToFileName["pkg/FIRE", "SBases_3.1.0.m"]];
Get[ToFileName["pkg/FIRE", "FIRE_3.4.5.m"]];
Get[ToFileName["pkg/FIRE", "IBP.m"]];


Prepare[pn_Integer]:=Module[{temp},
    ProblemNumber=pn;
    ExampleDimension[ProblemNumber]=Max @@ Apply[## &,Union[Cases[startinglist, Y[y_], {0, Infinity}],Cases[startinglist, Ym[y_], {0, Infinity}], Cases[startinglist, a[y_], {0, Infinity}]], {1}];
    MessagePrint["Dimension set to ",ExampleDimension[ProblemNumber]];
    dirs = alldirections;
    even=allzerodirections;
    If[Head[RegLine]===Symbol,SBasisRL[ProblemNumber]=0,SBasisRL[ProblemNumber]=RegLine];
    startinglist2 = Map[KillDenominator, startinglist, {1}];
    If[Head[HeavyPoints]===Symbol,HPI[ProblemNumber]={},HPI[ProblemNumber]=HeavyPoints];
    If[Head[RegLineShift]===Symbol,RegLineShift=((4 - d)/2)];
    If[SBasisRL[ProblemNumber]>0,startinglist2=Expand[startinglist2 /. (a[RegLine] -> a[RegLine] + RegLineShift)]];
    If[And[Head[SYMMETRIES]===Symbol,Head[ODDSYMMETRIES]===Symbol,Head[CONDITIONALSYMMETRIES]===Symbol],MessagePrint["No symmetries"]];
    s0={{Range[ExampleDimension[ProblemNumber]],Table[1, {ExampleDimension[ProblemNumber]}],Table[0, {ExampleDimension[ProblemNumber]}]}};
    If[Head[SYMMETRIES]===Symbol,s1={},s1={##, Table[1, {ExampleDimension[ProblemNumber]}],Table[0, {ExampleDimension[ProblemNumber]}]} & /@SYMMETRIES];
    If[Head[ODDSYMMETRIES]===Symbol,s2={},s2={##[[1]],##[[2]],Table[0, {ExampleDimension[ProblemNumber]}]} & /@ODDSYMMETRIES];
    If[Head[CONDITIONALSYMMETRIES]===Symbol,s3={},s3={##[[1]],Table[1, {ExampleDimension[ProblemNumber]}],##[[2]]} & /@CONDITIONALSYMMETRIES];
    SBasisS[ProblemNumber]=Join[s0,s1,s2,s3];

    For[i = 1, i <= Length[dirs], i++, dir = dirs[[i]];
        SBasisR[ProblemNumber,dir]=If[True===True,TestSectorZero[dir],RestrictionsPossible[SPoint[dir]]];
        SBasisE[ProblemNumber,dir] = {};
        For[j=1,j<=Length[even],j++,
            If[And[
                Apply[And,Map[(## === 0) &,Map[(If[## === 0, 1, 0]) &, even[[j]], {1}]*SPoint[dir], {1}], {0}],
                DoubleMore[(SPoint[dir] - Table[0.5,{ExampleDimension[ProblemNumber]}])*(even[[j]] /. 2 -> 0),Table[0, {ExampleDimension[ProblemNumber]}]]
                ],
                SBasisE[ProblemNumber,dir]=Append[SBasisE[ProblemNumber,dir],{Map[(If[## === 0, 1, 0]) &, even[[j]], {1}],EVENRESTRICTIONS[even[[j]]]}];
            ];
        ];
        SBasisL[ProblemNumber,dir] = 0;
    ];
    SBasis0L[ProblemNumber]=Length[startinglist2];
    For[j = 1, j <= Length[startinglist2], j++,
        temp = Pol2List[startinglist2[[j]]];
        SBasis0D[ProblemNumber,j] = temp;
        For[k = 1, k <= Length[SBasis0D[ProblemNumber,j]], k++,
            SBasis0C[ProblemNumber,j, SBasis0D[ProblemNumber,j][[k]]] = tempCoeff[1,SBasis0D[ProblemNumber,j][[k]]];
        ]
    ]
]


End[];


EndPackage[];


On[General::shdw];
