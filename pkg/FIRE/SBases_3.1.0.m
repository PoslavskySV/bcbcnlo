(*
    Copyright (C) Alexander Smirnov.
    The program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License version 2 as
    published by the Free Software Foundation.

    The program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*)

Off[General::spell1];
Off[General::spell];
If[Not[TrueQ[$VersionNumber>=6.0]],
    Needs["DiscreteMath`Combinatorica`"],
    Needs["Combinatorica`"];
];
BuildBasis::"Impossible" = "Evaluation impossible";
BuildBasis::"SpecialDegree" = "An element with exceptional degrees encountered";
BuildBasis::"Infinite" = "Possibly an infinite number of irreducible integrals";

Print["SBases, version 3.1.0"];

TestTime=60;

(*----------------------------------------------------------------------------------------*)
(* first part - putting the initial data into the new format *)
(*----------------------------------------------------------------------------------------*)
ClearTables[]:=Clear[TableD,TableC,TableO,TableIBP];


Running=False;
Unprotect[NonCommutativeMultiply];
x_ ** y_ :=
  Map[(##*(y /.
                (*Table[*)a[here_] :>
                    a[here] + Exponent[##, Y[here]] -
                      Exponent[##, Ym[here]]
(*, {here, 1, ExampleDimension[ProblemNumber]}]*))) &,
      Expand[x], If[Head[Expand[x]] === Plus, {1}, {0}]] /;
    And[Not[MemberQ[y, NonCommutativeMultiply, {0, Depth[y]},
          Heads -> True]],
      Not[MemberQ[x, NonCommutativeMultiply, {0, Depth[x]}, Heads -> True]]]
Protect[NonCommutativeMultiply];

KillDenominator[x_] := Expand[LCM @@ Denominator /@ (List @@ x)*x]


Pol2List[x_]:=Module[{temp,i,el,d,c},
    If[x === 0, Return[{}]];
    temp=Expand[x];
    temp = Map[((## /. Join[Table[Y[here]->1,{here,1,ExampleDimension[ProblemNumber]}],Table[Ym[here]->1,{here,1,ExampleDimension[ProblemNumber]}]])*
    G[(Table[Exponent[##, Y[here]]-Exponent[##, Ym[here]], {here, 1, ExampleDimension[ProblemNumber]}])]) &, temp,{If[Head[temp]===Plus,1,0]}];
    tempelement={};
    Clear[tempCoeff];
    For[i=1,i<=Length[temp],i++,
        el=temp[[i]];
        If[Head[el]===G,
            c=1;d=el[[1]],
            c=el/.G[y__]->1;d=Select[el,(Head[##] === G) &][[1]]
        ];
        If[Head[tempCoeff[1,d]]===tempCoeff,
            tempCoeff[1,d]=c;
            AppendTo[tempelement,d],
            tempCoeff[1,d]+=c;
        ];
    ];
    Return[tempelement];

] (*returns a list of degrees of an initial element, changes tempCoeff*)

DoubleMore[x_, y_] := Module[{result, i}, result = True; i = 1;
    While[i <= ExampleDimension[ProblemNumber], result = And[result, x[[i]] >= y[[i]]]; i++];
    result
]

RestrictionsPossible[x_]:=Module[{jj},
    jj = 1;
    While[jj <= Length[RESTRICTIONS],
      If[DoubleMore[x*RESTRICTIONS[[jj]], Table[0, {iii, 1, ExampleDimension[ProblemNumber]}]],
        Return[True]];
      jj++];
    False
] (*input - a point, output - boolean *)

alldirections := Module[{i, temp, result},
      result = {Table[1, {ExampleDimension[ProblemNumber]}]};
      While[Total[Last[result]] > -ExampleDimension[ProblemNumber],
        temp = Last[result];
        i = ExampleDimension[ProblemNumber];
        While[temp[[i]] == -1, i--];
        While[temp[[i]] == -1, i--];
        temp[[i]] = -1;
        While[i < ExampleDimension[ProblemNumber], temp[[i + 1]] = 1; i++];
        result = Append[result, temp];
        ];
      Sort[
        result, (Or[Total[#1] > Total[#2],
              And[Total[#1] == Total[#2], Head[RULES[#1]] == RULES]]) &]
      ];

allzerodirections :=
      Map[ToExpression[StringDrop[StringDrop[ToString[First[##]], 29], -2]] &,DownValues[EVENRESTRICTIONS], {1}]
(*
SPoint[x_] := Module[{temp},
    temp = Map[(If[## >= 1, 1, 0]) &, x, {1}];
    temp
]   (*input - a point, output - a starting point *)

SSector[x_] := Module[{temp},
    temp = Map[(If[## >= 1, 1, -1]) &, x, {1}];
    temp
]   (*input - a point, output - a direction *)
*)


SSector[x_] := Module[{temp},
    temp = Map[(If[## >= 1, 1, -1]) &, x, {1}];
If[SBasisRL[ProblemNumber]>0,Return[ReplacePart[temp,1,SBasisRL[ProblemNumber]]]];
    temp
]   (*input - a point, output - a direction *)

SPoint[x_] := Module[{temp},
    temp = Map[(If[## >= 1, 1, 0]) &, x, {1}];
(*If[SBasisRL[ProblemNumber]>0,Return[ReplacePart[temp,0,SBasisRL[ProblemNumber]]]];*)
    temp
]   (*input - a point, output - a starting point *)

Prepare[]:=Prepare[AutoDetectRestrictions->False]

Prepare[options___Rule]:=Module[{temp},
    ProblemNumber=0;
    ExampleDimension[ProblemNumber]=Max @@ Apply[## &,Union[Cases[startinglist, Y[y_], {0, Infinity}],Cases[startinglist, Ym[y_], {0, Infinity}], Cases[startinglist, a[y_], {0, Infinity}]], {1}];
    Print["Dimension set to ",ExampleDimension[ProblemNumber]];
    dirs = alldirections;
    even=allzerodirections;
    Clear[SBasisL, SBasis0D, SBasis0C, SBasis0L, SBasisA, SBasisD, SBasisC, SBasisO, SBasisS, SBasisR, SBasisE,SBasisRL,SBasisM];
    If[Head[RegLine]===Symbol,SBasisRL[ProblemNumber]=0,SBasisRL[ProblemNumber]=RegLine];
    startinglist2 = Map[KillDenominator, startinglist, {1}];
    If[Head[HeavyPoints]===Symbol,HPI[ProblemNumber]={},HPI[ProblemNumber]=HeavyPoints];
    If[Head[RegLineShift]===Symbol,RegLineShift=((4 - d)/2)];
    If[SBasisRL[ProblemNumber]>0,startinglist2=Expand[startinglist2 /. (a[RegLine] -> a[RegLine] + RegLineShift)]];
    If[And[Head[SYMMETRIES]===Symbol,Head[ODDSYMMETRIES]===Symbol,Head[CONDITIONALSYMMETRIES]===Symbol],Print["No symmetries"]];
    s0={{Range[ExampleDimension[ProblemNumber]],Table[1, {ExampleDimension[ProblemNumber]}],Table[0, {ExampleDimension[ProblemNumber]}]}};
    If[Head[SYMMETRIES]===Symbol,s1={},s1={##, Table[1, {ExampleDimension[ProblemNumber]}],Table[0, {ExampleDimension[ProblemNumber]}]} & /@SYMMETRIES];
    If[Head[ODDSYMMETRIES]===Symbol,s2={},s2={##[[1]],##[[2]],Table[0, {ExampleDimension[ProblemNumber]}]} & /@ODDSYMMETRIES];
    If[Head[CONDITIONALSYMMETRIES]===Symbol,s3={},s3={##[[1]],Table[1, {ExampleDimension[ProblemNumber]}],##[[2]]} & /@CONDITIONALSYMMETRIES];
    SBasisS[ProblemNumber]=Join[s0,s1,s2,s3];

    For[i = 1, i <= Length[dirs], i++, dir = dirs[[i]];
        SBasisR[ProblemNumber,dir]=If[(AutoDetectRestrictions/.options)===True,TestSectorZero[dir],RestrictionsPossible[SPoint[dir]]];
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


SaveStart:=Module[{temp},
    If[Length[{##}]>0,FILES={##}[[1]]];
    If[ValueQ[FILES]==False,
        Print["File not defined"];
    ,
        If[Not[Head[ExampleDimension[ProblemNumber]]===ExampleDimension],
            Print["Saving initial data"];
            Put[Null, FILES <> ".start"];
            Save[FILES <> ".start", {ExampleDimension,ProblemNumber,SBasisL, SBasis0L,SBasis0D, SBasis0C, SBasisO, SBasisS, SBasisR, SBasisE,SBasisRL,HPI}];
        ,
            Print["Initial data not ready"]
        ];
    ];
]&;

CopyRules[number_]:=Module[{temp,i},
    temp=DefinedFor[RULES];
    temp=Select[temp,(Head[##[[1]]]===List)&];
    For[i=1,i<=Length[temp],i++,
        yyy=RULES@@Prepend[temp[[i]],number];
        Evaluate[yyy]:=Evaluate[(RULES@@temp[[i]])/.G[x_]:>G[number,x]];
        RULES[Sequence@@temp[[i]]]=.
    ]
]

LoadStart:=Module[{temp},
    ProblemNumber=0;
    If[Length[{##}]>0,FILES={##}[[1]]];
    If[ValueQ[FILES]==False,
        Print["File not defined"]
    ,
        Get[FILES <> ".start"];
    If[And[Not[Head[SBasis0L[0]]===SBasis0L],Not[NumberQ[Head[SBasis0L[0]]]]],

        If[Length[SBasisS[0][[1]]]===2,SBasisS[0]={##[[1]],##[[2]],Table[0,{Length[##[[1]]]}]}&/@SBasisS[0]];
    If[Head[HPI[0]]===HPI,HPI[0]={}];
    Print["Initial data loaded"],Print["Failed"];Clear[SBasis0L,SBasis0D,SBasis0C];Return[]];
            Off[Get::"noopen"];
            Get[FILES <> ".rules"];
            On[Get::"noopen"];
            If[Head[SBasisRL[ProblemNumber]]===Symbol,SBasisRL[ProblemNumber]=0];
            CopyRules[ProblemNumber];
    ];
]&;

SaveSBases:=Module[{temp},
    If[Length[{##}]>0,FILES={##}[[1]]];
    If[ValueQ[FILES]==False,
        Print["Define the FILES variable first"];
    ,
        If[Not[Head[ExampleDimension[ProblemNumber]]===ExampleDimension],
            Print["Saving the bases"];
            Put[Null, FILES <> ".sbases"];
            Save[FILES <> ".sbases", {ProblemNumber,ExampleDimension,SBasis0L,SBasis0C,SBasis0D,SBasisL, SBasisD, SBasisA, SBasisH, SBasisO, SBasisC, SBasisS, SBasisR, SBasisE,SBasisRL,SBasisM,HPI}]
        ,
            Print["Bases not ready"]
        ]
    ];
]&;


(*----------------------------------------------------------------------------------------*)
(* a few rewritten functions*)
(*----------------------------------------------------------------------------------------*)

MyLength[x_] := If[Head[x] === Plus, Length[x], 1]

notzero[x_] := Not[(x === 0)]

MyProportional[x_, y_] := Module[{i},
    i = First[First[Position[y, First[Select[y, notzero]]]]];
Expand[x - (x[[i]]/y[[i]])*y] === Table[0, {ExampleDimension[ProblemNumber]}]
]

SubsetQ[x_, y_] := (Complement[x, y] === {})

MyPolynomialQuotient[zzz_, yyy_] :=
  Module[{result, xxx, degsx, degsy, varsy, coeff, temp, i},
    If[NumberQ[yyy], Return[Expand[zzz/yyy]]];
    xxx = zzz;
    coeff = Expand[yyy];
    result = 0;
    degsy = {}; varsy = {};
    While[True,
      temp = Variables[coeff];
      If[temp === {}, Break[]];
      varsy = Append[varsy, First[temp]];
      degsy = Append[degsy, Exponent[coeff, Last[varsy]]];
      coeff = Coefficient[coeff, Last[varsy], Last[degsy]];
      ];
    degsx = Table[0, {Length[varsy]}];
    While[True,
      If[xxx === 0, Break[]];
      temp = xxx;
      i = 1;
      While[i <= Length[varsy],
        degsx[[i]] = Exponent[temp, varsy[[i]]];
        temp = Coefficient[temp, varsy[[i]], degsx[[i]]];
        i++
        ];
      If[Not[
          Apply[And,
            Table[degsx[[i]] - degsy[[i]] >= 0, {i, 1, Length[varsy]}], {0}]],
         Break[]];
      temp = (temp/coeff)*Apply[Times, varsy^(degsx - degsy), {0}];
      result = result + temp;
      xxx = Expand[xxx - temp*yyy];
      ];
    Expand[result]
]
(* a working analogue of PolynomialQuotient; zzz is supposed to be divisible by yyy *)


OnlyMinimals[x_] := Module[{result, i, j, temp},
    result = {};
    i = 1;
    While[i <= Length[x],
      temp = True;
      j = 1;
      While[j <= Length[x],
        If[And[Not[i === j], DoubleMore[x[[i]], x[[j]]]],
          temp = False];
        j++
        ];
      If[temp, result = Append[result, x[[i]]]];
      i++
      ];
    result
    ]

Proportional[x_, y_] := Module[{i},
    i = First[First[Position[y, First[Select[y, notzero]]]]];
Expand[x - (x[[i]]/y[[i]])*y] === NTable
]
ProportionalCoeff[x_, y_] := Module[{i},
    i = First[First[Position[y, First[Select[y, notzero]]]]];
(x[[i]]/y[[i]])
]


MultiMax[x_, y_] := Max/@Transpose[{x,y}]

(*----------------------------------------------------------------------------------------*)
(* starting the real bases construction from here*)
(*----------------------------------------------------------------------------------------*)

EvaluationLimitDefault := 200000;


(* the bases elements are stored in their best forms, all operations done with temp coefficients *)
(* Sector: a global variable storing the direction being evaluated *)

HigherDPoint[x_,y_]:=Module[{temp,i,xd,yd},
    If[x==y,Return[True]];
    ordering=If[Head[SBasisO[ProblemNumber,Sector]]===SBasisO,ReverseHomogeneousDegreeOrdering,SBasisO[ProblemNumber,Sector]];
    xd=Sector*(x-SPoint[Sector]);
    yd=Sector*(y-SPoint[Sector]);
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,
        temp=Total[(xd-yd)*ordering[[i]]];
        If[temp<0,Return[False]];
        If[temp>0,Return[True]];
    ];
    Print["HigherDPoint error"];
]

LowerDPoint[x_,y_]:=HigherDPoint[y,x]

LowestDPoint[x_]:=Sort[x,LowerDPoint][[1]]


DResort[x_]:=Sort[x,HigherDPoint]

ReverseHomogeneousDegreeOrdering:=Table[If[ii<=jj,1,0],{ii,1,ExampleDimension[ProblemNumber]},{jj,1,ExampleDimension[ProblemNumber]}]

Delta[j_]:=Table[If[j===here,1,0],{here,1,ExampleDimension[ProblemNumber]}]

NTable:=Table[0,{ExampleDimension[ProblemNumber]}]

Deg[i_]:=Sector*(SBasisD[ProblemNumber,Sector,i][[1]]-SPoint[Sector])

FullLength[x_]:=Plus@@(MyLength[tempCoeff[1,##]]&/@x)
(* uses tempCoeff[1], length in the old style *)

FullBLength[n_]:=Plus@@(MyLength[SBasisC[ProblemNumber,Sector,n,##]]&/@SBasisD[ProblemNumber,Sector,n])
ShorterB[x_,y_]:=(FullBLength[x]<=FullBLength[y])

MakeZeros[x_,y_]:=Module[{i,temp},
    temp=x;
    For[i=1,i<=Length[y],i++,
        temp[[y[[i]]]]=0
    ];
    temp
]

YmProduct[x_]:=Module[{i,temp},
    temp=((MSector/.{-1->1})*x)-x;
    Times@@Table[Ym[i]^temp[[i]],{i,1,ExampleDimension[ProblemNumber]}]
]

Start2Temp[n_]:=Module[{i,j,temp},
    Clear[tempCoeff];
    tempelement=SBasis0D[ProblemNumber,n];
    For[i=1,i<=Length[tempelement],i++,
        tempelement[[i]]=MakeZeros[tempelement[[i]],Flatten[Position[MSector,0]]]
    ];
    tempelement=Union[tempelement];
    For[i=1,i<=Length[SBasis0D[ProblemNumber,n]],i++,
        temp=MakeZeros[SBasis0D[ProblemNumber,n][[i]],Flatten[Position[MSector,0]]];
        If[Head[tempCoeff[1,temp]]===tempCoeff,
            tempCoeff[1,temp]=Expand[YmProduct[SBasis0D[ProblemNumber,n][[i]]]*SBasis0C[ProblemNumber,n,SBasis0D[ProblemNumber,n][[i]]]],
            tempCoeff[1,temp]=Expand[tempCoeff[1,temp]+YmProduct[SBasis0D[ProblemNumber,n][[i]]]*SBasis0C[ProblemNumber,n,SBasis0D[ProblemNumber,n][[i]]]]
        ]
    ];
    Return[DResort[tempelement]];
]  (*copies an initial element*)


Temp2Basis[n_,x_,shifts_,type_]:=Module[{temp,i},
If[Head[SBasisD[ProblemNumber,Sector,n]]===List,
  For[i=1,i<=Length[SBasisD[ProblemNumber,Sector,n]],i++,SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[i]]]=.]; (*clearing old*)
];
    SBasisD[ProblemNumber,Sector,n]=x;
    SBasisA[ProblemNumber,Sector,n]=shifts;
    For[i=1,i<=Length[x],i++,SBasisC[ProblemNumber,Sector,n,x[[i]]]=tempCoeff[type,x[[i]]]];
] (*sends iiith temp element to the basis*)

Basis2Temp[n_,pos_]:=Module[{temp},
    (*Clear[tempCoeff]; *)
    temp=SBasisD[ProblemNumber,Sector,n];
    For[i=1,i<=Length[temp],i++,tempCoeff[pos,temp[[i]]]=SBasisC[ProblemNumber,Sector,n,temp[[i]]]];
    Return[temp]
]

ClearBest[n_,type_]:=Module[{i},
    For[i=1,i<=Length[SBasisBD[type,n]],i++,SBasisBC[type,n,SBasisBD[type,n][[i]]]=.];
    SBasisBD[type,n]=.;
    SBasisBA[type,n]=.;
]

Temp2Best[n_,type_,x_,pos_,shifts_]:=Module[{temp,i},
    SBasisBD[type,n]=x;
    SBasisBA[type,n]=shifts;
    For[i=1,i<=Length[x],i++,SBasisBC[type,n,x[[i]]]=tempCoeff[pos,x[[i]]]];
]

Temp21[x_,y_]:=Module[{temp},
    For[i=1,i<=Length[x],i++,tempCoeff[1,x[[i]]]=.];
    For[i=1,i<=Length[y],i++,tempCoeff[1,y[[i]]]=tempCoeff[2,y[[i]]];tempCoeff[2,y[[i]]]=.];
]

Temp13[y_]:=Module[{temp,i},
    For[i=1,i<=Length[y],i++,tempCoeff[3,y[[i]]]=tempCoeff[1,y[[i]]];];
]


CommonCoefficient[x_] := TimeConstrained[PolynomialGCD @@ (tempCoeff[1,##]&/@ x),5,Print["Polynomial GCD timeout"];1]

DeFactor[x_] := Module[{c,i},
    c = Expand[CommonCoefficient[x]];
    If[c==0,Print["DeFactor error"]];
    For[i=1,i<=Length[x],i++,tempCoeff[1,x[[i]]]=MyPolynomialQuotient[tempCoeff[1,x[[i]]],c]];
    x
] (*changes tempCoeff*)



AVRules[x_]:=Table[a[here]->x[[here]],{here,1,ExampleDimension[ProblemNumber]}]
(* a substitution for a fixed point *)

ASRules[x_]:=Table[a[here]->a[here]+x[[here]],{here,1,ExampleDimension[ProblemNumber]}]
(*a shift*)

Mult[y_,x_,pos_] := Module[{temp,tempp},
    temp=x;
    For[i=1,i<=Length[x],i++,tempp[x[[i]]]=tempCoeff[pos,x[[i]]];tempCoeff[pos,x[[i]]]=.];
    For[i=1,i<=Length[x],i++,
        tempCoeff[pos,x[[i]]+y]=Expand[tempp[x[[i]]]/.ASRules[y]];
        temp[[i]]=temp[[i]]+y;
    ];
    temp
] (* input: a shift and an list of points, output: a list of points, tempCoeff is changed *)
(* real shift values *)

TestListAdd[x_,y_,z_] := Module[{i},
    Print[{x,y}];
    TestList = Append[TestList, {x,y,z}];
    If[z>Length[BestLength[2]],AppendTo[BestLength[2],Infinity],BestLength[2]=ReplacePart[BestLength[2],Infinity,z]];
]

TestListRemove[z_] := Module[{pos},
    pos=Position[TestList, {xx_, yy_, z}];
    TestList=Delete[TestList,pos];
]

STOP := Module[{temp}, TimeToStop = 1]


NegShift[x_, i_,I_] := Module[{temp, temp2, j, sss},
    value=Max@@((##[[i]])&/@x)+1;
    temp={};
    While[And@@((Expand[tempCoeff[I,##]/. a[i]->-value+1]===0)&/@temp),
        value--;
        temp=Select[x,(##[[i]]>=value)&];
    ];
    -value
]

SDegrees[x_,I_] := Module[{temp, temp2,points,i, j, SSS, l,dir,jj},
    For[i = 1, i <= Length[HPI[ProblemNumber]], i++,
        If[Apply[Max,Transpose[x],{1}][[HPI[ProblemNumber][[i]]]]<0,Return[{{},{}}]];
    ];
    z = x[[1]];
    y = tempCoeff[I,x[[1]]];
    If[Length[x]==1,Return[{-x[[1]]}]];
    (*points = Table[If[Sector[[l]]===1, -z[[l]]+1, Min[-z[[l]], NegShift[x, l,I]]], {l, 1, ExampleDimension[ProblemNumber]}];
    If[SBasisRL[ProblemNumber]>0,points[[SBasisRL[ProblemNumber]]]=1-Min@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x, ReplacePart[z,y_,SBasisRL[ProblemNumber]]])];
    minpoint=points;*)
    points = Table[If[Sector[[l]]===1, -z[[l]]+1, -z[[l]]], {l, 1, ExampleDimension[ProblemNumber]}];
    If[SBasisRL[ProblemNumber]>0,points[[SBasisRL[ProblemNumber]]]=1-Min@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x, ReplacePart[z,y_,SBasisRL[ProblemNumber]]])];
    points={points};
    i = 0;
    While[i < Length[points],
        i++;
        temp = y;
        If[Not[Expand[temp /. AVRules[points[[i]]]] === 0],
                Continue[] (*the coefficient does not vanish at this point*)
        ];
        temp2 = {};
        jj=1;
        While[temp2==={},
            dir=(##*Sector)&/@Compositions[jj,ExampleDimension[ProblemNumber]];
            j = 1;
            While[j <= Length[dir],
                If[Not[Expand[temp /.AVRules[points[[i]] + SSS*dir[[j]]]] === 0],
                    (* the coefficient does not vanish at this line*)
                    temp2 = Append[temp2,points[[i]] + dir[[j]]]];
                j++;
            ];
            jj++
        ];
        points[[i]] = temp2;
        points = FlattenAt[points, i];
        points=OnlyMinimals[points];
        i=0;
    ]; (* searching for minimal possible shifts of the element *)



    multimax = Sector*(Max /@ Transpose[(Sector*##) & /@ points]);
    multimin = Sector*(Min /@ Transpose[(Sector*##) & /@ points]);

    If[Total[Sector*(multimax-multimin)]===Length[points],
        directions=KSubsets[(##-multimin)&/@points,2];
        For[i=1,i<=Length[directions],i++,
            If[Expand[temp /. AVRules[multimin+Plus@@directions[[i]]]] === 0,
                If[And[Complement[Complement[Range[ExampleDimension[ProblemNumber]], Flatten[Position[Plus@@directions[[i]], 0]]],
                        Flatten[Position[BestLength[1], Infinity]]] === {},
                    z+multimin==SPoint[Sector],Not[MemberQ[(Drop[##,-1])&/@TestList,{SPoint[Sector],Plus@@directions[[i]]}]]
                    ],
                    Print["ADDING A TEST DIRECTION"];
                    TestListAdd[SPoint[Sector],Plus@@directions[[i]],Length[BestLength[2]]+1];
                ]
            ]; (*a basis element whose degree is 0, but Coeff at degree+difference vanishes *)
        ];
    ];

   (* points=(Sector*(Max /@ Transpose[{Sector*##,Sector*minpoint}]))&/@points;
    points=OnlyMinimals[points];*)


(*now for returning*)
    points = Table[If[Sector[[l]]===1, -z[[l]]+1, Min[-z[[l]], NegShift[x, l,I]]], {l, 1, ExampleDimension[ProblemNumber]}];
    If[SBasisRL[ProblemNumber]>0,points[[SBasisRL[ProblemNumber]]]=1-Min@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x, ReplacePart[z,y_,SBasisRL[ProblemNumber]]])];

    points={points};
    i = 0;
    While[i < Length[points],
        i++;
        temp = y;
        If[Not[Expand[temp /. AVRules[points[[i]]]] === 0],
                Continue[] (*the coefficient does not vanish at this point*)
        ];
        temp2 = {};
        jj=1;
        While[temp2==={},
            dir=(##*Sector)&/@Compositions[jj,ExampleDimension[ProblemNumber]];
            j = 1;
            While[j <= Length[dir],
                If[Not[Expand[temp /.AVRules[points[[i]] + SSS*dir[[j]]]] === 0],
                    (* the coefficient does not vanish at this line*)
                    temp2 = Append[temp2,points[[i]] + dir[[j]]]];
                j++;
            ];
            jj++
        ];
        points[[i]] = temp2;
        points = FlattenAt[points, i];
        points=OnlyMinimals[points];
        i=0;
    ]; (* searching for minimal possible shifts of the element *)



    multimax = Sector*(Max /@ Transpose[(Sector*##) & /@ points]);
    multimin = Sector*(Min /@ Transpose[(Sector*##) & /@ points]);
    If[Length[points]==1,Return[{points[[1]],points}]]; (* a single degree *)
    If[Total[Sector*(multimax-multimin)]===Length[points],
        HasZeros=False;
        directions=KSubsets[(##-multimin)&/@points,2];
        baddirections={};
        For[i=1,i<=Length[directions],i++,
            If[Expand[temp /. AVRules[multimin+Plus@@directions[[i]]]] === 0,
                HasZeros=True;
                AppendTo[baddirections,Plus@@directions[[i]]];
            ]
        ];
        Return[If[HasZeros,{multimin+Sector*(Max /@ Transpose[(Sector*##) & /@ baddirections]),points},{multimin,points}]]
    ,
        MultipleElement=True;
        Print["A multiple degree element"];
        Return[{multimax,points}];
    ];
    Print["SDegrees error"];
]
(* real shift values *)


LocalOddRestrictionsPossible[x_]:=Module[{temp,i,Sector},
Sector=SSector[x/.TTT->Infinity];
    For[i=1,i<=Length[SBasisE[ProblemNumber,Sector]],i++,
        If[And[
            x*(SBasisE[ProblemNumber,Sector][[i]][[1]])==Table[0,{ExampleDimension[ProblemNumber]}],
            Mod[Total[(Coefficient[x,TTT,0]*(SBasisE[ProblemNumber,Sector][[i]][[2]]))],2]==1(*,
            Mod[Total[(Coefficient[x,TTT,1]*(SBasisE[ProblemNumber,Sector][[i]][[2]]))],2]==1*)
            ],
            Return[True];
        ];
    ];
    Return[False];
] (*input - a point, output - boolean *)

TestElementShift[i_,shift_,y_]:=Module[{k},

    FirstFound=False;
    rules=AVRules[y-shift];
    For[k=1,k<=Length[SBasisD[ProblemNumber,Sector,i]],k++,
        dd1=SBasisD[ProblemNumber,Sector,i][[k]];
        dd=dd1+y-shift;
       (* If[shift==={0,0,1,1,0,0,0,0,0,0,1,0},Print[dd]];*)
(*        If[(*And[InSector[dd/.TTT->Infinity],*)
LocalOddRestrictionsPossible[dd],Continue[]];*)
(*could be uncommented if we added the control for Regions - 
not taking zeros but something positive*)

        cc=Expand[SBasisC[ProblemNumber,Sector,i,dd1] /. rules];
        If[Not[cc===0],
        
            If[Not[InSectorOrLower[dd,Sector]],(*If[FirstFound,Print["oo ",dd]];*)Return[False]];
While[And[Not[Expand[cc/.(TTT->LineShift)]===0],Not[InSectorOrLower[dd/.(TTT->LineShift),Sector]]],LineShift+=SmallShift];
            
            If[Not[InSector[dd]],Continue[]];
           (* If[shift==={0,0,1,1,0,0,0,0,0,0,1,0},Print["!!!",dd]];*)
            If[Not[FirstFound],
                If[dd===y,FirstFound=True;While[Expand[cc/.(TTT->LineShift)]===0,LineShift+=SmallShift];(*Print[LineShift];Return[True]*),Return[False]],
            If[And[SBasisRL[ProblemNumber]>0,Not[ReplacePart[dd,0,SBasisRL[ProblemNumber]]==NTable],Delete[dd,SBasisRL[ProblemNumber]]==Delete[y,SBasisRL[ProblemNumber]]],Return[False]]
            ]
        ];
    ];
    FirstFound
]

TestElement[i_]:= Module[{j,y,n,k,dd},
    Label[restart];
    z=SBasisD[ProblemNumber,Sector,1][[1]];
    x=Basis2Temp[i,4];
(*  point = Table[If[Sector[[l]]===1, -z[[l]]+1, Min[-z[[l]], NegShift[x, l,4]]], {l, 1, ExampleDimension[ProblemNumber]}];*)
    Print["Testing element ",i];
    For[n=1,n<=Length[TestList],n++,
        If[BestLength[2][[TestList[[n]][[3]]]]==Infinity,
            If[LocalOddRestrictionsPossible[TestList[[n]][[1]]+TestList[[n]][[2]]],SmallShift=2,SmallShift=1];
            y=TestList[[n]][[1]]+SmallShift*TTT*TestList[[n]][[2]];
            For[j=1,j<=Length[SBasisD[ProblemNumber,Sector,i]],j++,
                dd=TestList[[n]][[1]]-SBasisD[ProblemNumber,Sector,i][[j]];
                (*If[And[SBasisRL[ProblemNumber]>0,Not[TestList[[n]][[2]]===Delta[SBasisRL[ProblemNumber]]],dd[[SBasisRL[ProblemNumber]]]<0],Continue[]];*)
                neg=(If[##>0,0,-1])&/@Sector;
(*              If[Not[And @@ ((## >= 0) & /@ (neg*(dd+10TestList[[n]][[2]]-point)))],Continue[]];*)
                LineShift=0;
(*              While[Not[And @@ ((## >= 0) & /@ (neg*(dd+Lineshift*TestList[[n]][[2]]-point)))],LineShift++];*)
                If[TestElementShift[i,SBasisD[ProblemNumber,Sector,i][[j]],y],
                    x=Prepend[Delete[x,j],SBasisD[ProblemNumber,Sector,i][[j]]];
                    x=Mult[LineShift*TestList[[n]][[2]]+TestList[[n]][[1]]-SBasisD[ProblemNumber,Sector,i][[j]],x,4];
                    ppp={##}&/@Complement[Range[ExampleDimension[ProblemNumber]],Flatten[Position[TestList[[n]][[2]], 0]]];
                    If[SBasisRL[ProblemNumber]>0,AppendTo[ppp,{SBasisRL[ProblemNumber]}]];
                    rules=Delete[AVRules[NTable],ppp];
                    For[iii=1,iii<=Length[x],iii++,
                        tempCoeff[4,x[[iii]]]=Expand[tempCoeff[4,x[[iii]]]/.rules];
                        If[tempCoeff[4,x[[iii]]]===0,
                        tempCoeff[4,x[[iii]]]=.;
                        x=Delete[x,iii];
                        iii--
                    ]
                    ];
                    SaveElement[TestList[[n]][[3]],2,x,4,{},LineShift];
                    Goto[restart];
                ];
            ];
        ]
    ];
]

SaveElement[j_,type_,x_,pos_,shifts_,reductionshift_]:=Module[{temp},
    SBasisBH[j]=reductionshift;
    SaveElement[j,type,x,pos,shifts];
]

LeftDirections:=Complement[Join[
            Intersection[
                Flatten[Position[BestLength[1], Infinity]],
                Join[Flatten[Position[Take[BestLength[2], ExampleDimension[ProblemNumber]], Infinity]],
                Flatten[Position[Take[BestLength[2], ExampleDimension[ProblemNumber]], 0]]]
            ],
            ExampleDimension[ProblemNumber]+Flatten[Position[Drop[BestLength[2], ExampleDimension[ProblemNumber]], Infinity]]
        ],Join[Flatten[Position[MSector,0]],HPI[ProblemNumber]]]

LeftVectors:=Union[(Sector*Delta[##])&/@
            Complement[Intersection[
                Flatten[Position[BestLength[1], Infinity]],
                Join[Flatten[Position[Take[BestLength[2], ExampleDimension[ProblemNumber]], Infinity]],
                Flatten[Position[Take[BestLength[2], ExampleDimension[ProblemNumber]], 0]]]
            ],
            Join[Flatten[Position[MSector,0]]],HPI[ProblemNumber]],
            ##[[2]]&/@NewTestList[Sector]
        ]

MinimalInSectorOrbit[x_]:=Module[{temp,min,i},
    temp=Orbit[x+SPoint[Sector]];
    For[i=1,i<=Length[temp],i++,
        If[Not[SSector[temp[[i]]]==SSector[x+SPoint[Sector]]],
            temp=Delete[temp,i];
            i--
        ]
    ];
    LowestDPoint[temp]-SPoint[Sector]
]

ConstantShifts[x_]:=Module[{temp,i,j},
    temp={NTable};
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,
        If[x[[i]]>1,
            temp=Flatten[(Table[##+j*Delta[i],{j,0,x[[i]]-1}])&/@temp,1];
        ]
    ];
    temp
] (*input - the "found" *)






NewTestList[Sector_]:=Module[{i,j,aaa},
    Clear[BasisD,BasisA,BasisC];
    LLL=0;
    If[Running,
        For[i=1,i<=Max[ExampleDimension[ProblemNumber],Length[BestLength[2]]],i++,
            type=0;
            If[And[i<=ExampleDimension[ProblemNumber],BestLength[1][[i]]<Infinity],type=1,
                If[And[BestLength[2][[i]]<Infinity,BestLength[2][[i]]>0],type=2]
            ];
            If[type>0,LLL++;
                BasisD[LLL]=SBasisBD[type,i][[1]];
                BasisC[LLL]=SBasisBC[type,i,SBasisBD[type,i][[1]]];
                BasisA[LLL]=SBasisBA[type,i];
            ]
        ]
        ,
        For[i=1,i<=Max[SBasisL[ProblemNumber,Sector]],i++,
            LLL++;
            BasisD[LLL]=SBasisD[ProblemNumber,Sector,i][[1]];
            BasisC[LLL]=SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[1]]];
            BasisA[LLL]=SBasisA[ProblemNumber,Sector,i];
        ]
    ];
    temp={};
    For[i=1,i<=LLL,i++,
        If[And[BasisA[i]==={NTable},Length[DeleteCases[BasisD[i]-SPoint[Sector],0]]<=1],AppendTo[temp,BasisD[i]]]
    ];
    temp=(Sector*(##-SPoint[Sector]))&/@temp;
    (*If[And[SBasisRL[ProblemNumber]>0,MemberQ[temp,NTable]],Return[{{SPoint[Sector],Delta[SBasisRL[ProblemNumber]]}}]];*)
    If[MemberQ[temp,NTable],Return[{}]];
    aaa=Join[Flatten[Position[MSector,0]],HPI[ProblemNumber]];
    For[i=1,i<=Length[aaa],i++,
        AppendTo[temp,Delta[aaa[[i]]]]
    ];
    Label[restart];
    For[i=1,i<=LLL,i++,
        If[Length[BasisA[i]]>1,
            ttt=(Sector*(##+BasisD[i]-SPoint[Sector]))&/@BasisA[i];
            For[j=1,j<=Length[ttt],j++,
                If[(If[##>0,0,1]&/@(Plus@@temp))*ttt[[j]]===NTable,
                    ttt=Delete[ttt,j];j--
                ]
            ];
            If[Length[ttt]==1,
                AppendTo[temp,ttt[[1]]];
                Goto[restart]
            ];
            If[And[Length[ttt]==2,Not[Expand[BasisC[i]/.
                    AVRules[SPoint[Sector]-BasisD[i]+Sector*(ttt[[1]]+ttt[[2]])]]===0]],
                AppendTo[temp,ttt[[1]]];
                AppendTo[temp,ttt[[2]]];
                Goto[restart]
            ]
        ]
    ];
    directions=Delta/@Flatten[Position[NTable+Plus@@temp,0]];
    Label[restart2];
    For[i=1,i<=LLL,i++,
        If[Length[BasisA[i]]>1,
            ttt=(Sector*(##+BasisD[i]-SPoint[Sector]))&/@BasisA[i];
            If[Not[Min/@Transpose[ttt]===NTable],Continue[]];
            For[j=1,j<=Length[ttt],j++,
                If[(If[##>0,0,1]&/@(Plus@@temp))*ttt[[j]]===NTable,
                    ttt=Delete[ttt,j];j--
                ]
            ];
            If[Length[ttt]==2,
                Step=False;
                For[j=1,j<=Length[directions],j++,
                    If[And[DoubleMore[directions[[j]],ttt[[1]]],DoubleMore[directions[[j]],ttt[[2]]]],Continue[]];
                    If[DoubleMore[directions[[j]],ttt[[1]]],
                        directions=ReplacePart[directions,directions[[j]]+ttt[[2]],j];
                        Step=True;
                    ];
                    If[And[DoubleMore[directions[[j]],ttt[[1]]],DoubleMore[directions[[j]],ttt[[2]]]],Continue[]];
                    If[DoubleMore[directions[[j]],ttt[[2]]],
                        directions=ReplacePart[directions,directions[[j]]+ttt[[1]],j];
                        Step=True;
                    ];
                ];
                If[Step,
                    directions=Union[directions];
                    Goto[restart2];
                ];
            ]
        ]
    ];
    found=NTable;
    alldegrees =Union[Flatten[Table[(Sector*(## + BasisD[i]-SPoint[Sector])) & /@ BasisA[i], {i,LLL}], 1]];
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,
        For[jj=1,jj<=Length[alldegrees],jj++,
            If[And[Not[alldegrees[[jj]]===SPoint[Sector]],
                    Proportional[alldegrees[[jj]],Delta[i]],
                    Or[found[[i]]==0,found[[i]]>ProportionalCoeff[alldegrees[[jj]],Delta[i]]]],
                found[[i]]=ProportionalCoeff[alldegrees[[jj]],Delta[i]]
            ];
        ];
    ];
    result=({SPoint[Sector],Sector*##})&/@directions;
    shifts=ConstantShifts[found];
    result=Flatten[(Table[{##[[1]]+Sector*shifts[[i]],##[[2]]},{i,Length[shifts]}])&/@result,1];

(*
    If[Length[Position[found,2]]>0,
        yy=First[First[Position[found,2]]];
        result=Union[({SPoint[Sector],Sector*##})&/@directions,({SPoint[Sector]+Sector*Delta[yy],Sector*##})&/@directions],
        result=({SPoint[Sector],Sector*##})&/@directions
    ];*)
Return[result];
    (*If[SBasisRL[ProblemNumber]>0,Append[result,{SPoint[Sector],Delta[SBasisRL[ProblemNumber]]}],result]*)
]


SymmetriesTest[]:=Module[{vectors,i},
    vectors=LeftVectors;
    For[i=1,i<=Length[vectors],i++,If[MatrixRank[Append[vectors,MinimalInSectorOrbit[vectors[[i]]]]]==Length[vectors],Return[False]]];
    True
]

SaveElement[j_,type_,x_,pos_,shifts_]:=Module[{saving,newlength,i,alldegrees,found,yy},
    saving=False;
    newlength=FullLength[x];
    If[type==1,
        For[i=1,i<=Length[TestList],i++,
            If[TestList[[i]][[2]]==Sector*Delta[j],
                If[BestLength[2][[TestList[[i]][[3]]]]<Infinity,
                    Print["REMOVING SAVED ELEMENT ",TestList[[i]][[3]]," that was of the second type"];
                    ClearBest[TestList[[i]][[3]],2]
                ];
                BestLength[2]=ReplacePart[BestLength[2],0,TestList[[i]][[3]]];
                If[And[TestList[[i]][[3]]==Length[BestLength[2]],TestList[[i]][[3]]>ExampleDimension[ProblemNumber]],
                    BestLength[2]=Delete[BestLength[2],TestList[[i]][[3]]]
                ];
                If[TestList[[i]][[3]]>ExampleDimension[ProblemNumber],Print["TEST DIRECTION ",TestList[[i]][[3]]," NO LONGER NEEDED"]];
                TestList=Delete[TestList,i];
                i--
            ]
        ]
    ];
    If[And[newlength<BestLength[type][[j]],Or[BestLength[type][[j]]==Infinity,shifts===NTable]],
        If[BestLength[type][[j]]==Infinity,
            Print["SAVING REDUCTION ELEMENT ",j," of length ",newlength," (type ",type,")"],
            Print["REPLACING SAVED REDUCTION ELEMENT ",j," of length ",newlength," (type ",type,")"];
            ClearBest[j,type];
        ];
        BestLength[type]=ReplacePart[BestLength[type],newlength,j];
        Temp2Best[j,type,x,pos,shifts];
    Print["TEST DIRECTIONS LEFT: ",LeftDirections];
    ];
    (*If[Or[Position[BestLength[1],Infinity]=={},And[FullTests,Position[BestLength[2],Infinity]=={}]],Throw[0]];*)
    If[LeftDirections=={},Throw[0]];
    If[SubsetQ[LeftDirections,AllowedDirections],Throw[4]];
    If[SymmetriesTest[],Throw[0]];
]



TurnFullOn:=Module[{temp,i,j,k},
        Print["FULL TESTS TURNED ON"];
        FullTests=True;
(*TestList = {};*)
(*BestLength[2]=Table[0,{ExampleDimension[ProblemNumber]}];*)
For[i=1,i<=ExampleDimension[ProblemNumber],i++,BestLength[2]=ReplacePart[BestLength[2],0,i]];
temp=NewTestList[Sector];
For[i=1,i<=Length[temp],i++,
    If[And[temp[[i]][[1]]===SPoint[Sector],Length[Cases[temp[[i]][[2]],0]]===ExampleDimension[ProblemNumber]-1],
        pos=Complement[Range[ExampleDimension[ProblemNumber]],Flatten[Position[temp[[i]][[2]], 0]]][[1]];
        Print["MAKING A TEST DIRECTION"];
        TestListAdd[temp[[i]][[1]],temp[[i]][[2]],pos],
        Print["ADDING A TEST DIRECTION"];
        TestListAdd[temp[[i]][[1]],temp[[i]][[2]],Length[BestLength[2]]+1]
    ]
];
(*      If[Not[Position[BestLength[1],Infinity]=={}],
            pos=Position[BestLength[1],Infinity][[1]][[1]];
            Print["MAKING A TEST DIRECTION"];
            TestListAdd[SPoint[Sector],Sector*Delta[pos],pos];
            alldegrees =Union[Flatten[Table[(## + SBasisBD[1, i][[1]]) & /@ SBasisBA[1, i], {i,ExampleDimension[ProblemNumber]}], 1]];
            alldegrees=(Sector*(##-SPoint[Sector]))&/@alldegrees;
            found=NTable;
            For[i=1,i<=ExampleDimension[ProblemNumber],i++,
                For[jj=1,jj<=Length[alldegrees],jj++,
                    If[And[Proportional[alldegrees[[jj]],Delta[i]],Or[found[[i]]==0,found[[i]]>ProportionalCoeff[alldegrees[[jj]],Delta[i]]]],
                        found[[i]]=ProportionalCoeff[alldegrees[[jj]],Delta[i]]
                    ];
                ];
            ];
            shifts=Delete[ConstantShifts[found],NTable];
            For[i=1,i<=Length[found],i++,
                Print["ADDING A TEST DIRECTION"];
                TestListAdd[SPoint[Sector]+Sector*shifts[[i]],Sector*Delta[pos],Length[BestLength[2]]+1]
            ]
            (*result=Flatten[(Table[{##[[1]]+Sector*shifts[[i]],##[[2]]},{i,Length[shifts]}])&/@result,1];*)
            (*If[Total[found]==ExampleDimension[ProblemNumber],
                yy=First[First[Position[found,2]]];
                Print["ADDING A TEST DIRECTION"];
                TestListAdd[SPoint[Sector]+Sector*Delta[yy],Sector*Delta[pos],Length[BestLength[2]]+1]
            ];*)
        ];*)
        For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
            TestElement[i];
        ]
]

SForm[x_] := Module[{temp,temp2,shifts,result},
    If[x=={},Return[{{},{}}]];
    temp=DeFactor[x];
    {temp2,shifts}=SDegrees[temp,1];
    If[temp2==={},Return[{{},{}}]];
    AllDegs=(Sector*(##-SPoint[Sector]+x[[1]]))&/@shifts;
    result={Mult[temp2, temp,1],(##-temp2)&/@shifts};
    If[Length[shifts]==1,Print[(Sector*(-SPoint[Sector]+temp2+x[[1]]))],Print[AllDegs]];
    For[j=1,j<=ExampleDimension[ProblemNumber],j++,
        If[And[Or@@((MyProportional[##,Delta[j]])&/@AllDegs),Not[j===SBasisRL[ProblemNumber]l]],SaveElement[j,1,result[[1]],1,result[[2]]]];
    ]; (* fast reduction tests *)
    If[And[Not[FullTests],Length[Position[Delete[BestLength[1], Position[MSector, 0]],Infinity]]<=1],
        TurnFullOn[];
    ];
    Return[result]
] (*uses tempCoeff*)


SectorProjection[x_]:=Table[If[Sector[[here]]===1,Max[x[[here]],1],Min[x[[here]],0]],{here,ExampleDimension[ProblemNumber]}]
InSector[x_]:=If[SBasisRL[ProblemNumber]===0,DoubleMore[x*Sector,SPoint[Sector]],DoubleMore[ReplacePart[x*Sector,1,SBasisRL[ProblemNumber]],SPoint[Sector]]]
InSectorOrLower[x_,Sector_]:=And@@Table[If[Sector[[here]]===1,True,x[[here]]<=0],{here,ExampleDimension[ProblemNumber]}]



ReductionPossible[x_, n_] :=  Module[{temp, temp2, y, xc, yc, xm, ym},
     (*x- the list using tempCoeff,n- a number of the basis element*)
    ReductionEvaluated=False;
    xd=x[[1]];
    yd=SBasisD[ProblemNumber,Sector,n][[1]];
    If[Not[Or@@((DoubleMore[Sector(xd-yd-##),NTable])&/@ SBasisA[ProblemNumber,Sector,n])], Return[False]];
    xc=tempCoeff[1,x[[1]]];
    yc=Expand[SBasisC[ProblemNumber,Sector,n,yd]/.ASRules[xd-yd]];
    coeff = PolynomialGCD[xc,yc];
    xc=MyPolynomialQuotient[xc,coeff];
    yc=MyPolynomialQuotient[yc,coeff];
    If[Max[(MyLength[yc] + 1)*(FullLength[x] + 1), (MyLength[xc] + 1)*(Plus@@(MyLength[SBasisC[ProblemNumber,Sector,n,##]]&/@SBasisD[ProblemNumber,Sector,n] + 1))] > EvaluationLimitQ, Return[False]];
    If[TimeToStop == 1, Throw[4]];
    i=2;j=2;ReductionValue={};
    While[Or[i<=Length[x],j<=Length[SBasisD[ProblemNumber,Sector,n]]],
        If[i>Length[x],AddingX=False];
        If[j>Length[SBasisD[ProblemNumber,Sector,n]],AddingX=True];
        If[And[i<=Length[x],j<=Length[SBasisD[ProblemNumber,Sector,n]]],AddingX=HigherDPoint[x[[i]],xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]]];
        If[AddingX,
            AppendTo[ReductionValue,x[[i]]];
            tempCoeff[2,Last[ReductionValue]]=Expand[yc*tempCoeff[1,x[[i]]]];
            i++,
            If[And[Length[ReductionValue]>0,Last[ReductionValue]==xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]],
                tempCoeff[2,Last[ReductionValue]]=
                    Expand[tempCoeff[2,Last[ReductionValue]]-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[xd-yd])];
                If[tempCoeff[2,Last[ReductionValue]]==0,
                    tempCoeff[2,Last[ReductionValue]]=.;ReductionValue=Drop[ReductionValue,-1]
                ]
            ,
                AppendTo[ReductionValue,xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]];
                tempCoeff[2,Last[ReductionValue]]=Expand[-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[xd-yd])];
            ];
            j++
        ]
    ];
    ReductionEvaluated=True;
    If[Length[ReductionValue] == 0, Return[True]];
    Shift=SDegrees[ReductionValue,2][[1]];
    temp2=Shift+ReductionValue[[1]];
    Return[And[HigherDPoint[xd, temp2], Not[temp2 == xd]]];
]



(* temp on basis???*)

ReductionStep[x_,n_]:=Module[{temp},
    NeedReplace=False;
    xd=x[[1]];
    yd=SBasisD[ProblemNumber,Sector,n][[1]];
    xc=tempCoeff[1,x[[1]]];
    yc=Expand[SBasisC[ProblemNumber,Sector,n,yd]/.ASRules[xd-yd]];
    If[And[xd==yd,Or[MyLength[xc] < MyLength[yc], And[MyLength[xc] == MyLength[yc], FullLength[x]<FullBLength[n]]]],
        Print["Basis element ",n," replaced"];
        NeedReplace=True;
        Temp13[x];
    ];
    If[ReductionEvaluated,
        ReductionEvaluated=False;
        If[NeedReplace,BasisReplace[n, x,{NTable},3]];
        Temp21[x,ReductionValue];
        Return[ReductionValue]
    ];
    coeff = PolynomialGCD[xc,yc];
    xc=MyPolynomialQuotient[xc,coeff];
    yc=MyPolynomialQuotient[yc,coeff];
(*Print[{"d",MyLength[xc]+1,FullLength[x]+1,MyLength[yc]+1,FullBLength[n]+1}];*)
    If[TimeToStop == 1, Throw[4]];
    If[Max[(MyLength[yc] + 1)*(FullLength[x] + 1), (MyLength[xc] + 1)*(FullBLength[n] + 1)] > EvaluationLimitQ, Return[TooLong]];
    i=2;j=2;ReductionValue={};tempCoeff[1,xd]=.;
    While[Or[i<=Length[x],j<=Length[SBasisD[ProblemNumber,Sector,n]]],
        If[i>Length[x],AddingX=False];
        If[j>Length[SBasisD[ProblemNumber,Sector,n]],AddingX=True];
        If[And[i<=Length[x],j<=Length[SBasisD[ProblemNumber,Sector,n]]],AddingX=HigherDPoint[x[[i]],xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]]];
        If[AddingX,
            AppendTo[ReductionValue,x[[i]]];
            tempCoeff[1,Last[ReductionValue]]=Expand[yc*tempCoeff[1,x[[i]]]];
            i++,
            If[And[Length[ReductionValue]>0,Last[ReductionValue]==xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]],
                tempCoeff[1,Last[ReductionValue]]=
                    Expand[tempCoeff[1,Last[ReductionValue]]-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[xd-yd])];
                If[tempCoeff[1,Last[ReductionValue]]==0,
                    tempCoeff[1,Last[ReductionValue]]=.;ReductionValue=Drop[ReductionValue,-1]
                ]
            ,
                AppendTo[ReductionValue,xd-yd+SBasisD[ProblemNumber,Sector,n][[j]]];
                tempCoeff[1,Last[ReductionValue]]=Expand[-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[xd-yd])];
            ];
            j++
        ]
    ];
    If[NeedReplace,BasisReplace[n, x,{NTable},3]];
    ReductionValue
]


Reduction[x_] := Module[{temp,i,y},
    {y,shifts}=x;
    StepDone=True;
    ResortOrdering = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, LowerDPoint];

    While[StepDone,
        StepDone=False;
        For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
            If[ReductionPossible[y,ResortOrdering[[i]]],
                y=ReductionStep[y,ResortOrdering[[i]]];
                If[y==TooLong,Return[TooLong]];
                If[y=={},Return[{}]];
                {y,shifts}=SForm[y];
                If[y=={},Return[{}]];
                StepDone=True;
                Break[]
            ];
        ];
        If[y=={},Return[{}]];
    ];
    {y,shifts}
]





BasisReduce[] := Module[{l, i, j},
    Label[restart];
    ResortOrdering = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, HigherDPoint];
    ResortOrdering2 = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, LowerDPoint];
    l = SBasisL[ProblemNumber,Sector];
    For[i=1,i<=l,i++,
        For[j=1,j<=l,j++,
            ii=ResortOrdering[[i]];
            jj=ResortOrdering2[[j]];
            If[jj == ii, Continue[]];
            If[GRBASISrtable[[ii]][[jj]]===0,
                temp=Basis2Temp[ii,1];
                GRBASISrtable[[ii]]=ReplacePart[GRBASISrtable[[ii]],ReductionPossible[temp,jj],jj];
                If[SBasisD[ProblemNumber,Sector,ii][[1]]==SBasisD[ProblemNumber,Sector,jj][[1]],
                    GRBASISrtable[[jj]]=ReplacePart[GRBASISrtable[[jj]],GRBASISrtable[[ii]][[jj]],ii]
                ]
            ];
            If[GRBASISrtable[[ii]][[jj]],
                Print["Reducing basis element ", ii, " of length ", FullBLength[ii]];
                Print[Sector*(SBasisD[ProblemNumber,Sector,ii][[1]]-SPoint[Sector])];
                    f = ReductionStep[temp, jj];
                    If[And[Not[f === {}],Not[f===TooLong]],
                        f = SForm[f];
                        If[f[[1]]==={},Continue[]];
                        f = Reduction[f];
                    ];
                    If[f==TooLong,
                        GRBASISrtable[[ii]]=ReplacePart[GRBASISrtable[[ii]],False,jj];
                        Print["Reduction impossible"];
                        Continue[];
                    ];
                    Print["Reduction over"];
                    If[f === {},
                        BasisRemove[ii];
                        Print["Element removed"]
                        ,
                        AfterReduction=True;
                        BasisReplace[ii, f[[1]],f[[2]],1];
                        Print["Element reduced. New length: ", FullBLength[ii]];
                    ];
                BasisResort[];
                Goto[restart]
            ];
        ];
    ];
]



BasisResort[] := Module[{i, j},
    ResortOrdering = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, LowerDPoint];
    Print["Permutation = ", ResortOrdering];
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        For[j=1,j<=Length[SBasisD[ProblemNumber,Sector,i]],j++,
            tempBasisC[Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]]=SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]];
            SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]]=.
        ];
        tempBasisA[Sector,i]=SBasisA[ProblemNumber,Sector,i];
        tempBasisD[Sector,i]=SBasisD[ProblemNumber,Sector,i];
        tempBasisH[Sector,i]=SBasisH[ProblemNumber,Sector,i];
    ];
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        For[j=1,j<=Length[tempBasisD[Sector,ResortOrdering[[i]]]],j++,
            SBasisC[ProblemNumber,Sector,i,tempBasisD[Sector,ResortOrdering[[i]]][[j]]]=
                tempBasisC[Sector,ResortOrdering[[i]],tempBasisD[Sector,ResortOrdering[[i]]][[j]]];
        ];
        SBasisA[ProblemNumber,Sector,i]=tempBasisA[Sector,ResortOrdering[[i]]];
        SBasisD[ProblemNumber,Sector,i]=tempBasisD[Sector,ResortOrdering[[i]]];
        SBasisH[ProblemNumber,Sector,i]=tempBasisH[Sector,ResortOrdering[[i]]];
    ];
    Clear[tempBasisC,tempBasisD,tempBasisA,tempBasisH];
    GRBASISrtable = Table[GRBASISrtable[[ResortOrdering[[i]]]][[ResortOrdering[[j]]]], {i, 1,SBasisL[ProblemNumber,Sector]}, {j, 1, SBasisL[ProblemNumber,Sector]}];
    GRBASISstable = Table[GRBASISstable[[ResortOrdering[[i]]]][[ResortOrdering[[j]]]], {i, 1, SBasisL[ProblemNumber,Sector]}, {j, 1, SBasisL[ProblemNumber,Sector]}];
    Print["Sorting over"];
]


FinalResort[] := Module[{i, j},
    ResortOrdering = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, LowerDPoint];
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        For[j=1,j<=Length[SBasisD[ProblemNumber,Sector,i]],j++,
            tempBasisC[Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]]=SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]];
            SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]]=.
        ];
        tempBasisA[Sector,i]=SBasisA[ProblemNumber,Sector,i];
        tempBasisD[Sector,i]=SBasisD[ProblemNumber,Sector,i];
        tempBasisH[Sector,i]=SBasisH[ProblemNumber,Sector,i];
    ];
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        For[j=1,j<=Length[tempBasisD[Sector,ResortOrdering[[i]]]],j++,
            SBasisC[ProblemNumber,Sector,i,tempBasisD[Sector,ResortOrdering[[i]]][[j]]]=
                tempBasisC[Sector,ResortOrdering[[i]],tempBasisD[Sector,ResortOrdering[[i]]][[j]]];
        ];
        SBasisA[ProblemNumber,Sector,i]=tempBasisA[Sector,ResortOrdering[[i]]];
        SBasisD[ProblemNumber,Sector,i]=tempBasisD[Sector,ResortOrdering[[i]]];
        SBasisH[ProblemNumber,Sector,i]=tempBasisH[Sector,ResortOrdering[[i]]];
    ];
    Clear[tempBasisC,tempBasisD,tempBasisA,tempBasisH];
]



BasisRemove[i_] := Module[{l},
    l = SBasisL[ProblemNumber,Sector];
    For[j=i,j<=l,j++,
        For[k=1,k<=Length[SBasisD[ProblemNumber,Sector,j]],k++,SBasisC[ProblemNumber,Sector,j,SBasisD[ProblemNumber,Sector,j][[k]]]=.];
        SBasisD[ProblemNumber,Sector,j]=SBasisD[ProblemNumber,Sector,j+1];
        If[j<l,For[k=1,k<=Length[SBasisD[ProblemNumber,Sector,j+1]],k++,
            SBasisC[ProblemNumber,Sector,j,SBasisD[ProblemNumber,Sector,j+1][[k]]]=SBasisC[ProblemNumber,Sector,j+1,SBasisD[ProblemNumber,Sector,j+1][[k]]]]];
    ];
    SBasisD[ProblemNumber,Sector,l]=.;
    SBasisA[ProblemNumber,Sector,l]=.;
    SBasisH[ProblemNumber,Sector,l]=.;



    GRBASISrtable = Map[(Delete[##, i]) &, Delete[GRBASISrtable, i], {1}];
    GRBASISstable = Map[(Delete[##, i]) &, Delete[GRBASISstable, i], {1}];

    SBasisL[ProblemNumber,Sector]--;
]


BasisReplace[i_, x_,shifts_,type_] := Module[{temp, j},
    y=x;
(*  temp = {tempCoeff[type,x[[1]]],x[[1]]};
    Print["Degree is ",Sector*(temp[[2]]-SPoint[Sector])];*)
    Temp2Basis[i,x,shifts,type];
    For[j=1,j <= SBasisL[ProblemNumber,Sector],j++,
        If[j == i, Continue[]];
        GRBASISrtable[[j]] = ReplacePart[GRBASISrtable[[j]],        If[And[AfterReduction===True,SBasisD[ProblemNumber,Sector,j][[1]]===SBasisD[ProblemNumber,Sector,i][[1]]],False,0], i];
        GRBASISrtable[[i]] = ReplacePart[GRBASISrtable[[i]],If[AfterReduction===True,False,0], j];
    ];  (*filling reduction possibilities*)
    temp=Table[MainValue[i,j],{j,1,SBasisL[ProblemNumber,Sector]}];
    temp[[i]]=0;
    GRBASISstable[[i]]=temp;
    GRBASISstable=Transpose[GRBASISstable];
    GRBASISstable[[i]]=temp;
    AfterReduction=False;


    If[FullTests,TestElement[i]];





]







BasisAdd[x_,shifts_] := Module[{aaaa, temp, i, j},
    SBasisL[ProblemNumber,Sector]++;
    SBasisD[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]={};
SBasisH[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=True;


    Print["New element of length ", FullLength[x]];
    If[SBasisL[ProblemNumber,Sector] === 1,
        GRBASISrtable = {{0}};GRBASISstable = {{0}},
        GRBASISrtable=Transpose[Append[Transpose[Append[GRBASISrtable,Table[0,{SBasisL[ProblemNumber,Sector]-1}]]],Table[0,{SBasisL[ProblemNumber,Sector]}]]];
        GRBASISstable=Transpose[Append[Transpose[Append[GRBASISstable,Table[0,{SBasisL[ProblemNumber,Sector]-1}]]],Table[0,{SBasisL[ProblemNumber,Sector]}]]]
    ];
    BasisReplace[SBasisL[ProblemNumber,Sector],x,shifts,1];
]





(*--------------------------------- old style search*)
TriangleRule := Module[{i, j, k, l},
    l = SBasisL[ProblemNumber,Sector];
    For[i=1,i<=l,i++,For[j=i+1,j<=l,j++,For[k=j+1,k<=l,k++,
        If[And[GRBASISstable[[i]][[j]] == 0, GRBASISstable[[j]][[k]] == 0],
            GRBASISstable[[i]]=ReplacePart[GRBASISstable[[i]], 0, k];
            GRBASISstable[[k]]=ReplacePart[GRBASISstable[[k]], 0, i];
        ];
        If[And[GRBASISstable[[i]][[j]] == 0, GRBASISstable[[i]][[k]] == 0],
            GRBASISstable[[j]]=ReplacePart[GRBASISstable[[j]], 0, k];
            GRBASISstable[[k]]=ReplacePart[GRBASISstable[[k]], 0, j];
        ];
        If[And[GRBASISstable[[i]][[k]] == 0, GRBASISstable[[j]][[k]] == 0],
            GRBASISstable[[i]]=ReplacePart[GRBASISstable[[i]], 0, j];
            GRBASISstable[[j]]=ReplacePart[GRBASISstable[[j]], 0, i];
        ];
    ]]]
]



MainValue[i_,j_]:=Min[Plus@@(MultiMax[Deg[j],Deg[i]]-Deg[j]),Plus@@(MultiMax[Deg[j],Deg[i]]-Deg[i])]+1
InitialFunctionValue := {0,NTable[0, {ExampleDimension[ProblemNumber]}]}
InfiniteFunctionValue := {Infinity,Table[Infinity, {ExampleDimension[ProblemNumber]}]}
FunctionMatrixValue[i_, j_] :={MainValue[i,j], MultiMax[Deg[i],Deg[j]]*Sector+SPoint[Sector] }

(*FunctionSymmetryValue[i_, j_] :={1,HD[GRBASISsymresults[[i]][[j]]]}*)

FunctionCompared[x_, y_] := Or[First[x] > First[y], And[First[x] == First[y], HigherDPoint[Last[x],Last[y]]]]

MinimalValue[] := Module[{i,j,k,l},
    k = InitialFunctionValue;
    l = SBasisL[ProblemNumber,Sector];


    For[j=1,j<=l,j++,For[i=j-1,i>=1,i--,
        If[And[GRBASISstable[[i]][[j]] > 0, GRBASISstable[[i]][[j]] < Infinity,
            Or[k == InitialFunctionValue,FunctionCompared[k, FunctionMatrixValue[i, j]]]],
            k = FunctionMatrixValue[i, j]
        ];
        If[And[GRBASISstable[[i]][[j]] == Infinity, k == InitialFunctionValue], k = InfiniteFunctionValue];
    ]];
    k
]

MinimalValuePosition[k_] := Module[{i,j,l},
    l = SBasisL[ProblemNumber,Sector];

    ResortOrdering = Ordering[Table[SBasisD[ProblemNumber,Sector,i][[1]],{i,SBasisL[ProblemNumber,Sector]}], All, LowerDPoint];
    For[j=1,j<=l,j++,For[i=j-1,i>=1,i--,
        ii=ResortOrdering[[i]];
        jj=ResortOrdering[[j]];
        If[And[FunctionMatrixValue[ii, jj] == k, GRBASISstable[[ii]][[jj]] > 0, GRBASISstable[[ii]][[jj]] < Infinity],
            Return[{False,ii,jj}]
        ];
    ]];

    {False,i,j}
]


PrintB := Print[MatrixForm[GRBASISstable]];

(*--------------------------------- old style search*)





SPLIT[m_,n_] := Module[{temp,i,j},
    Clear[tempCoeff];
    xd=SBasisD[ProblemNumber,Sector,m][[1]];
    yd=SBasisD[ProblemNumber,Sector,n][[1]];
    fulld=Sector*MultiMax[Deg[m],Deg[n]]+SPoint[Sector];
    xc=Expand[SBasisC[ProblemNumber,Sector,m,xd]/.ASRules[fulld-xd]];
    yc=Expand[SBasisC[ProblemNumber,Sector,n,yd]/.ASRules[fulld-yd]];
    If[Max[(MyLength[yc] + 1)*(FullBLength[m] + 1), (MyLength[xc] + 1)*(FullBLength[n] + 1)] > EvaluationLimitQ, Return[TooLong]];
    coeff = PolynomialGCD[xc,yc];
    xc=MyPolynomialQuotient[xc,coeff];
    yc=MyPolynomialQuotient[yc,coeff];
    If[TimeToStop == 1, Throw[4]];
    i=2;j=2;ReductionValue={};
(*Print[Length[SBasisD[ProblemNumber,Sector,m]]];
Print[Length[SBasisD[ProblemNumber,Sector,n]]];*)
    While[Or[i<=Length[SBasisD[ProblemNumber,Sector,m]],j<=Length[SBasisD[ProblemNumber,Sector,n]]],
(*Print[{i,j}];*)
        If[i>Length[SBasisD[ProblemNumber,Sector,m]],AddingX=False];
        If[j>Length[SBasisD[ProblemNumber,Sector,n]],AddingX=True];
        If[And[i<=Length[SBasisD[ProblemNumber,Sector,m]],j<=Length[SBasisD[ProblemNumber,Sector,n]]],
            AddingX=HigherDPoint[fulld-xd+SBasisD[ProblemNumber,Sector,m][[i]],fulld-yd+SBasisD[ProblemNumber,Sector,n][[j]]]
        ];
(*Print[{1,AddingX}];*)
        If[AddingX,
            AppendTo[ReductionValue,fulld-xd+SBasisD[ProblemNumber,Sector,m][[i]]];
            tempCoeff[1,Last[ReductionValue]]=Expand[yc*(SBasisC[ProblemNumber,Sector,m,SBasisD[ProblemNumber,Sector,m][[i]]]/.ASRules[fulld-xd])];
            i++,
            If[And[Length[ReductionValue]>0,Last[ReductionValue]==fulld-yd+SBasisD[ProblemNumber,Sector,n][[j]]],
                tempCoeff[1,Last[ReductionValue]]=
                    Expand[tempCoeff[1,Last[ReductionValue]]-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[fulld-yd])];
                If[tempCoeff[1,Last[ReductionValue]]==0,
                    tempCoeff[1,Last[ReductionValue]]=.;ReductionValue=Drop[ReductionValue,-1]
                ]
            ,
                AppendTo[ReductionValue,fulld-yd+SBasisD[ProblemNumber,Sector,n][[j]]];
(*Print[1];*)
(*Print[Expand[-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[fulld-yd])]];*)
                tempCoeff[1,Last[ReductionValue]]=Expand[-xc*(SBasisC[ProblemNumber,Sector,n,SBasisD[ProblemNumber,Sector,n][[j]]]/.ASRules[fulld-yd])];
(*Print[2];*)
            ];
            j++
        ];
    ];
    ReductionValue
]

MatrixForReg[x_, n_] :=
  And[Apply[And, Map[(## === 0) &, Transpose[Delete[x, ExampleDimension[ProblemNumber]]][[n]], 1]],
    Apply[And,
      Map[(## === 0) &, Transpose[Delete[Transpose[x], n]][[ExampleDimension[ProblemNumber]]], 1]]]


ClearBasis[]:=Module[{i,j},
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        For[j=1,j<=Length[SBasisD[ProblemNumber,Sector,i]],j++,SBasisC[ProblemNumber,Sector,i,SBasisD[ProblemNumber,Sector,i][[j]]]=.];
        SBasisD[ProblemNumber,Sector,i]=.;
        SBasisA[ProblemNumber,Sector,i]=.;
        SBasisH[ProblemNumber,Sector,i]=.;
    ];
    SBasisL[ProblemNumber,Sector]=0;
]

HasPlusOperator[x_,y_]:=Module[{i,j},
    For[i=1,i<=Length[y],i++,
        For[j=1,j<=Length[x],j++,
            If[x[[j]][[y[[i]]]]==1,Return[True]]
        ]
    ];
    Return[False]
]




RandomMatrix[n_] := Module[{i, j, temp},
  SeedRandom[];
  Label[restart];
  temp = Table[Random[Integer], {i, n}, {j, n}];
  If[Det[temp] == 0, Goto[restart]];
  temp
  ]

BuildBasis[direction_]:=Module[{temp,result},
    result=False;
    While[result==False,
        Print["TESTING RANDOM ORDERING"];
        temp=RandomMatrix[Length[direction]];
        Print[MatrixForm[temp]];
        result=TimeConstrained[BuildBasis[direction,temp],TestTime,False];
    ];
    True
]

BuildBasis[direction_,ordering_]:=BuildBasis[direction,ordering,{}]

BuildBasis[direction_,ordering_,options_List] := Module[{i,j},
    If[Burning,Print["FIRE extinguished."];
        Clear[SectorNumber,Burning];
    ];
    If[Head[SBasisM[ProblemNumber]]==SBasisM,SBasisM[ProblemNumber]={}];
    
    (If[direction[[##]]<1,Print["Heavy point direction must be positive"];Return[False]])&/@HPI;
    
    For[i = 1, i <= Length[HPI[ProblemNumber]], i++,
        If[direction[[HPI[ProblemNumber][[i]]]]<1,Print["Heavy point direction must be positive"];Return[False]];
    ];
    
    If[Head[ExampleDimension[ProblemNumber]]===ExampleDimension, Print["Starting list not defined"]; Return[]];
    If[Or[Not[VectorQ[direction,(Or[##===1,##===-1,##==0])&]],Not[Length[direction] === ExampleDimension[ProblemNumber]]],
        Print["Error in the direction"]; Return[]
    ];
    If[Or[Not[MatrixQ[ordering,IntegerQ]],
        Not[Dimensions[ordering] === {ExampleDimension[ProblemNumber],ExampleDimension[ProblemNumber]}],Det[ordering] === 0],
        Print["Error in the ordering"]; Return[]
    ];
    If[SBasisRL[ProblemNumber]>0,
          If[Not[MatrixForReg[ordering, SBasisRL[ProblemNumber]]], Print["Error in the ordering"]; Return[]];
          If[direction[[SBasisRL[ProblemNumber]]] === -1,
            Print["Error in the direction"]; Return[]]];
    Running=True;
    ClearTables[];
        Clear[EvaluationLimitQ];
        Clear[AllowedDirections];
    AllowedDirections={};
    For[i=1,i<=Length[options],i++,
        If[Head[options[[i]]] == Rule,
            If[First[options[[i]]] == EvaluationLimit,EvaluationLimitQ = Last[options[[i]]]];
            If[First[options[[i]]] == StopPoint,AllowedDirections = Last[options[[i]]]];
        ];
    ];
    TestList = {};




    If[Not[ValueQ[EvaluationLimitQ]],EvaluationLimitQ = EvaluationLimitDefault];
    Print["Evaluation limit is ", EvaluationLimitQ];
    MSector=direction;
    Sector=MSector/.{0->-1};
    SBasisO[ProblemNumber,Sector]=ordering;


    GRBASISrtable = {};
    GRBASISstable = {};


(*????????????*)
    HadTimeouts = 0;
(*????????????*)


    MultipleElement=False;
    Sector=MSector;
    ClearBasis[];
    Sector=MSector/.{0->-1};
    If[Length[Flatten[Position[MSector,0]]]>0,
    temp=SubSectors[MSector];
        For[i=1,i<=Length[temp],i++,
            SBasisL[ProblemNumber,temp[[i]]]=0;
        ]
    ];


    Clear[SBasisBD,SBasisBC,SBasisBA];
    SpecialIBPs={};
    SpecialIBPnumbers={};
    FullTests=False;
    BestLength[1]=Table[Infinity,{ExampleDimension[ProblemNumber]}];
    BestLength[2]=NTable;
    TestList={};
    TimeToStop = 0;
    timecounter = TimeUsed[];
    done = Catch[
        For[i=1,i<=SBasis0L[ProblemNumber],i++,
            If[HasPlusOperator[SBasis0D[ProblemNumber,i],Flatten[Position[MSector,0]]],Continue[]];
            tempelement=Start2Temp[i];
            If[Length[tempelement]==1,
                AppendTo[SpecialIBPs,tempCoeff[1,tempelement[[1]]]];
                AppendTo[SpecialIBPnumbers,i]
            ];
        ];

        For[i=1,i<=SBasis0L[ProblemNumber],i++,
            If[HasPlusOperator[SBasis0D[ProblemNumber,i],Flatten[Position[MSector,0]]],Continue[]];
            tempelement=Start2Temp[i];
            If[Length[tempelement]==1,Continue[]];
            {tempelement,shifts}=SForm[tempelement];
            If[tempelement==={},Continue[]];
            BasisAdd[tempelement,shifts]
        ];
        BasisResort[];
        BasisReduce[];
        While[True,
            TriangleRule;
            k=MinimalValue[];
            If[k == InitialFunctionValue, Throw[HadTimeouts + 1]];
            If[k == InfiniteFunctionValue, PrintB; Throw[2]];
            {k,i,j}=MinimalValuePosition[k];
            If[k,
                Print[1];
                (*symmetries*)
            ,
                (*PrintB;*)
                Print[{i, j}];
                GRBASISstable[[i]]=ReplacePart[GRBASISstable[[i]], 0, j];
                GRBASISstable[[j]]=ReplacePart[GRBASISstable[[j]], 0, i];
                f=SPLIT[i,j];
                If[f=={},Continue];
                If[Not[f===TooLong],
                    f=SForm[f];
                    If[f[[1]]==={},Continue[]];
                    f = Reduction[f];
                ];
                If[f==TooLong,
                    GRBASISstable[[i]]=ReplacePart[GRBASISstable[[i]], Infinity, j];
                    GRBASISstable[[j]]=ReplacePart[GRBASISstable[[j]], Infinity, i];
                    Print["Element too long"];
                    Continue[]
                ];
                If[f == {}, Continue[]];
            ];
            BasisAdd[f[[1]],f[[2]]];
            BasisResort[];
            BasisReduce[];
        ];
    ];
    ClearBasis[];



(*Saving from here*)
    SBasisL[ProblemNumber,Sector]=0;
    SBasisO[ProblemNumber,MSector]=SBasisO[ProblemNumber,Sector];
    Sector=MSector;
    SBasisL[ProblemNumber,Sector]=0;
    For[i=1,i<=Length[BestLength[2]],i++,
        type=0;
        If[And[i<=ExampleDimension[ProblemNumber],BestLength[1][[i]]<Infinity],
            type=1,
            If[And[BestLength[2][[i]]<Infinity,BestLength[2][[i]]>0],type=2];
        ];
        If[type>0,
            AlreadyAdded=False;
            For[k=1,k<=SBasisL[ProblemNumber,Sector],k++,
                If[And[SBasisD[ProblemNumber,Sector,k]===SBasisBD[type,i],
                        Or[type===1,
                        SBasisH[ProblemNumber,Sector,k]===ReplacePart[Cases[TestList,{xxx_,yyy_,i}][[1]],SBasisBH[i],3]]
                    ],
                    For[j=1,j<=Length[SBasisBD[type,i]],j++,
                        If[Not[SBasisC[ProblemNumber,Sector,k,SBasisD[ProblemNumber,Sector,k][[j]]]===SBasisBC[type,i,SBasisBD[type,i][[j]]]],
                            Goto[AddingNow]
                        ];
                        AlreadyAdded=True;
                    ]
                ]
            ];
            Label[AddingNow];
            If[Not[AlreadyAdded],
                SBasisL[ProblemNumber,Sector]++;
                For[j=1,j<=Length[SBasisBD[type,i]],j++,
                    SBasisC[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector],SBasisBD[type,i][[j]]]=SBasisBC[type,i,SBasisBD[type,i][[j]]]
                ];
                SBasisD[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=SBasisBD[type,i];
                SBasisA[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=SBasisBA[type,i];
                If[type===1,
                    SBasisH[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=True,
                    SBasisH[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=
                    ReplacePart[Cases[TestList,{xxx_,yyy_,i}][[1]],SBasisBH[i],3]
                ];
            ]
        ]
    ];

(*deflattening*)
If[Length[Flatten[Position[MSector,0]]]>0,
    AppendTo[SBasisM[ProblemNumber],MSector];
    Yms=Array[Ym,ExampleDimension[ProblemNumber]];
    BadElements=0;
    BE=0;
    SecondPass=False;
    Label[again];
    For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
        If[SecondPass,i=BE];
        Clear[tempCoeff];
        tempelement=Basis2Temp[i,1];
        If[SecondPass,
             (tempCoeff[1, ##] =tempCoeff[1, ##] /. Delete[AVRules[NTable],dir])& /@ tempelement;
        ];
        newtempelement={};
        For[j=1,j<=Length[tempelement],j++,
            tempC=Expand[tempCoeff[1,tempelement[[j]]]];
            If[tempC===0,Continue[]];
            If[j==1,
                For[k=1,k<=Length[SpecialIBPs],k++,
                    tempC=Try1Red[tempC,SpecialIBPs[[k]]];              
                ];
            ];
            newtemp={};
            If[Head[tempC]===Plus,tempC=List@@tempC,tempC={tempC}];
            For[k=1,k<=Length[tempC],k++,
                degrees=Exponent[tempC[[k]],##]&/@Yms;
                AppendTo[newtemp,tempelement[[j]]-degrees];
                newc=tempC[[k]]/.((## -> 1) & /@ Yms);
                If[Head[tempCoeff[2,Last[newtemp]]]===tempCoeff,
                    tempCoeff[2,Last[newtemp]]=Expand[newc],
                    tempCoeff[2,Last[newtemp]]=Expand[tempCoeff[2,Last[newtemp]]+newc]
                ]
            ];
            newtemp=Union[newtemp];
            If[j==1,
                Print[newtemp];
                If[Length[newtemp]>1,
                    BadElements++;
                    BE=i;
                    If[SecondPass,Print["SUBSTITUTING VALUES DID NOT HELP"],Print["BAD ELEMENT!!!!!"]];
                    If[SecondPass,Print[tempCoeff[2,##]&/@newtemp]];
            (*        Print[tempC];*)
                ,
                    If[SecondPass,Print["SUBSTITUTING VALUES HELPED!!!"]]
                ];
            ];
            newtempelement=Join[newtempelement,newtemp];
            
        ];
        temp=newtempelement[[1]];
        temp=temp-((MSector/.{-1->1})*temp);
        newtempelement=Mult[-temp,newtempelement,2];
        If[Or[Not[BE===i],SecondPass],
            Temp2Basis[i,newtempelement,SBasisA[ProblemNumber,Sector,i],2];
        ];
        If[SecondPass,SBasisH[ProblemNumber,Sector,BE]={SPoint[Sector],Sector*Delta[dir],value};Break[]];
    ];
 (*   Print[BadElements];*)
    If[And[Not[SecondPass],BadElements==1,Length[Position[Sector*(SBasisD[ProblemNumber, Sector, BE][[1]] - SPoint[Sector]), 0]]==ExampleDimension[ProblemNumber]-1],
            value=DeleteCases[Sector*(SBasisD[ProblemNumber, Sector, BE][[1]] - SPoint[Sector]),0][[1]];
            dir=Position[Sector*(SBasisD[ProblemNumber, Sector, BE][[1]] - SPoint[Sector]), value][[1]][[1]];
            Print[dir];
            SecondPass=True;
            Goto[again];
    ];
];


(*deflattening over*)

    If[SBasisRL[ProblemNumber]>0,
        found=NTable;
        For[i=1,i<=ExampleDimension[ProblemNumber],i++,
            For[j=1,j<=Length[alldegrees],j++,
                If[And[Proportional[alldegrees[[j]],Delta[i]],Or[found[[i]]==0,found[[i]]>ProportionalCoeff[alldegrees[[j]],Delta[i]]]],
                    found[[i]]=ProportionalCoeff[alldegrees[[j]],Delta[i]]
                ];
            ];
        ];
        shifts=ConstantShifts[found];
        pos=0;
        min=Infinity;
        For[i=1,i<=SBasisL[ProblemNumber,Sector],i++,
            For[j=1,j<=Length[SBasisA[ProblemNumber,Sector,i]],j++,
                deg=SBasisD[ProblemNumber,Sector,i][[1]]+SBasisA[ProblemNumber,Sector,i][[j]];
                If[And[ReplacePart[deg-SPoint[Sector],0,SBasisRL[ProblemNumber]]===NTable,deg[[SBasisRL[ProblemNumber]]]<min],
                    pos=i;min=deg[[SBasisRL[ProblemNumber]]]
                ]
            ]
        ];
        If[min<Infinity,
         For[kkk=1,kkk<=Length[shifts],kkk++,
            If[shifts[[kkk]][[SBasisRL[ProblemNumber]]]>0,Continue[]];
            x=SBasisD[ProblemNumber,Sector,pos];
            For[i=1,i<=Length[x],i++,tempCoeff[4,x[[i]]]=SBasisC[ProblemNumber,Sector,pos,x[[i]]]];
            x=Mult[Sector*shifts[[kkk]],x,4];
            rules=Delete[AVRules[NTable],SBasisRL[ProblemNumber]];
            For[iii=1,iii<=Length[x],iii++,
                tempCoeff[4,x[[iii]]]=Expand[tempCoeff[4,x[[iii]]]/.rules];
                If[tempCoeff[4,x[[iii]]]===0,
                tempCoeff[4,x[[iii]]]=.;
                x=Delete[x,iii];
                iii--
                ]
            ];
        (*Print[(1-Max@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x,
            ReplacePart[x[[1]],y_,SBasisRL[ProblemNumber]]]))];*)
            x=Mult[(*(1-Max@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x,
            ReplacePart[x[[1]],y_,SBasisRL[ProblemNumber]]]))**)-Delta[SBasisRL[ProblemNumber]],x,4];
            SBasisL[ProblemNumber,Sector]++;
            For[j=1,j<=Length[x],j++,
                SBasisC[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector],x[[j]]]=tempCoeff[4,x[[j]]];
            ];
            min=ReplacePart[x[[1]],Min@@((##[[SBasisRL[ProblemNumber]]])&/@Cases[x, ReplacePart[x[[1]],y_,SBasisRL[ProblemNumber]]]),SBasisRL[ProblemNumber]];
            SBasisD[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]=Prepend[DeleteCases[x,min],min];
            SBasisA[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]={};
            SBasisH[ProblemNumber,Sector,SBasisL[ProblemNumber,Sector]]={SPoint[Sector]+Sector*shifts[[kkk]],-Delta[SBasisRL[ProblemNumber]],1-min[[SBasisRL[ProblemNumber]]]}
         ];
        ];
    ];

If[Length[Flatten[Position[MSector,0]]]>0,
    temp=SubSectors[MSector];
    MSector2=MSector;
    For[i=1,i<=Length[temp],i++,
        (*SBasisL[ProblemNumber,temp[[i]]]=SBasisL[ProblemNumber,MSector];*)
        SBasisL[ProblemNumber,temp[[i]]]=Length[SpecialIBPs];
        MSector=temp[[i]];
        Sector=MSector;
        For[j=1,j<=Length[SpecialIBPnumbers],j++,
            tempelement=Start2Temp[SpecialIBPnumbers[[j]]];
        (*    {tempelement,shifts}=SForm[tempelement];*)
            If[tempelement==={},Continue[]];
            tempelement=Sort[tempelement,HigherSPoint];
            Temp2Basis[j,tempelement,{NTable},1];
            SBasisH[ProblemNumber,Sector,j]=True;
        ];
        SBasisO[ProblemNumber,temp[[i]]]=SBasisO[ProblemNumber,MSector2]
    ];
    MSector=MSector2;
    Sector=MSector2;
];


    FinalResort[];
    CellPrint[Cell["Evaluation summary: "]];
    If[done==6,done=0];
    If[done==0,Print["Evaluation successful"]];
    If[done==4,Print["Evaluation aborted"]];
    If[MultipleElement,Message[BuildBasis::"SpecialDegree"]];
    If[done == 1, Print["Nothing more to evaluate"];Message[BuildBasis::"Impossible"]];
    If[done == 2, Print["Evaluation impossible"]];
    Masters[Sector,False];
    If[done==6,done=0];
    Print["Evaluation time: ", TimeUsed[] - timecounter];
    Running=False;
    Return[done===0];
];



HigherSPoint[x_,y_]:=Module[{temp,i,xd,yd},
    If[x==y,Return[True]];
    ordering=If[Head[SBasisO[ProblemNumber,Sector]]===SBasisO,ReverseHomogeneousDegreeOrdering,SBasisO[ProblemNumber,Sector]];
    xd=Sector*(x);
    yd=Sector*(y);
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,
        temp=Total[(xd-yd)*ordering[[i]]];
        If[temp<0,Return[False]];
        If[temp>0,Return[True]];
    ];
    Print["HigherDPoint error"];
]

Try1Red[x_, y_] := Module[{temp, i, u, t,result},
  temp = FactorList[x];
  (*Print[temp];*)
   For[i = 1, i <= Length[temp], i++,
   u = temp[[i]][[1]];
   If[And[Length[Cases[Variables[u],Ym[xx_]]] == 1, 
     MemberQ[Variables[y], Cases[Variables[u],Ym[xx_]][[1]]]],
    t = PolynomialRemainder[u, y, Cases[Variables[u],Ym[xx_]][[1]]];
    If[Length[t] < Length[u],
     temp = ReplacePart[temp, {t, temp[[i]][[2]]}, i]
     ]
    ]
   ];
  result=Expand[Times @@ Apply[Power, temp, {1}]];
(*If[Not[result===x],Print[x];Print[result]];*)
  result
  ]

Masters[Sector_]:=Masters[Sector,True]

Masters[Sector_,z_]:=Module[{i,temp,TestList,found},
    TestList=NewTestList[Sector];
    Vectors=Union[(##[[2]])&/@TestList];
    (*OnlyDimension=True;
    For[i=1,i<=Length[TestList],i++,
        If[Not[And[TestList[[i]][[1]]===SPoint[Sector],Length[Cases[TestList[[i]][[2]],0]]===ExampleDimension[ProblemNumber]-1]],
            OnlyDimension=False;
        ]
    ];*)
    alldegrees=Union[Flatten[Table[(##+SBasisD[ProblemNumber,Sector,i][[1]])&/@SBasisA[ProblemNumber,Sector,i],{i,SBasisL[ProblemNumber,Sector]}],1]];
    alldegrees=(Sector*(##-SPoint[Sector]))&/@alldegrees;
    If[MemberQ[alldegrees,NTable],Print["No master integrals in this sector"];Goto[end]];
    found=NTable;
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,
        For[j=1,j<=Length[alldegrees],j++,
            If[And[Proportional[alldegrees[[j]],Delta[i]],Or[found[[i]]==0,found[[i]]>ProportionalCoeff[alldegrees[[j]],Delta[i]]]],
                found[[i]]=ProportionalCoeff[alldegrees[[j]],Delta[i]]
            ];
        ];
    ];
    If[And[Length[TestList]>0,SymmetriesTest[]],Print["The area generated by ",({##[[1]],##[[2]]})&/@TestList," is done by symmetries"]];
    If[SymmetriesTest[],
        done=0,
        If[Length[Vectors]==1,
            If[Length[Cases[Table[SBasisH[ProblemNumber,Sector,i],{i,SBasisL[ProblemNumber,Sector]}],{SPoint[Sector],Vectors[[1]],y_}]]>0,done=6,done=4]
        ,
            done=5
        ]
    ];
(*
    If[And[And @@ notzero /@  found,OnlyDimension],
        done=0
    ,
        If[Length[Position[found,0]]>1,Print["Too many irreducible integrals"]];
        x=First[First[Position[found,0]]];
        If[Length[Cases[Table[SBasisH[ProblemNumber,Sector,i],{i,SBasisL[ProblemNumber,Sector]}],{SPoint[Sector],Delta[x]*Sector,y_}]]>0,done=0,done=4]
    ];*)
    If[done==0,
        Print["Reduction with highest members possible"];
        shifts=ConstantShifts[found];
        If[Length[shifts]==1,
            Print["One master integral expected: G[",SPoint[Sector],"]"],
            string=""<>ToString[Length[shifts]]<>" master integrals expected: ";
            For[i=1,i<=Length[shifts],i++,
                string=string<>"G["<>ToString[(SPoint[Sector]+Sector*shifts[[i]])]<>"]";
                If[i<Length[shifts],string=string<>", "];
            ];
            Print[string];
        ]
    ];
    If[done==6,
        For[i=1,i<=Length[TestList],i++,
            Print["Reduction on the axis G[", TestList[[i]][[1]]+T*TestList[[i]][[2]],"] is done with lower members"];
            j=Cases[Table[SBasisH[ProblemNumber,Sector,iii],{iii,SBasisL[ProblemNumber,Sector]}],{TestList[[i]][[1]],TestList[[i]][[2]],y_}][[1]][[3]];
            If[And[j==2,LocalOddRestrictionsPossible[TestList[[i]][[1]]+TestList[[i]][[2]]]],Print["Odd axis"];j=1];
            Print["Master integrals on the axis expected: ",j];
        ]
    ];
    If[done == 4,
        Message[BuildBasis::"Infinite"];
        For[i=1,i<=Length[TestList],i++,
            Print["An INFINITE number of master integrals expected:  G[", TestList[[i]][[1]]+T*TestList[[i]][[2]],"]"];
        ]
    ];
    If[done ==5,Message[BuildBasis::"Infinite"];Print["Two or more directions"]];
Label[end];
    If[z,
        Do[If[SBasisH[ProblemNumber,Sector,i]===True,
        If[SBasisA[ProblemNumber,Sector,i]===NTable,
            Print[Sector*(SBasisD[ProblemNumber,Sector,i][[1]]-SPoint[Sector])],
            Print[Sector*(##+SBasisD[ProblemNumber,Sector,i][[1]]-SPoint[Sector])&/@SBasisA[ProblemNumber,Sector,i]]
        ],
        Print["Special element for reducing on ",SBasisH[ProblemNumber,Sector,i][[1]]+SBasisH[ProblemNumber,Sector,i][[2]]*SBasisH[ProblemNumber,Sector,i][[3]]+T*SBasisH[ProblemNumber,Sector,i][[2]]];
        ],
        {i,SBasisL[ProblemNumber,Sector]}]
    ]

]


UseSymmetry[x_, y_] := Table[y[[x[[here]]]], {here, 1, ExampleDimension[ProblemNumber]}]
(*input - a point, output - a point*)


SatisfiesCondition[x_,y_]:=And@@Table[If[y[[ii]]===0,True,If[y[[ii]]>0,x[[ii]]>0,x[[ii]]<=0]],{ii,Length[x]}]

Orbit[x_] := Union[Map[If[SatisfiesCondition[x,##[[3]]],UseSymmetry[##[[1]], x],x]&,SBasisS[ProblemNumber],{1}]]

tempfunction[x_]:=(Plus@@(SBasisL[ProblemNumber,If[MaxRegion[ProblemNumber,##]>0,SBasisM[ProblemNumber][[MaxRegion[ProblemNumber,##]]],##]]&/@x));
tempfunction2[x_]:=(Plus@@(If[Head[RULES[ProblemNumber,##]]==RULES,0,1]&/@x));

SubSectors[x_]:=Module[{points,i,j},
    points={x};
    i=1;
    While[i<=Length[points],
        j=1;
        point=points[[i]];
        Found=False;
        While[j<=ExampleDimension[ProblemNumber],
            If[point[[j]]==0,
                points=FlattenAt[ReplacePart[points,{ReplacePart[point,1,j],ReplacePart[point,-1,j]},i],i];
                Found=True;
                Break[],
                j++
            ]
        ];
        If[Not[Found],i++]
    ];
    Return[points]
]

Info[x_]:=Info[x,False]

Info[x_,z_]:=Module[{temp,i,j,T},
    If[Or[Not[VectorQ[x,(Or[##===1,##===0,##===-1])&]],Not[Length[x] === ExampleDimension[ProblemNumber]]],
        Print["Error in the direction"]; Return[]
    ];
    If[Head[SBasisM[ProblemNumber]]==SBasisM,SBasisM[ProblemNumber]={}];
    points=SubSectors[x];
    If[Length[points]==1,
        If[SBasisL[ProblemNumber,x]===0,
            Print["No basis for this sector"]
        ,
            Masters[x,True];
        ]
    ,
        Print["Sectors in the area :",Length[points]];
        points=Union[Orbit[##]]&/@points;
        For[i=1,i<=Length[points],i++,If[Or@@(SBasisR[ProblemNumber,##]&/@points[[i]]),points=Delete[points,i];i--]];
        Print["Non-trivial sectors in the area :",Length[points]];
        points=Union[points];
        Print["Non-trivial sectors up to a symmetry in the area :",Length[points]];
        i=Length[points];
(*      bases=points;
        Do[Do[bases=ReplacePart[bases,ReplacePart[bases[[i]],SBasisL[ProblemNumber,bases[[i]][[j]]],j],i],{j,Length[points[[i]]]}],{i,Length[points]}]
        bases=Apply[Plus,bases,{1}];
        pos=Position[bases,0];*)
        points=DeleteCases[(If[tempfunction[##]===0,##,T])&/@points,T];
        Print["Bases built in ",i-Length[points]," sectors"];
        i=Length[points];
        points=DeleteCases[(If[tempfunction2[##]===0,##,T])&/@points,T];
        Print["Rules exist in ",i-Length[points]," sectors"];
        Print["Nothing in ",Length[points]," sectors"];
        points=Sort[points,(Total[#1[[1]]]>=Total[#2[[1]]])&];
        Minuses=0;
        If[z,
            Do[If[Total[points[[i]][[1]]]<Total[x/.(0->1)]-2Minuses,
                While[Total[points[[i]][[1]]]<Total[x/.(0->1)]-2Minuses,Minuses++];
                If[Minuses==1,
                    Print["1 additional minus"],
                    Print[Minuses," additional minuses"]
                    ];
                ];
                Print[points[[i]]],
            {i,Length[points]}];
        ]
    ]
]



MaxDegrees[x_,Sector_]:=Module[{temp,temp2,i,j,min},  
    temp=(Sector*##)&/@x;
Label[restart1];
    For[i=1,i<=Length[temp],i++,
        For[j=1,j<=Length[temp],j++,
            If[j==i,Continue[]];
            If[DoubleMore[temp[[j]],temp[[i]]],
                temp=Delete[temp,i];
                Goto[restart1];
            ];
        ]
    ];
    If[Length[temp]==1,Return[{Sector*temp[[1]]}]];
    min=Min/@Transpose[temp];
    temp=(##-min)&/@temp;
    Label[restart];
    For[i=1,i<=Length[temp],i++,
        rank=MatrixRank[Delete[temp,i]];
        temp2=KSubsets[Delete[temp,i],rank];
        For[j=1,j<=Length[temp2],j++,
            If[And[MatrixRank[temp2[[j]]]==rank,MatrixRank[Append[temp2[[j]],temp[[i]]]]==rank],
                coeffs=LinearSolve[Transpose[temp2[[j]]],temp[[i]]];
                If[And[Total[coeffs]<=1,And@@((##>=0)&/@coeffs)],temp=Delete[temp,i];Goto[restart]];
            ]
        ];
    ];
    (Sector*(##+min))&/@temp
]

FindOrdering[Sector_]:=Module[{temp,i,j,k},
    For[i=1,i<=SBasis0L[ProblemNumber],i++,
        tempelement=SBasis0D[ProblemNumber,i];
        temp=MaxDegrees[tempelement,Sector];
        For[j=1,j<=Length[temp],j++,
            If[Not[(SBasis0C[ProblemNumber,i,temp[[j]]]/.AVRules[SPoint[Sector]-temp[[j]]])===0],
                Found=True;
                degrees=(##+SPoint[Sector]-temp[[j]])&/@tempelement;
                For[k=1,k<=Length[degrees],k++,
                    If[And[Not[InSectorOrLower[degrees[[k]],Sector]],
                        Not[SBasisR[ProblemNumber,SSector[degrees[[k]]]]],
                        Not[Expand[(SBasis0C[ProblemNumber,i,tempelement[[k]]]/.AVRules[SPoint[Sector]-temp[[j]]])]===0]],
                        Found=False;Break[]
                    ]
                ];
                If[Found,Return[SomeOrdering[temp,j,Sector]]];
            ];
        ]
    ];
False
]

SomeOrdering[x_,n_,Sector_]:=Module[{temp,i,ordering,left},
    ordering={};
    temp=x;
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,left[i]=True];
    While[Length[temp]>1,
        Found=False;
        For[i=1,i<=ExampleDimension[ProblemNumber],i++,
            If[Not[left[i]],Continue[]];
            max=Max@@((##[[i]]*Sector[[i]])&/@temp);
            If[x[[n]][[i]]*Sector[[i]]==max,
                temp=DeleteCases[(If[##[[i]]*Sector[[i]]===max,##,TTT])&/@temp,TTT];
                left[i]=False;
                AppendTo[ordering,Delta[i]];
                Found=True;
                Break[]
            ]
        ];
        If[Not[Found],Print["No ordering found"];Return[False]];
    ];
    For[i=1,i<=ExampleDimension[ProblemNumber],i++,If[left[i],AppendTo[ordering,Delta[i]]]];
    ordering
]

TryInstant[Sector_]:=Module[{temp},
    temp=FindOrdering[Sector];
    If[temp==False,Print["Failed to find an ordering for ",Sector];Return[]];
    Print["Building a basis for ",Sector," with ",MatrixForm[temp]];
    BuildBasis[Sector,temp];
]

BuildAll[x_]:=Module[{temp,i},
    Info[x];
    temp=(##[[1]])&/@points;
    For[i=1,i<=Length[temp],i++,
        TryInstant[temp[[i]]]
    ];
    Info[x,True];
]




TestSectorZero[sector_] := 
 Module[{dim, temp, here, func, mat, vars, i, startinglist2},
  dim = Max @@ 
    Apply[## &, 
     Union[Cases[startinglist, Y[y_], {0, Infinity}], 
      Cases[startinglist, Ym[y_], {0, Infinity}], 
      Cases[startinglist, a[y_], {0, Infinity}]], {1}];
  	startinglist2 = Map[KillDenominator, startinglist, {1}];
  	If[Head[RegLineShift] === Symbol, RegLineShift = ((4 - d)/2)];
  	If[Head[RegLine] =!= Symbol, 
   startinglist2 = 
    Expand[startinglist2 /. (a[RegLine] -> 
        a[RegLine] + RegLineShift)]];
  temp = 
   Map[((## /. 
           Join[Table[Y[here] -> 1, {here, 1, dim}], 
            Table[Ym[here] -> 1, {here, 1, dim}]])*
         G[(Table[
            Exponent[##, Y[here]] - Exponent[##, Ym[here]], {here, 1, 
             dim}])]) &, ##, {If[Head[##] === Plus, 1, 0]}] & /@ 
    startinglist2;
  temp = 
   temp /. Apply[Rule, 
     Transpose[{Array[a, Length[sector]], SPoint[sector]}], {1}];
  temp = temp /. (G[aaa_] :> G[aaa + SPoint[sector]]);
  ttt = temp;
  vars = Cases[Variables[temp], G[aaa__]];
  (*vars=Select[vars,(SSector[##[[1]]]===SSector[sector])&];*)
  vars = 
   Prepend[DeleteCases[vars, G[SPoint[sector]]], G[SPoint[sector]]];
  mat = Outer[Coefficient, Append[temp, G[SPoint[sector]]], vars];
  Off[LinearSolve::"nosol"];
  rule = LinearSolve[mat, Append[Table[0, {Length[mat] - 1}], 1]];
  On[LinearSolve::"nosol"];
  If[Head[rule] === LinearSolve,
   Return[True]
   ];
  rule = Apply[Rule, Transpose[{vars, rule}], {1}];
  Return[False];
  ]



DefinedFor[x_] := (ReleaseHold[Apply[List, ##[[1]], 1]]) & /@ DownValues[x]

Off[General::spell1];
Off[General::spell];
