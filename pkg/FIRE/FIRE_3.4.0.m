(* ::Package:: *)

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
(*I hate those spell warnings*)

BucketSize=21;
(*Works only with the new QLink version (November 2008)*)
MemoryLimit=Infinity;
(*the limit, when the database usage should be increased, in mb*)
MemoryInfo=100; (*measured in mb*)

If[Not[TrueQ[$VersionNumber>=6.0]],
  Needs["DiscreteMath`Combinatorica`"];
  <<"Developer`";
  MyClearCache[] := Developer`ClearCache[];
,
  Needs["Combinatorica`"];
  MyClearCache[] := ClearSystemCache[];
];



MyPrint:=If[ReductionOutput,Print[##]]&
ReductionOutput=False;
RelationOutput=False;
DatabaseDebug=False;
SubstitutionDebug=False;
(*more spammy if any of those is True*)



If[Not[ValueQ[FactorCoefficients]],
  FactorCoefficients=True;
];


If[Not[ValueQ[PrintIrreducibleIntegrals]],
  PrintIrreducibleIntegrals=True;
];


If[Not[ValueQ[UsingIBP]],
  UsingIBP=True;
];
(*if false it relies almost only on the s-bases.*)

If[Not[ValueQ[DirectIBP]],
  DirectIBP=False;
];


If[Not[ValueQ[UsingAllIBP]],
  UsingAllIBP=False;
];

If[Not[ValueQ[LeeIdeas]],
  LeeIdeas=True;
];

If[Not[ValueQ[EpFinite]],
  EpFinite = False;
];
(*if True, the code won't be deleting by d-4, doesn't really work well*)

If[Not[ValueQ[UsingFermat]],
  UsingFermat = False;
];
(*use the Fermat program for external evaluation instead of doing Together*)
If[Not[ValueQ[FLinkPath]],
    FLinkPath="/users/guest/asmirnov/FLink/FLink64";
];
(*path to FLink*)
If[Not[ValueQ[FermatPath]],
    FermatPath="/users/guest/asmirnov/fermat/ferl";
];
(*path to Fermat*)

If[Not[ValueQ[DatabaseUsage]],
  DatabaseUsage=0;
];

(*0 - none, 1 - coeffs, 2 - long numbers, 3 - short numbers, 4 - tables*)
If[Not[ValueQ[QLinkPath]],
    QLinkPath="/users/guest/asmirnov/QLink/QLink64";
];
(*path to QLink program that accesses QDBM*)
If[Not[ValueQ[DataPath]],
    DataPath="/formswap/asmirnov/temp";
];
DataPathC:=DataPath<>"C/";
DataPathIN:=DataPath<>"IN/";
DataPathII:=DataPath<>"II/";
DataPathNN:=DataPath<>"NN/";
DataPathD:=DataPath<>"D/";

MyToString[x_]:=If[UsingFermat,ToLowerCase[ToString[x]],ToString[x]];
MyToString[x_,y_]:=If[UsingFermat,ToLowerCase[ToString[x,y]],ToString[x,y]];
(*fermat does not support higher-case variables*)
MyTimeUsed[]:=AbsoluteTime[];
(*should use AbsoluteTime, since the database access is not measured by Timing*)

Cleanup[] := (
  If[UsingFermat,
    FClose[];
  ];
  If[DatabaseUsage > 0,
    DataConnectionClose[];
  ];
  UserCleanup[];
);


(*produces the list of variables from the bases, the start and rules;
it has to be submitted to Fermat*)
VarList[]:=Module[{temp},x=Table[0,{100}];StringDrop[
  ToLowerCase[StringJoin @@ ((ToString[##] <> ",") & /@
        Select[DeleteCases[
            DeleteCases[
              Union[
                Flatten[Variables[SBasis0C @@ ##] & /@ DefinedFor[SBasis0C]],
                Flatten[Variables[SBasisC @@ ##] & /@ DefinedFor[SBasisC]],
                If[Head[VariablesFromRules]===Symbol,{},VariablesFromRules]
      (*          Flatten[Variables[##] & /@Flatten[
                      ReleaseHold[Extract[((RULES @@ ##)), 2, Hold] & /@ DefinedFor[RULES] /. If[x_, y_, z_] -> {y, z}]]]*)
              ],G[x__]], a[x_]], (Head[##] === Symbol) &])], -1]
]

StartFermat[]:=Module[{temp}, (*starts the fermat program*)
    If[ToString[fermat]==="fermat",
        fermat=Install[FLinkPath];
        FInit[FermatPath,VarList[]]
    ]
]

CodeInfo[]:=Module[{temp}, (*just some usefull output*)
    Print["FIRE, version 3.4.0"];
    Print["UsingIBP: ",UsingIBP];
(*    Print["TargetSpeed: ",TargetSpeed];*)
    Print["DatabaseUsage: ",DatabaseUsage];
    If[DatabaseUsage>0,
        Print["Path to QLink: ",QLinkPath];
        Print["Path to data: ",DataPath];
    ];
    Print["UsingFermat: ",UsingFermat];
    If[UsingFermat,
        Print["Path to FLink: ",FLinkPath];
        Print["Path to Fermat: ",FermatPath];
    ];
    Print["LeeIdeas: ",LeeIdeas];
]

CodeInfo[] (*and we run it when loading the code*)


DataConnectionClose[] := Module[{temp},  (*closes the database*)
    QClose[DataPathC];
    If[DatabaseUsage>1,
        QClose[DataPathIN];
    ];
    If[DatabaseUsage>2,
        QClose[DataPathII];
        QClose[DataPathNN];
    ];
    If[DatabaseUsage>3,
        QClose[DataPathD];
    ];
    LinkClose[QLink];
    Clear[QLink];
]


RemoveDatabase[x_]:=Module[{temp},
    temp=StringReplace[StringReplace[x<>"//",{"///"->""}],{"//"->""}];
    If[ToString[FileType[temp]] === "File",
        DeleteFile[temp],
        If[ToString[FileType[temp]] === "Directory",
            DeleteDirectory[temp,DeleteContents->True]
        ]
    ]
]

DataConnectionInitialize[]:=Module[{temp}, (*opens the database and starts Fermat if needed*)
    If[UsingFermat,StartFermat[]];
    If[And[DatabaseUsage===0,MemoryLimit===Infinity],Return[True]];
    If[Head[QLink]===Symbol,
        Check[
            QLink=Install[QLinkPath],
            ErrorPrint["Failed to run the link"];
            Return[False];
        ];
        RemoveDatabase[DataPathC];
        RemoveDatabase[DataPathII];
        RemoveDatabase[DataPathNN];
        RemoveDatabase[DataPathIN];
        RemoveDatabase[DataPathD];        
        If[QSetBucketSize[BucketSize],
            Print["You are using the new version of QLink, that's nice!"];
            Print["Bucket size set to 2^",BucketSize];
            If[DatabaseUsage>0,
                Print["QLink will use ",Round[(If[DatabaseUsage<=2,DatabaseUsage,DatabaseUsage+1]*8*(2^BucketSize))/(2^20)]," MB of RAM"];
            ];
        ];
        If[DatabaseUsage===0,Return[True]]; 
        If[Not[QOpen[DataPathC]],
            ErrorPrint["Failed to open the database"];
            Return[False]
        ];
        If[DatabaseUsage===1,Return[True]];        
        If[Not[QOpen[DataPathIN]],
            ErrorPrint["Failed to open the database"];
            Return[False]
        ];        
        If[DatabaseUsage===2,Return[True]];        
        If[Not[QOpen[DataPathII]],
            ErrorPrint["Failed to open the database"];
            Return[False]
        ];
        If[Not[QOpen[DataPathNN]],
            ErrorPrint["Failed to open the database"];
            Return[False]
        ];
        If[DatabaseUsage===3,Return[True]];        
        RemoveDatabase[DataPathD];
        If[Not[QOpen[DataPathD]],
            ErrorPrint["Failed to open the database"];
            Return[False]
        ];
    ];

    Return[True];
]

SetDatabaseUsage[NewDatabaseUsage_]:=Module[{temp},
    If[NewDatabaseUsage===DatabaseUsage,Print["No change"];Return[False]];
    If[NewDatabaseUsage<DatabaseUsage,ErrorPrint["Cannot decrease database usage"];Return[False]];
    If[NewDatabaseUsage>DatabaseUsage,Print["Increasing database usage: ",AbsoluteTiming[
        If[Head[QLink]===Symbol,
            Check[
                QLink=Install[QLinkPath],
                ErrorPrint["Failed to run the link"];
                Return[False];
            ];
            If[QSetBucketSize[BucketSize],
                Print["You are using the new version of QLink, that's nice!"];
                Print["Bucket size set to 2^",BucketSize];
            ];            
        ];      
        If[And[DatabaseUsage===0,DatabaseUsage<NewDatabaseUsage],
            If[Not[QOpen[DataPathC]],
                ErrorPrint["Failed to open the database"];
                Return[False]
            ];
            temp=DefinedFor[TableC];
            QPut[DataPathC,MyToString[##[[1]]],MyToString[TableC[##[[1]]],InputForm]]&/@temp;
            Clear[TableC];
            DatabaseUsage++;
        ]; 
        If[And[DatabaseUsage===1,DatabaseUsage<NewDatabaseUsage],
            If[Not[QOpen[DataPathIN]],
                ErrorPrint["Failed to open the database"];
                Return[False]
            ];
            temp=DefinedFor[IntegralNumber];
            QPut[DataPathIN,MyToString[##[[1]]],MyToString[IntegralNumber[##[[1]]],InputForm]]&/@temp;
            Clear[IntegralNumber];
            DatabaseUsage++;
        ];    
        If[And[DatabaseUsage===2,DatabaseUsage<NewDatabaseUsage],
            If[Not[QOpen[DataPathII]],
                ErrorPrint["Failed to open the database"];
                Return[False]
            ];
            temp=DefinedFor[II];
            QPut[DataPathII,ToString[##[[1]]],II[##[[1]]]]&/@temp;
            Clear[II];
            If[Not[QOpen[DataPathNN]],
                ErrorPrint["Failed to open the database"];
                Return[False]
            ];
            temp=DefinedFor[NN];
            QPut[DataPathNN,##[[1]],ToString[NN[##[[1]]]]]&/@temp;
            Clear[NN];
            DatabaseUsage++;
        ];    
        If[And[DatabaseUsage===3,DatabaseUsage<NewDatabaseUsage],
            If[Not[QOpen[DataPathD]],
                ErrorPrint["Failed to open the database"];
                Return[False]
            ];
            temp=DefinedFor[TableD];
            QPut[DataPathD,MyToString[##[[1]]],MyToString[TableD[##[[1]]],InputForm]]&/@temp;
            Clear[TableD];
            DatabaseUsage++;
        ];    
    ][[1]]," seconds"]];
    Return[True];
]



MemoryTest[]:=Module[{temp},
If[Head[LastMemoryInfo]===Symbol,LastMemoryInfo=MemoryInfo*1000000];
    While[LastMemoryInfo<MemoryInUse[],
        MessagePrint["MEMORY INFORMATION: ",LastMemoryInfo/1000000," MEGABYTES REACHED"];
        LastMemoryInfo=LastMemoryInfo+MemoryInfo*1000000;
    ];
    While[And[MemoryInUse[]>=MemoryLimit*1000000,DatabaseUsage<4],
        temp=SetDatabaseUsage[DatabaseUsage+1];
        MyClearCache[];    
        If[temp,
            MessagePrint["DatabaseUsage increased to ",DatabaseUsage];
            If[MemoryInUse[]>=1000000,
                MessagePrint["MEMORY INFORMATION: ",Floor[MemoryInUse[]/1000000]," MEGABYTES USED"];
            ];
            LastMemoryInfo=(Floor[MemoryInUse[]/(1000000*MemoryInfo)]+1)*1000000*MemoryInfo;            
        ,
            ErrorPrint["FAILED TO INCREASE DATABASE USAGE, MEMORY LIMIT SET TO INFINITY"];
            MemoryLimit=Infinity;
        ]
    ];
]


InitializeValues[]:=Module[{temp}, (*sets some initial values*)
    If[Not[TrueQ[Burning]],ErrorPrint["FIRE not ready. Run the Burn[] command"];Abort[]];
    If[Head[hp]===Symbol,hp=0];
    If[Head[hc]===Symbol,hc=0];
(*    tc=0;sc=0;st=0;mbl=0;sss=0;sss1=0;sss2=0;sss3=0;sss4=0;sss12=0;sss11=0;*)
    If[Head[NegativeNumber]===Symbol,NegativeNumber=0];
    If[Head[TotalNumber]===Symbol,TotalNumber=1];
    If[Head[SBasisM[0]]==SBasisM,SBasisM[0]={}];
    totaltimecounter=MyTimeUsed[];
    If[Not[DataConnectionInitialize[]],Abort[]];
]

CheckInput[n_,x_]:=Module[{temp}, (*checks if you have requested
            for an itegral of an existing problem number and
            proper dimension*)
    If[Head[ExampleDimension[n]]===ExampleDimension, ErrorPrint["Load the start file first"]; Abort[]];
    If[Not[Length[x]===ExampleDimension[n]],ErrorPrint["Wrong dimension"];Abort[]];
    If[Or[x[[##]]>1,x[[##]]<0],ErrorPrint["Heavy point index can be either 0 or 1"];Abort[]]&/@HPI[n];
]



(*--------------------------------------------------------------------*)
(*Some technical functions, look for those when needed only, just look further now*)

AVRulesD[x_]:=Dispatch[Table[a[here]->x[[here]],{here,1,Length[x]}]]
Delta[j_,size_]:=Delta[j,size]=Table[If[j===here,1,0],{here,1,size}]
notzero[x_] := Not[(x === 0)]
DefinedFor[x_] := (ReleaseHold[Apply[List, ##[[1]], 1]]) & /@ DownValues[x]
Degree2Point[x_, y_] := x*y + (If[##===1,1,0]&/@y)
FirstParts[x_]:=(##[[1]])&/@x;
subs[x_] := (## - x[[1]]) & /@ x

ProportionalCoeff[x_, y_] := Module[{i},
If[x==Table[0,{Length[x]}],Return[0]];
    i = First[First[Position[y, First[Select[y, notzero]]]]];
(x[[i]]/y[[i]])
]

MultiMore[pn_,x_, y_]:=Module[{xx,yy},
    If[And[SBasisRL[pn]>0,y[[SBasisRL[pn]]]===1]===True,
        xx=Delete[x,SBasisRL[pn]];
        yy=Delete[y,SBasisRL[pn]]
        ,
        xx=x;
        yy=y
    ];
    Return[And@@((##>=0)&/@(xx-yy))];
]


UseSymmetry[x_, y_] := Module[{result},
    
        result=Table[y[[x[[here]]]], {here, 1, Length[x]}];
    
    result
]
SatisfiesCondition[x_,y_]:=Module[{result},
    
    result=And@@Table[If[y[[ii]]===0,True,If[y[[ii]]>0,x[[ii]]>0,x[[ii]]<=0]],{ii,Length[x]}];
    
    result
    ]
    

DoubleOrbit[xx_] := Module[{result},
        result=If[SatisfiesCondition[xx[[2]],##[[3]]],
                    {{xx[[1]],UseSymmetry[##[[1]],xx[[2]]]},##[[2]]},
                    {xx,Table[1,{Length[xx[[2]]]}]}
                ]&/@SBasisS[xx[[1]]];
        (*result={ObtainNN[##[[1]]],##[[2]]}&/@result;*)
(*        result=Union[result];*)
        result
]
NOrbit[x_] := Union[ObtainNN[
                    If[SatisfiesCondition[GetII[x][[2]],##[[3]]],
                        {GetII[x][[1]],UseSymmetry[##[[1]],GetII[x][[2]]]},
                        GetII[x]
                        ]]&/@SBasisS[GetII[x][[1]]]]

NewSPoint[pn_,x_] := Module[{temp},
    temp = (If[##>=1,1,0])&/@x;
If[SBasisRL[pn]>0,Return[ReplacePart[temp,1,SBasisRL[pn]]]];
    temp
]

Info[]:=Print["New relations: ",stepcounter," , for substitution: ", tosubstitute,", integrals considered: ",calculated,", encountered: ", needed]

Answer[x_,PrintNumberQ_]:=Module[{temp}, (*prints the output. the only place,
                where the Factor function is used, just to make answers look pretty*)
    Done[x]=True;
    temp=GetTableD[x];
    If[temp==={},Return[0]];
    If[Or[temp==={x},Head[temp]===TableD],temp=G@@Evaluate[GetII[x]],
        temp=Plus@@((If[FactorCoefficients,Factor[ToExpression[##[[2]]]],ToExpression[##[[2]]]]*G@@Evaluate[GetII[Sequence@@(##[[1]])]])&/@GetTableC[x]);
    ];
    If[PrintNumberQ,temp=temp,temp=temp/.(G[y_,z_]:>G[z])];
    temp
]


(*end of technical functions*)
(*--------------------------------------------------------------------*)



(*-------------------------------------------------------------------------*)
(*This part is on the usage of tables*)
(*an integral is denoted by a pair {pn,x}, where pn is a number of
a problem and x is a list of indices with the corresponding length.
NN[pair] gives a unique number coresponding to the pair
II[pair] is inverse
However, negative nubmers do not correspond to real intgrals but
are used for tail masking. II[negative number] returns some pair,
and its value is used in the code to know the substitution priority
TableD[n] gives a list of integrals n is represented by (a proper expression)
TableC[n] also has coeffictions but if the database is used, it is not in memory
TableIBP[n] keeps in memory if the IBP's for this point have been constructed
*)


GetNN[x_]:=Module[{temp},
    If[DatabaseUsage>=3,
        temp=QSafeGet[DataPathNN,x];
        If[temp===False,
            Return[NN[x]],
            Return[ToExpression[temp]]
        ],
        Return[NN[x]];
    ]
]


SetNN[x_,y_]:=Module[{temp},
   If[DatabaseUsage>=3,
        QPut[DataPathNN,x,ToString[y]]
        ,
        NN[x]=y;
    ]
]

ObtainNN[x_]:=Module[{s,temp}, (*gets a new number for a pair if needed*)
    s=ToString[x,InputForm];
    temp=GetNN[s];
    If[Head[temp]===NN,
        While[Not[Head[GetII[TotalNumber]]===II],TotalNumber++];
        SetNN[s,TotalNumber];
        SetII[TotalNumber,s];
        SetIntegralNumber[TotalNumber,ToExpression[PairNumber[x]<>"9"<>ZerosString[8]]];
        Return[TotalNumber]
        ,
        Return[temp]
    ]
]

SetII[x_,y_]:=Module[{temp},
    If[DatabaseUsage>=3,
        QPut[DataPathII,ToString[x],y]
        ,
        II[x]=y
    ]
]


GetII[x_]:=Module[{temp},
    If[DatabaseUsage>=3,
        temp=QSafeGet[DataPathII,ToString[x]];
        If[temp===False,
            Return[II[x]],
            Return[ToExpression[temp]]
        ],
        If[Head[II[x]]===II,
            Return[II[x]],
            Return[ToExpression[II[x]]]
        ]
    ]
]


ClearTables[]:=Module[{temp}, (*how did you guess? it clears the tables!*)
    Clear[TableD,TableC,TableIBP,TotalNumber,II,NN,NegativeNumber,TablesLoaded,UsedIBP,UsedIBPs,EL,ELMet,ELLength,ELcounter];
    Clear[INTERNALERROR,Done];
    TotalNumber=1;
    If[And[DatabaseUsage>0,Not[Head[QLink]===Symbol]],
        QClose[DataPathC];
        RemoveDatabase[DataPathC];
        QOpen[DataPathC];
        If[DatabaseUsage>1,
            QClose[DataPathIN];
            RemoveDatabase[DataPathIN];
            QOpen[DataPathIN];
            If[DatabaseUsage>2,
                QClose[DataPathII];                        
                QClose[DataPathNN];
                RemoveDatabase[DataPathII];
                RemoveDatabase[DataPathNN];
                QOpen[DataPathII];
                QOpen[DataPathNN];
                If[DatabaseUsage>3,
                    QClose[DataPathD];        
                    RemoveDatabase[DataPathD];        
                    QOpen[DataPathD];
                ]
            ]
        ]
    ];
]

SetTableD[x_,y_]:=If[DatabaseUsage>=4, (*stores TableC either in memory or in the database*)
        QPut[DataPathD,MyToString[x],MyToString[y,InputForm]]
        ,
        TableD[x]=y
    ];


SetTableC[x_,y_]:=If[DatabaseUsage>=1, (*stores TableC either in memory or in the database*)
        QPut[DataPathC,MyToString[x],MyToString[y,InputForm]]
        ,
        TableC[x]=y
    ];

ClearTableD[x_]:=If[DatabaseUsage>=1, (*removes TableC either from memory or from the database*)
        QRemove[DataPathD,MyToString[x]]
        ,
        TableD[x]=.
    ];

GetDefinedTableD[]:=If[DatabaseUsage>=4,
    {ToExpression[##]}&/@QList[DataPathD]
    ,
    DefinedFor[TableD]
]


ClearTableC[x_]:=If[DatabaseUsage>=1, (*removes TableC either from memory or from the database*)
        QRemove[DataPathC,MyToString[x]]
        ,
        TableC[x]=.
    ];

ClearTable[x_]:=Module[{temp,n},
    If[ELMet[x],ELMet[x]=.];
    temp=GetTableD[x];
    If[Not[temp==={}],
        If[DatabaseUsage>=1,
            QRemove[DataPathC,MyToString[x]]
            ,
            TableC[x]=.
        ];
    ];
    If[DatabaseUsage>=2,
        QRemove[DataPathIN,MyToString[x]]
        ,
        IntegralNumber[x]=.
    ];
    temp=GetII[x];
    If[DatabaseUsage>=3,
        If[x>0,
            QRemove[DataPathNN,MyToString[temp]];
        ];
        QRemove[DataPathII,MyToString[x]];
        ,
        If[x>0,
            NN[MyToString[temp]]=.
        ];
        II[x]=.
    ];
    If[DatabaseUsage>=4,
        QRemove[DataPathD,MyToString[x]]
        ,
        TableD[x]=.
    ];
]

GetTableD[x_]:=Module[{temp}, (*inverse to SetTableC*)
    If[DatabaseUsage>=4,
        temp=ToExpression[QSafeGet[DataPathD,MyToString[x]]];
        If[temp===False,temp=TableD[x]];
        ,
        temp=TableD[x]
    ];
    temp    
]

GetTableC[x_]:=Module[{temp}, (*inverse to SetTableC*)
    temp=GetTableD[x];
    If[Or[Head[temp]===TableD,temp==={x}],Return[{{x,"1"}}]];
    If[temp==={},Return[{}]];
    If[DatabaseUsage>=1,
        Return[ToExpression[QGet[DataPathC,MyToString[x]]]],
        Return[TableC[x]]
    ]
]

SetIntegralNumber[x_,y_]:=If[DatabaseUsage>=2,
        QPut[DataPathIN,MyToString[x],MyToString[y,InputForm]]
        ,
        IntegralNumber[x]=y
    ];


GetIntegralNumber[x_]:=Module[{temp},
    If[DatabaseUsage>=2,
        Return[ToExpression[QGet[DataPathIN,MyToString[x]]]],
        Return[IntegralNumber[x]]
    ]
]





MakeTable[y_,zz_]:=Module[{i}, (*called to fill TableD and TableC from a temporary storage*)
z=zz;
    If[And[Length[z]>0,HigherNumber[HighestNumber[z],y]],ErrorPrint[II[y]];ErrorPrint[II/@z];Abort[]];
MemoryTest[];
(*Print[GetII[y]];
Print[GetII/@z];
Print[Coeff/@z];*)
(*
(Coeff[##]=If[((Plus@@(GetII[y][[2]]))-(Plus@@(GetII[##][[2]]))+Exponent[Cancel[ToExpression[Coeff[##]]],mm])===0,Coeff[##],ToString[0]])&/@z;
z=Delete[z,Position[Coeff/@z,"0"]];
If[Not[Length[z]===Length[zz]],Print["!"]];*)
    SetTableD[y,z];
    SetTableC[y,{##,Coeff[##]}&/@z];
]

MakeTable2[y_,z_]:=Module[{i,zn,zp}, (*a complicated version of
                            MakeTable that also performs
                            tail-masking*)
                            
    If[And[Length[z]>0,HigherNumber[HighestNumber[z],y]],ErrorPrint[II[y]];ErrorPrint[II/@z];Abort[]];
MemoryTest[];
    zn=Select[z,(Not[SameSector[##,y]]) &];
    If[Length[zn]>0,
        NegativeNumber++;
        SetTableD[-NegativeNumber,zn];
        SetTableC[-NegativeNumber,{##,Coeff[##]}&/@zn];
        zp=Complement[z,zn];
        SetTableD[y,Append[zp,-NegativeNumber]];
        SetTableC[y,Append[{##,Coeff[##]}&/@zp,{-NegativeNumber,"1"}]];
        SetII[-NegativeNumber,ToString[{GetII[y][[1]],NewSPoint[GetII[y][[1]],GetII[y][[2]]]},InputForm]];
        SetIntegralNumber[-NegativeNumber,ToExpression[SavedPairNumber[{pn,NewSPoint[GetII[y][[1]],GetII[y][[2]]]}]<>ToDigits[NegativeNumber,9]]];
    ,
        zp=z;
        SetTableD[y,zp];
        SetTableC[y,{##,Coeff[##]}&/@zp];
    ];
]


MakeZeroTable[y_]:=Module[{i}, (*for integrals equal to zero*)
    SetTableD[y,{}];
]


MakeIrreducible[y_]:=Module[{temp}, (*after this call the integral is treated completely irreducible*)
    If[PrintIrreducibleIntegrals, MessagePrint["IRREDUCIBLE INTEGRAL: ", GetII[y]]];
    SetTableD[y,{y}];
    SetTableC[y,{{y,"1"}}];
]

IrreducibleIntegrals[]:=Select[Flatten[GetDefinedTableD[]],(GetTableD[##]==={##})&];
(*lists all irreducible integrals (numbers)*)


(*Table usage part over*)
(*------------------------------------------------------------------------*)
(*and now everything on saving and loading tables
The syntax for saving tables is
SaveTables[File(obligatory),IntegalList(non-obligatory),SaveSymmetric(non-obligatory)]
The file parameter points at a file, the integral list can be
missing, in this case all tables are saved. This option is not recomended
and can result in memory overrflow, and in real problems you will
need only thousands of values, while there can be millions and
more stored in tables.
The SaveSymmetric option is assumed to be False, but if it is
True, the tables for symmetric integrals are also saved.
Might be usefull and save time if you did a long computation of integrals, that
are not minimal in there symmetry orbits, and might need
the symmetrical integrals later.

The syntax for loading tables is either LoadTables[File] or
LoadTables[FileList]. Please keep in mind that you cannot run this
command twice without quitting the kernel, or do a calculation and
then load some tables. This is done for the reason that same
integrals might have different numbers in different calculations
and it is not easy to combine them together. Hoewver, the
LoadTables[FileList] syntax gives you all the functionality you
need. For example, if you have done an evaluation and now want to
load some tables, you can first save what you have in memory now,
quit the kernel, then load the tables together.
*)

SaveTables[file_,temp_]:=SaveTables[file,temp,False]
(*
SaveTables[file_]:=SaveTables[file,ToExpression/@If[DatabaseUsage>=3,QList[DataPathNN],Flatten[DefinedFor[NN],1]],False];
*)
SaveTables[file_,temp_,SaveSymmetric_] := Module[{y,tt},
    y=ObtainNN/@temp;
(*    If[SaveSymmetric,y=Union@@({##,(tt=LowestNumber[NOrbit[##]];If[GetTableD[##]==={},SetTableD[tt,{}]];tt)}&/@y)];*)
    y=Union[y,IrreducibleIntegrals[]];
    tt=Union[Flatten[GetTableD/@y]];
    tt=Select[tt,(Head[GetTableD[##]]===TableD)&];
    If[Length[tt]>0,
        ErrorPrint["TABLES SAVED INCORRECTLY"];
        ErrorPrint["No tables for points ",If[##<0,##,GetII[##]]&/@tt];
    ];
    CTables={##,GetTableC[##]}&/@y;
    NITables={##,GetII[##]}&/@y;
    Put[{CTables,NITables},file];
    Clear[CTables,NITables]
]

DeNumerate2[x_]:={II[##[[1]]],##[[2]]}&/@x;

DeNumerate[]:=Module[{temp},
    temp = {II[##[[1]]], ToString[##[[2]],InputForm]} & /@ NITables;
    Apply[Set, temp, {1}];
    CTables={II[##[[1]]],DeNumerate2[##[[2]]]}&/@CTables;
    Clear[II,NITables];
]

Enumerate2[x_]:={ObtainNN[ToExpression[##[[1]]]],##[[2]]}&/@x;

Enumerate[]:=Module[{temp},
    temp=Union[(##[[1]])&/@CTables,(##[[1]])&/@(Join@@((##[[2]])&/@CTables))];
    NITables=Transpose[{Range[Length[temp]],temp}];
(*    NITables= {##[[1]],##[[2]]}& /@ NITables;*)

    ProblemNumbers=Union[ToExpression[##[[2]]][[1]]&/@NITables];
    If[Not[Complement[ProblemNumbers,AllProblems[]]==={}],
        ErrorPrint["Tables cannot be loaded."];
        ErrorPrint["Probably you have not loaded all sbases or start files."];
        ErrorPrint["The following problems are missing: ",Complement[ProblemNumbers,AllProblems[]]];
        Abort[]
    ];

    temp = Hold[SetII[##[[1]], ##[[2]]]] & /@ NITables;
    Apply[List, temp, {1}];
    temp = Hold[SetNN[##[[2]], ##[[1]]]] & /@ NITables;
    Apply[List, temp, {1}];
    temp = Hold[SetIntegralNumber[##[[1]],ToExpression[PairNumber[ToExpression[##[[2]]]]<>"9"<>ZerosString[8]]]]& /@ NITables;
    Apply[List, temp, {1}];
(*    temp = {##[[1]]}&/@ NITables;
    Apply[ToMemory, temp, {1}];*)
    TotalNumber=Length[temp]+1;
    CTables={ObtainNN[ToExpression[##[[1]]]],Enumerate2[##[[2]]]}&/@CTables;
]



LoadTables[FileList_List]:=Module[{temp,i},
    If[TablesLoaded,ErrorPrint["Tables already loaded. If you want to load tables from multiple files, use the LoadTables[{file_1,...file_n}] command."]; Return[]];
    If[TotalNumber>1,ErrorPrint["Tables can be loaded only before calculations"];Return[]];
    InitializeValues[];
    CTables=Flatten[Reap[
        (Clear[NITables,CTables];
         Check[
            {CTables,NITables}=Get[##],
            ErrorPrint["File not found"]; Abort[],
            Get::"noopen"
         ];
         DeNumerate[];
         Sow[CTables];
        )&/@FileList;
    ][[2]][[1]],1];
    Enumerate[];
    temp = Hold[##[[1]],##[[2]]]&/@CTables;
    Apply[SetTableC, temp, {1}];
    CTables={##[[1]],FirstParts[##[[2]]]}&/@CTables;
    temp = Hold[##[[1]],##[[2]]]&/@CTables;
    Apply[SetTableD, temp, {1}];
    temp = {Done[##[[1]]],True}&/@CTables;
    Apply[Set, temp, {1}];
    Clear[NITables,CTables];
    TablesLoaded=True;
]

LoadTables[file_String]:=LoadTables[{file}];


(*-------------------------------------------------------------------------*)







(*-------------------------------------------------------------------------*)
(*Sectors, indices, degrees and regions
A sector is denoted by its direction - a set of 1 and -1s.
There is some special treatement of regularized lines here,
because making such an index negative does not move you to a new
sector.
A region is a set of sectors, denoted by a set of 1, 0 and -1s
(the indices corresponding to zeros can be abritrary)
The regions are used if there are s-bases build for regions
or if you want to write rules corresponding to multiple sectors
They are stored in SBasisM[pn].
*)


SSector[pn_,x_] := Module[{temp},
    temp = (If[##>=1,1,-1])&/@x;
If[SBasisRL[pn]>0,Return[ReplacePart[temp,1,SBasisRL[pn]]]];
    temp
]   (*input - a point, output - a direction *)



SPoint[x_] := Module[{temp}, (*the corner point of a sector*)
    temp = Map[(If[## >= 1, 1, 0]) &, x, {1}];
    temp
]   (*input - a point, output - a starting point *)

Pair2Degree[x_]:=Module[{temp}, (*returns the degree of a point*)
    temp=If[##>=1,##-1,-##]&/@(x[[2]]);
    If[SBasisRL[x[[1]]]>0,Return[ReplacePart[temp,x[[2]][[SBasisRL[x[[1]]]]]-1,SBasisRL[x[[1]]]]]];
    temp
]

MaxRegion[pn_,x_]:=MaxRegion[pn,x]=
        Module[{result,i,temp},(*returns the maximum region in which the sector is contained*)
    Return[Max@@Reap[Sow[0];
        For[i=1,i<=Length[SBasisM[pn]],i++,
            If[And@@((##==0)&/@Evaluate[(x-SBasisM[pn][[i]])*SBasisM[pn][[i]]]),Sow[i]];
        ];
    ][[2]][[1]]];
]


SameSector[x_,y_]:=Module[{xx,yy}, (*answers if two points are in
        the same sector; the negative numbers that do not correspond to
        real integrals do not lie in any sector*)
    If[x<0,Return[False]];
    If[y<0,Return[False]];
    xx=GetII[x];
    yy=GetII[y];
    If[xx[[1]]===yy[[1]],pn=xx[[1]];SSector[pn,xx[[2]]]===SSector[pn,yy[[2]]],False]
]


(*end of sectors, degrees and regions*)
(*-------------------------------------------------------------------------*)


(*reverse homogeneous ordering*)
RHO[n_Integer]:=RHO[n]=Table[If[ii<=jj,1,0],{ii,1,n},{jj,1,n}]

HOR[n_Integer]:=HOR[n]=Table[If[ii+jj==n+1,1,0],{ii,1,n},{jj,1,n}]

PutAtPositions[x_, y_, n_] := (*technical*)
  Normal[SparseArray[Apply[Rule, Transpose[{x, y}], {1}], {n}]]

(*two blocks of reverse homogeneous plus the regularized line on the very bottom*)
R2HO[last_,xx_, n_] := Module[{temp1, temp2,temp3,x},
    x=Complement[xx,{last}];
    temp1 = RHO[Length[x]];
    temp1 = (PutAtPositions[x, ##, n]) & /@ temp1;
    temp2 = RHO[n - Length[xx]];
    temp2 = (PutAtPositions[Complement[Range[n], xx], ##, n]) & /@ temp2;
    If[last>0,temp3={Delta[last,n]},temp3={}];
    Join[temp1, temp2,temp3]
    ]
    
R3HO[last_,xx_, n_] := Module[{temp1, temp2,temp3,temp4,temp5,x,y},
    x=Complement[xx,{last}];
    y=Complement[Range[n],{last}];
  (*  If[Length[x]<Length[y],*)
        temp1 = RHO[Length[y]];
        temp1 = {((PutAtPositions[y, ##, n]) & /@ temp1)[[1]]};
  (*  ,
        temp1 = {}
    ];*)
   (* If[Length[x]>0,
        temp2 = RHO[n - Length[xx]];
        temp2 = {((PutAtPositions[Complement[Range[n], xx], ##, n]) & /@ temp2)[[1]]};
    ,
        temp2 = {}
    ];*)
    If[Length[x]>0,
        temp3 = RHO[Length[x]];
        temp3 = (PutAtPositions[x, ##, n]) & /@ temp3;
        If[Length[x]==Length[y],temp3=Drop[temp3,1]]
    ,
        temp3 = {}
    ];
    If[Length[x]<Length[y],    
        temp4 = RHO[Length[y] - Length[x]];
        temp4 = Drop[(PutAtPositions[Complement[y, x], ##, n]) & /@ temp4,1];
    ,
        temp4 = {}
    ];    
    If[last>0,temp5={Delta[last,n]},temp5={}];
    Join[temp1, temp3,temp4,temp5]
]    
    

(*the orderings have been described*)
(*-----------------------------------------------------------------------*)
(*Now we come to comparing integrals*)


(*the main comparing function. Indeed, the center of everything.
compares two pairs (problem number,set of indices
should be commented inside
*)
HigherPair[xx_,yy_]:=Module[{temp,xs,ys,i,xd,yd,x,y,pn,totaltemp},
        (*comparing problem numbers first*)
    If[xx[[1]]<yy[[1]],Return[True]];
    If[xx[[1]]>yy[[1]],Return[False]];
    pn=xx[[1]];
    x=xx[[2]];
    y=yy[[2]];
    If[x==y,Return[True]];
        (*finding sectors*)
    xs=SSector[pn,x];
    ys=SSector[pn,y];
        (*boundary conditions - zero intergrals are surely low*)
    If[And[SBasisR[pn,xs]==False,SBasisR[pn,ys]==True],Return[True]];
    If[And[SBasisR[pn,xs]==True,SBasisR[pn,ys]==False],Return[False]];
        (*finding the maximum regions*)
    xr=MaxRegion[pn,xs];
    yr=MaxRegion[pn,ys];
        (*we assume that the reduction does not go from regions
        with smaller numbers to regions with bigger ones;
        thus comparing region numbers*)
    If[xr<yr,Return[True]];
    If[xr>yr,Return[False]];
        (*if it is a region without a basis we will do normal comparing inside*)
    If[And[xr>0,Or[SBasisL[pn,SBasisM[pn][[xr]]]===0,Head[SBasisL[pn,SBasisM[pn][[xr]]]]===SBasisL]],
        xr=yr=0;
    ];
        (*for points in regions we will consider regions instead of sectors*)
    xsn=If[xr===0,xs,SBasisM[pn][[xr]]];
    ysn=If[yr===0,ys,SBasisM[pn][[yr]]];
    If[xsn===ysn, (*if they are in the same region*)
            (*finding degrees of points*)
        xd=Pair2Degree[{pn,x}];
        yd=Pair2Degree[{pn,y}];
            (*the degrees in sense of regions, others are parameters*)
       xdn=Table[If[xsn[[here]]===0,0,xd[[here]]],{here,1,Length[x]}];
       ydn=Table[If[ysn[[here]]===0,0,yd[[here]]],{here,1,Length[x]}];
            (*if there is no ordering defined yet, we set one*)
        If[Head[SBasisO[pn,xsn]]===SBasisO,SBasisO[pn,xsn]=R3HO[SBasisRL[pn],Flatten[Position[xsn,1]],Length[xsn]]];
        ordering=If[Head[SBasisO[pn,xsn]]===SBasisO,RHO[Length[x]],SBasisO[pn,xsn]];
            (*comparing those degrees; if we are in real sectors,
            not regions, comparing will stop here*)
        For[i=1,i<=Length[x],i++,
            temp=Total[(xdn-ydn)*ordering[[i]]];
                (*a little more complicated comparing in case of
                regularized lines - that line stands at the end of
                the ordering, but the value can be both positive
                and negative. For hystorical reasons, the positive
                one are considered to be lower*)
            If[And[SBasisRL[pn]>0,i==Length[x]],
                If[And[xdn[[SBasisRL[pn]]]<0,ydn[[SBasisRL[pn]]]>=0],Return[True]];
                If[And[xdn[[SBasisRL[pn]]]>=0,ydn[[SBasisRL[pn]]]<0],Return[False]];
                If[And[xdn[[SBasisRL[pn]]]<0,ydn[[SBasisRL[pn]]]<0],Return[xdn[[SBasisRL[pn]]]<=ydn[[SBasisRL[pn]]]]];
                If[And[xdn[[SBasisRL[pn]]]>=0,ydn[[SBasisRL[pn]]]>=0],Return[xdn[[SBasisRL[pn]]]>=ydn[[SBasisRL[pn]]]]];
            ];
            If[temp<0,Return[False]];
            If[temp>0,Return[True]];
        ];
        rho=HOR[Length[x]];
            (*ok now, if the degrees in terms of regions are the same,
            then we get to compare what remains - the indices that
            are 0 in the region definition can be abritrary now;
            first we compare the sectors of points*)
        For[i=1,i<=Length[x],i++,
            temp=Total[(xs-ys)*rho[[i]]];
            If[temp<0,Return[False]];
            If[temp>0,Return[True]];
        ];
            (*and now the remaining parts of degrees*)
        For[i=1,i<=Length[x],i++,
            temp=Total[(xd-yd)*ordering[[i]]];
            If[And[SBasisRL[pn]>0,i==Length[x]],
                If[And[xd[[SBasisRL[pn]]]<0,yd[[SBasisRL[pn]]]>=0],Return[True]];
                If[And[xd[[SBasisRL[pn]]]>=0,yd[[SBasisRL[pn]]]<0],Return[False]];
                If[And[xd[[SBasisRL[pn]]]<0,yd[[SBasisRL[pn]]]<0],Return[xd[[SBasisRL[pn]]]<=yd[[SBasisRL[pn]]]]];
                If[And[xd[[SBasisRL[pn]]]>=0,yd[[SBasisRL[pn]]]>=0],Return[xd[[SBasisRL[pn]]]>=yd[[SBasisRL[pn]]]]];
            ];
            If[temp<0,Return[False]];
            If[temp>0,Return[True]];
        ];
        ,   (*if the regions of points are different*)
        temp=(If[##===0,-1,##]&/@xsn)-(If[##===0,-1,##]&/@ysn);
        totaltemp=Total[temp];
            (*then we first compare the total sums of indices,
            corresponding to the number of non-trivial lines in
            the diagram*)
        If[totaltemp<0,Return[False]];
        If[totaltemp>0,Return[True]];
            (*now we check if there are s-bases in sectors - a
            sector with a basis will be lower than a sector
            without so that the symmetries would send the
            integrals in a right direction*)
        If[And[SBasisL[pn,xs]==0,SBasisL[pn,ys]>0],Return[True]];
        If[And[SBasisL[pn,xs]>0,SBasisL[pn,ys]==0],Return[False]];
            (*the same goes for rules in sectors*)
        If[And[Head[RULES[pn,xsn]]===RULES,Not[Head[RULES[pn,ysn]]===RULES]],Return[False]];
        If[And[Not[Head[RULES[pn,xsn]]===RULES],Head[RULES[pn,ysn]]===RULES],Return[True]];
        rho=HOR[Length[x]];
            (*and if nothing is left, we compare the sector by a
            total ordering*)
        For[i=2,i<=ExampleDimension[pn],i++,
            totaltemp=Total[temp*rho[[i]]];
            If[totaltemp<0,Return[False]];
            If[totaltemp>0,Return[True]];
        ];
    ];
    ErrorPrint["HigherPair error"]; (*should not happen normally*)
ErrorPrint[xx];ErrorPrint[yy];Abort[];
]

(*the definition for comparing two numbers
as you see, there is a special treatement of negative numbers,
for they do not correspond to real integrals
the II[negative number] points at the corner of the sector,
this "integral" appeared in.
All negatives corresponding to a sector are needed before
the substitutions in it, so are higher than all points
of the sector.*)
HigherNumberDefinition[x_,y_]:=(GetIntegralNumber[x]>=GetIntegralNumber[y])

(*Module[{xx,yy,temp},
hc+=1;
hp-=MyTimeUsed[];
    xx=GetII[x];
    yy=GetII[y];
    If[xx===yy,
        If[And[x>0,y>0],hp+=MyTimeUsed[];Return[True]];
        If[And[x>0,y<0],hp+=MyTimeUsed[];Return[True]];
        If[And[x<0,y>0],hp+=MyTimeUsed[];Return[False]];
        If[And[x<0,y<0],hp+=MyTimeUsed[];Return[x<=y]],
        temp=HigherPair[xx,yy];
        hp+=MyTimeUsed[];
        Return[temp];
    ];
]
*)
(*either saving the results or not*)
(*If[TargetSpeed,
        HigherNumber[x_,y_]:=HigherNumber[x,y]=HigherNumberDefinition[x,y],*)
        HigherNumber[x_,y_]:=HigherNumberDefinition[x,y];
(*];*)


HighestNumberPosition[x_]:=Ordering[x,1,HigherNumber][[1]];
HighestNumber[x_]:=x[[Ordering[x,1,HigherNumber][[1]]]];
LowestNumber[x_]:=x[[Ordering[x,-1,HigherNumber][[1]]]];

(*done with comparing*)
(*--------------------------------------------------------*)


(*-------------------------------------------------------*)
(*now here is the main function
the main cycle consists of running repeatedly the
EvaluateList function and the Laporta algorithm
on the points that were left irreducible.
After nothing else can be done, the list is sorted and everything
is substituted. If there are bases or rules or symmetries
everywhere, so that the Laporta algorithm is not needed,
then there are made NO substitutions in the main cycle.
Look at the description of EvaluateList lower*)

F[x_]:=F[0,x,False]
F[number_,x_] :=F[number,x,True]

F[number_,x_,PrintNumberQ_] := Module[{xx,list,temp},
    Clear[ELMet,EL,ELLength];
    ELLength[Infinity]=0;
    EvaluateAndSaveQ=False;
    InitializeValues[];
    CheckInput[number,x];
    If[INTERNALERROR,Abort[]];
    CheckAbort[
    xx={number,x};
    If[Head[GetTableD[ObtainNN[xx]]]===TableD,MessagePrint["EVALUATING ",xx]];
    If[Done[ObtainNN[xx]],Return[Answer[ObtainNN[xx],PrintNumberQ]]];
    (*For[i=1,i<=RealSectors,i++,ELLength[i]=0];*)
    Clear[ELLength];
    temp = Transpose[{Range[RealSectors], Table[0, {RealSectors}]}];
    temp = {ELLength[##[[1]]], ##[[2]]} & /@ temp;
    temp = Apply[Set, temp, {1}];
    BackList=EvaluateList[{ObtainNN[xx]},RealSector2Number[RealSector[xx]]];
        timecounter=MyTimeUsed[];
    BackList=Sort[BackList,HigherNumber];
        timecounter=MyTimeUsed[]-timecounter;
    If[Length[BackList]>1,MessagePrint["SORTING THE LIST OF ",Length[BackList]," INTEGRALS: ",timecounter," seconds."]];
        timecounter=MyTimeUsed[];
    Substitute[BackList,False];
   (* Clear[EL,ELcounter,ELLength,ELMet];*)
        timecounter=MyTimeUsed[]-timecounter;
    If[Length[BackList]>1,MessagePrint["Substituting ",Length[BackList]," values: ",timecounter," seconds."]];
    MessagePrint["Total time: ",MyTimeUsed[]-totaltimecounter," seconds"];
    Return[Answer[ObtainNN[xx],PrintNumberQ]];
    ,
        ErrorPrint["Internal error."];
        INTERNALERROR=True;
        Abort[];
    ]
]


EvaluateAndSave[list_,file_] := Module[{xx},
    TotalIntegralsInvolved=0;
    EvaluateAndSaveQ=True;
    InitializeValues[];
    CodeInfo[];
    (CheckInput[##[[1]],##[[2]]];If[INTERNALERROR,Abort[]])&/@list;
    CheckAbort[

    BackList=EvaluateList[ObtainNN/@list,1];
        timecounter=MyTimeUsed[];
    BackList=Sort[BackList,HigherNumber];
        timecounter=MyTimeUsed[]-timecounter;
    If[Length[BackList]>1,MessagePrint["SORTING THE LIST OF ",Length[BackList]," INTEGRALS: ",timecounter," seconds."]];
    
    If[QuitAfterSorting === 1,
        AbortFromQuitAfterSorting = True;
        Abort[];
    ];
    If[QuitAfterSorting === 2,
        Cleanup[];
        Quit[];
    ];

    
        timecounter=MyTimeUsed[];
    Substitute[BackList,False];
        timecounter=MyTimeUsed[]-timecounter;
    If[Length[BackList]>1,MessagePrint["Substituting ",Length[BackList]," values: ",timecounter," seconds."]];
    MessagePrint["Total time: ",MyTimeUsed[]-totaltimecounter," seconds"];
    MessagePrint["Memory: ",MemoryInUse[]];
    MessagePrint["Total integrals involved: ",Length[BackList]+TotalIntegralsInvolved];
    MessagePrint["Imaginary: ",NegativeNumber];
    SaveTables[file,list];

    ClearTables[]
    ,
        If[Not[AbortFromQuitAfterSorting],
            ErrorPrint["Internal error."];
            INTERNALERROR=True;
            Abort[];
        ];

    ]
]


(*--------------------------------------------------------*)
(*the next function is one of the main parts of the algorithm
being submitted a list of needed integrals it takes them one by
one and tries to obtain a proper expression for each of those
(without the use of the Laporta algorithm)
The integrals that appear in proper expressions are again added to
the list of integrals that have to be considered.
There are different functions that are executed in attempt
to obtain proper expressions:
TryRules - an attmpt to apply manually inserted rules
TryRestrictions - boundary conditions
TryOddRestrictions - parity conditions
TrySymmetries - use of symmetries
TryReduction - use of s-bases
TryIBP - direct application of IBPs
Another function, MakeBackList is similar to EvaluateList,
but it does not create any expressions. Instead, it takes
the input integrals and simply forms a list of integrals,
that appear in the already existing expressions of those
(again, going down recursively). In has one more parameter,
a corner point of a sector. It means that the algorithm
creates expressions only in this sector and does not go lower.
This is needed in the Laporta algorithm, where we get a new IBP
and have to substitute all that we know into it
(but the tails are kept masked)
*)

CurrentListAdd[x_,new_]:=Module[{i}, (*run by EvaluateList or
            MakeBackList to add an integral to the
            list of integrals that have to be considered*)
    If[new,stepcounter++];
    If[Head[Met[##]]===Met,
            Met[##]=True;
            needed++;
            Elements[needed]=##;
        ]&/@x;
]

BackListAdd[x_]:=Module[{temp}, (*run by EvaluateList or
            MakeBackList to put the integral
            to the list of integrals that will requre a substitution in the end*)
    tosubstitute++;
    BackElements[tosubstitute]=x;
]


ELAdd[x_,new_]:=Module[{n}, 
    If[new,stepcounter++];
    If[Head[ELMet[##]]===ELMet,
            ELMet[##]=True;
            n=RealSectorNumber[##];
            ELLength[n]=ELLength[n]+1;
            EL[n,ELLength[n]]=##;
        ]&/@x;
]




LaportaConditions[xx_]:=Module[{pn,x,ssector,r,temp},
    If[Not[UsingIBP],Return[False]];
    {pn,x}=xx;
    If[And[Head[IBPSector]===List,Not[SSector[pn,x]===IBPSector]],Return[False]];
    ssector=SSector[pn,x];
    r=MaxRegion[pn,ssector];
    If[r>0,
        If[SBasisL[pn, SBasisM[pn][[r]]] > 0, Return[False]]
        ,
        If[SBasisL[pn, ssector] > 0, Return[False]];
        If[SBasisR[pn, ssector], Return[False]];
        
        temp=DoubleOrbit[{pn,ssector}];
        min=LowestNumber[ObtainNN[##[[1]]]&/@temp];
        If[Not[GetII[min]==={pn,ssector}],Return[False]];
    ];
    
    Return[True];
]


RealSector[{pn_, x_}] := Module[{s, r},
   s = SSector[pn, x];
   If[SBasisR[pn, s], Return[{Infinity, {}}]];
   r = MaxRegion[pn, s];
   If[And[
     Or[SBasisL[pn, SBasisM[pn][[r]]] === 0, 
      Head[SBasisL[pn, SBasisM[pn][[r]]]] === SBasisL],
     Head[RULES[pn, SBasisM[pn][[r]]]] === RULES],
    Return[{pn, s}],
    Return[{pn, (SBasisM[pn][[r]]) /. {0->1}}]
    ]
   ];
EnumerateRealSectors[] := Module[{tem, temp2},
   temp = DefinedFor[SBasisR];
   temp = RealSector /@ temp;
   temp = Union[temp];
   temp = Complement[temp, {{Infinity, {}}}];
   temp = Sort[temp, HigherPair];
 (*  temp = 
    Select[temp, (Or[Length[##[[2]]] < 12, ##[[2]][[12]] < 1]) &];*)
   RealSectors = Length[temp];
   Clear[RealSector2Number, Number2RealSector];
   temp = Transpose[{temp, Range[RealSectors]}];
   temp2 = {RealSector2Number[##[[1]]], ##[[2]]} & /@ temp;
   Apply[Set, temp2, {1}];
   temp2 = {Number2RealSector[##[[2]]], ##[[1]]} & /@ temp;
   Apply[Set, temp2, {1}];
   RealSector2Number[{Infinity, {}}] = Infinity;
   ];
RealSectorNumber[x_] := RealSector2Number[RealSector[GetII[x]]]


WorkInRealSector[SN_]:=Module[{temp,i,y,timecounter,BackList,ttt,tbd,LaportaSector},
    timecounter=MyTimeUsed[];
        Clear[Met,IrList];
        If[ELLength[SN]==0,Return[]];
        If[SN<Infinity,
            ttt=Number2RealSector[SN];
            For[i=1,i<=Length[SBasisM[ttt[[1]]]],i++,
                If[ttt[[2]]===(SBasisM[ttt[[1]]][[i]]/.(0->1)),
                    ttt[[2]]=(SBasisM[ttt[[1]]][[i]]);
                    Break[]
                ];
            ];
            MessagePrint["Working in sector ",SN,"/",RealSectors,": ",StringReplace[ToString[ttt]," "->""]]
        ];
        LaportaSector=If[SN<Infinity,If[Times@@ttt[[2]]===0,False,LaportaConditions[Number2RealSector[SN]]],False];
       (* Print[GetII[EL[SN,##]]&/@Range[ELLength[SN]]];*)
        ELcounter=1;
    If[LaportaSector,
        Laporta[SN];
        ELcounter=1;
        While[ELcounter<=ELLength[SN],
            y=EL[SN,ELcounter];
      (*      If[ELMet[y],ELcounter++;Continue[]];*)
            tbd=GetTableD[y];
            ELAdd[tbd,False]; (*THIS IS IMPORTANT!*)
(*            If[And[y>0,tbd=!={y}],
                ELAdd[Select[tbd,Negative],False],
                ELAdd[tbd,False]
            ];*)
            ELcounter++;
        ];
        MessagePrint["Sector complete"];
        If[And[EvaluateAndSaveQ,SN<Infinity],
            SPointLocal=ObtainNN[{Number2RealSector[SN][[1]],SPoint[Number2RealSector[SN][[2]]]}];
            timecounter=MyTimeUsed[];
            temp=Complement[(##[[1]]) & /@ GetDefinedTableD[],
                Union[{SPointLocal},Table[EL[SN,i],{i,ELLength[SN]}]]];
            i=0;
            (If[InThisSector[##,SPointLocal],i++;ClearTable[##]])&/@temp;
            timecounter=MyTimeUsed[]-timecounter;
            Clear[TableIBP];
            TotalIntegralsInvolved=TotalIntegralsInvolved+i;
            If[i>0,MessagePrint["CLEARING ",i," INTEGRALS: ",timecounter," seconds."]];
        ];
    ,        
        While[ELcounter<=ELLength[SN],
            y=EL[SN,ELcounter];
(*            If[ELMet[y],ELcounter++;Continue[]];*)
            integral=GetII[y];
            MyPrint[integral];
            If[Head[ExampleDimension[integral[[1]]]]===ExampleDimension,
                ErrorPrint["No start file loaded for problem ",integral[[1]]];
                Abort[]
            ];
            tbd=GetTableD[y];
            If[Not[Head[tbd]===TableD],
                If[tbd=!={y},
                    ELAdd[tbd,False];
                ];
                ELcounter++;Continue[];
            ];
            If[Or[TryRestrictions[integral],TryOddRestrictions[integral]],
                ELcounter++;Continue[];
            ];
            If[Or[TrySymmetries[integral],If[Head[IBPSector]===Symbol,Or[TryRules[integral],TryReduction[integral]],False]],
                tbd=GetTableD[y];
                ELAdd[tbd,True];
                ELcounter++;Continue[];
            ];
            MakeIrreducible[y];
            ELcounter++;
        ];
        If[SN<Infinity,MessagePrint[ELLength[SN]," new relations produced: ",MyTimeUsed[]-timecounter," seconds"]];
   ];


        
        
]


InThisSector[x_,y_]:=Module[{temp},
    xx=GetII[x];
    yy=GetII[y];
    If[xx[[1]]===yy[[1]],pn=xx[[1]];SSector[pn,xx[[2]]]===SSector[pn,yy[[2]]],False]
]




EvaluateList[list_,SNStart_]:=Module[{temp,i,y,timecounter,BackList,c},
    Clear[ELMet,EL,ELLength];
    For[i=1,i<=RealSectors,i++,ELLength[i]=0];
    ELLength[Infinity]=0;
    stepcounter=0;needed=0;calculated=0;tosubstitute=0;
    timecounter=MyTimeUsed[];
    ELAdd[list,False];

    For[SN=SNStart,SN<=RealSectors,SN++,
        WorkInRealSector[SN];
    ];
    WorkInRealSector[Infinity];
    



    timecounter=MyTimeUsed[]-timecounter;
    If[stepcounter>0,MessagePrint["GENERATING ",stepcounter," NEW RELATIONS: ",timecounter," seconds."]];
    Return[(EL @@ ##) & /@ DeleteCases[DefinedFor[EL], {Infinity, x_}]];

]



MakeBackList[list_,SPoint_]:=Module[{temp,i,y,timecounter,BackList,tbd},
    IPoint=SPoint;
    Clear[Met,Elements,BackElements];
    stepcounter=0;needed=0;calculated=0;tosubstitute=0;
    timecounter=MyTimeUsed[];
    CurrentListAdd[list,False];
    While[calculated<needed,
        MyClearCache[];
        calculated++;
        y=Elements[calculated];
        If[y<0,Continue[]];     
        tbd=GetTableD[y];              
        If[Or[tbd==={y},Head[tbd]===TableD],
            If[HigherNumber[y,IPoint],IPoint=y]
        ,
            CurrentListAdd[tbd,False];
            BackListAdd[y];
        ];
    ];
    BackList=Table[BackElements[i],{i,tosubstitute}];
    Clear[Met,Elements,BackElements];
    BackList=Sort[BackList,HigherNumber];
    timecounter=MyTimeUsed[]-timecounter;
    Return[BackList];
]




(*-------------------------------------------------------*)
(*the following functions have been described before the
EvaluateList function. There all are aiming to produce proper
expressions for a given integral*)

TryRestrictions[yy_]:=Module[{temp,y,pn},
    {pn,y}=yy;
    If[SBasisR[pn,SSector[pn,y]]===True,
        MyPrint["Restrictions applied"];
        MakeZeroTable[ObtainNN[yy]];
        Return[True]
    ,
        Return[False]
    ];
]


OddRestrictionsPossible[xx_]:=Module[{temp,i,pn},
    {pn,x}=xx;
    For[i=1,i<=Length[SBasisE[pn,SSector[pn,x]]],i++,
        If[And[
            x*(SBasisE[pn,SSector[pn,x]][[i]][[1]])==Table[0,{Length[x]}],
            Mod[Total[(x*(SBasisE[pn,SSector[pn,x]][[i]][[2]]))],2]==1
            ],
            Return[True];
        ];
    ];
    Return[False];
]

TryOddRestrictions[yy_]:=Module[{temp,y},
    If[OddRestrictionsPossible[yy],
        MyPrint["OddRestrictions applied"];
        MakeZeroTable[ObtainNN[yy]];
        Return[True]
    ,
        Return[False]
    ];
]

SymmetryTransformation[xx_]:=SymmetryTransformation[xx,False]

SymmetryTransformation[xx_,OnlyThisSector_]:=Module[{temp,min,i},
    temp=DoubleOrbit[xx];
    If[OnlyThisSector,temp=Select[temp,((SSector@@(##[[1]]))===(SSector@@xx))&]];
    temp={ObtainNN[##[[1]]],##[[2]]}&/@temp;
    temp=Union[temp];
    min=LowestNumber[##[[1]]&/@temp];
    i=1;
    While[i<=Length[temp],
        If[temp[[i]][[1]]==min,Return[{GetII[min],(Times @@ ((temp[[i]][[2]])^(xx[[2]])))}]];
        i++
    ];
    ErrorPrint["SymmetryTransformationError"];
    Abort[];
]

TrySymmetries[yy_]:=TrySymmetries[yy,False]

TrySymmetries[yy_,OnlyThisSector_]:=Module[{temp,y,nn,tbd},
    tbd=GetTableD[ObtainNN[yy]];
    If[And[Head[tbd]===List,Length[tbd]>1],Return[True]];
(*    sss=sss-TimeUsed[];*)
    temp=SymmetryTransformation[yy,OnlyThisSector];
(*    sss=sss+TimeUsed[];*)
    If[Not[temp[[1]]===yy],
        MyPrint["Symmetry applied"];
        Clear[Coeff];
        nn=ObtainNN[temp[[1]]];
        Coeff[nn]=MyToString[temp[[2]],InputForm];
        MakeTable[ObtainNN[yy],{nn}];
        Return[True]
    ,
        Return[False]
    ];
]

RulesTransformation[xx_]:=Module[{sector,GG,i,el,dd,c,pn,yy},
    {pn,x}=xx;
    sector=SSector[pn,x];
    region=MaxRegion[pn,sector];
    If[region>0,sector=SBasisM[pn][[region]]];
    If[Head[RULES[pn,sector]] === RULES,Return[xx]];
    GG=G[pn,x];
    temp=GG/.RULES[pn,sector];
    If[temp===GG,Return[xx]];
    Clear[tempCoeff];
    If[temp===0,Return[{}]];
    
    
    tempelement=Union[Cases[temp, G[yy__], {0, Infinity}]];
    temp={#,Coefficient[temp,#]}&/@tempelement;
    temp=temp/.G->List;
    tempelement=tempelement/.G->List;
    temp = {tempCoeff[#[[1]]], #[[2]]/.CFT->Identity} & /@ temp;
    Apply[Set, temp, {1}];
    Return[tempelement];
(*    
    temp=Expand[temp];
    If[Head[temp]===Plus,temp=List@@temp,temp={temp}];
    tempelement={};
    For[i=1,i<=Length[temp],i++,
        el=temp[[i]];
        If[Head[el]===G,
            c=1;{pn,dd}={el[[1]],el[[2]]},
            c=el/.G[y__]->1;ttt=Select[el,(Head[##] === G) &];{pn,dd}={ttt[[1]],ttt[[2]]};
        ];
        If[Head[tempCoeff[{pn,dd}]]===tempCoeff,
            tempCoeff[{pn,dd}]=c;
            AppendTo[tempelement,{pn,dd}],
            tempCoeff[{pn,dd}]+=c;
        ];
    ];
    Return[tempelement];*)
    
]

TryRules[y_] := Module[{sector,nnn},
(*rtc+=TimeUsed[];*)
    temp=RulesTransformation[y];
(*rtc-=TimeUsed[];*)
    If[Not[temp===y],
        MyPrint["Rules applied"];
        If[temp==={},MakeZeroTable[ObtainNN[y]];Return[True]];
        nnn=ObtainNN/@temp;
        If[HigherNumber[HighestNumber[nnn],ObtainNN[y]],ErrorPrint["Bad rule for ",y];Abort[]];
        (Coeff[ObtainNN[##]]=MyToString[tempCoeff[##],InputForm])&/@temp;
        MakeTable[ObtainNN[y],nnn];
        Return[True]
    ,
        Return[False]
    ];
]


TryReduction[yy_]:=Module[{sector,i,j,l,k,shiftlist,temp,y,c1,c2,iii,pn},
    {pn,y}=yy;
    sector=SSector[pn,y];
    region=MaxRegion[pn,sector];
    For[k=1,k<=2,k++,
        If[k===1,
            If[region===0,Continue[]];
            If[SBasisL[pn,sector]===0,Continue[]];
            If[Head[SBasisL[pn,sector]]===SBasisL,Continue[]];
            If[Head[SBasisD[pn,sector,1]]===SBasisD,Continue[]];
        ];
        
        If[k===2,If[region>0,sector=SBasisM[pn][[region]]]];
        l=SBasisL[pn,sector];
        For[i=1,i<=l,i++,
            If[SBasisH[pn,sector,i]===True,
                If[Not[Or@@(MultiMore[pn,sector*y,sector*(##+SBasisD[pn,sector,i][[1]])]&/@SBasisA[pn,sector,i])],Continue[]]
                ,
                If[Or[SBasisRL[pn]===0,Not[SBasisH[pn,sector,i][[2]][[SBasisRL[pn]]]===0]],
                    If[MatrixRank[{sector*sector*(y-SBasisH[pn,sector,i][[1]]),
                                SBasisH[pn,sector,i][[2]]}]===2,Continue[]];
                    If[ProportionalCoeff[y-SBasisH[pn,sector,i][[1]],
                                    SBasisH[pn,sector,i][[2]]]<
                            SBasisH[pn,sector,i][[3]],Continue[]];
                ,
                    If[MatrixRank[{sector*sector*(y-SBasisH[pn,sector,i][[1]]),
                                SBasisH[pn,sector,i][[2]],
                                Delta[SBasisRL[pn],ExampleDimension[pn]]}]===3,Continue[]];
                    If[ProportionalCoeff[Delete[y-SBasisH[pn,sector,i][[1]],SBasisRL[pn]],
                                    Delete[SBasisH[pn,sector,i][[2]],SBasisRL[pn]]]<
                            SBasisH[pn,sector,i][[3]],Continue[]]
                ]
            ];
            rules= AVRulesD[y - SBasisD[pn,sector,i][[1]]];
            cc=Expand[SBasisC[pn,sector,i,SBasisD[pn,sector,i][[1]]] /. rules];
            If[And[EpFinite,Expand[cc/.d->4]===0],Continue[]];
            If[cc===0,Continue[]];
            Clear[tempCoeff];
            tempelement={yy};
            tempCoeff[yy]=cc;
            For[k=2,k<=Length[SBasisD[pn,sector,i]],k++,
                dd1=SBasisD[pn,sector,i][[k]];
                dd=dd1+y-SBasisD[pn,sector,i][[1]];
                If[SBasisR[pn,SSector[pn,dd]],Continue[]];
                cc=Expand[SBasisC[pn,sector,i,dd1] /. rules];
                If[Not[cc===0],
                    tempelement=Append[tempelement,{pn,dd}];
                    tempCoeff[Last[tempelement]]=cc;
                ];
            ];
            If[Times@@sector==0,
                temp = ({##[[2]]*sector*sector, ##[[2]] - ##[[2]]*sector*sector}) & /@ tempelement;
                last = {};temp2 = {};
                For[j = 1, j <= Length[temp], j++,
                  If[last === temp[[j]][[1]],
                      temp2=ReplacePart[temp2, {Last[temp2][[1]], Append[Last[temp2][[2]], temp[[j]][[2]]]},Length[temp2]],
                      AppendTo[temp2, {temp[[j]][[1]], {temp[[j]][[2]]}}];
                      last = temp[[j]][[1]]
                  ];
                ];
                If[Length[temp2[[1]][[2]]]==1,Goto[TheStep]];
                If[Length[Union[subs[(##[[2]])] & /@ temp2]] > 1, Continue[]];
                prop=True;
                For[j=2,j<=Length[temp2],j++,
                    For[k=2,k<=Length[temp2[[j]][[2]]],k++,
                        If[Not[Together[tempCoeff[{pn,temp2[[j]][[2]][[k]]+temp2[[j]][[1]]}]/
                                tempCoeff[{pn,temp2[[j]][[2]][[1]]+temp2[[j]][[1]]}]]==                            Together[tempCoeff[{pn,temp2[[1]][[2]][[k]]+temp2[[1]][[1]]}]/
                               tempCoeff[{pn,temp2[[1]][[2]][[1]]+temp2[[1]][[1]]}]]]
                        ,
                            prop=False;Break[]
                        ];
                    ];
                ];
                If[Not[prop],Continue[]];
                tempelement=({pn,##[[1]]+##[[2]][[1]]})&/@temp2;
            ];
            Label[TheStep];
            If[tempelement[[1]]==yy,
                MyPrint["Reducing (length: ",Length[tempelement],")"];
                c2=tempCoeff[yy];
                tempelement=Drop[tempelement,1];
                Clear[Coeff];
                nnn=ObtainNN/@tempelement;
                If[And[Not[SBasisH[pn,sector,i]===True],Length[nnn]>0],
                    If[Not[HigherNumber[ObtainNN[yy],(HighestNumber[nnn])]],
                    (*Print[yy];
                    Print[region];
                    Print[SBasisH[pn,sector,i]];*)
                    If[Not[SBasisM[yy[[1]]][[region]]*SBasisM[yy[[1]]][[region]]*yy[[2]]===SBasisH[pn,sector,i][[1]]],
                        ErrorPrint["UNEXPECTED MASTER INTEGRAL!!!"];
                    ];
                    Continue[]];
                ];   
                (Coeff[ObtainNN[##]]=MyToString[-tempCoeff[##]/c2,InputForm])&/@tempelement;
                MakeTable[ObtainNN[yy],nnn];
                Return[True]
            ,
                ErrorPrint["TryReductionError"];
                ErrorPrint[tempelement];
                ErrorPrint[sector];
                ErrorPrint[i];
                ErrorPrint[SBasisH[pn,sector,i]];
                Abort[];
            ];
        ];
    ];
Return[False];
]

TryIBP[xx_]:=Module[{temp,x,i,ssector,pn},
    {pn,x}=xx;
    If[SBasisRL[pn]>0,Return[False]];
    ssector=SSector[pn,x];
    For[i=1,i<=Length[HPI[pn]],i++,
        If[ssector[[HPI[pn][[i]]]]===-1,
            Return[False];
        ]
    ];
    
    r=MaxRegion[pn,ssector];
    If[r>0,Return[False]];
    For[i=1,i<=SBasis0L[pn],i++,
        temp=ssector*SProjection[IBPShifts[pn,ssector,i][[1]],ssector];
        If[MultiMore[pn,ssector*x-SPoint[ssector],temp],
            temp=x-IBPShifts[pn,ssector,i][[1]];
            rules= AVRulesD[temp];
            Clear[tempCoeff];
            tempelement={};
            For[k=1,k<=Length[SBasis0D[pn,i]],k++,
                dd=temp+SBasis0D[pn,i][[k]];
                If[SBasisR[pn,SSector[pn,dd]],Continue[]];
                cc=Expand[SBasis0C[pn,i,SBasis0D[pn,i][[k]]] /. rules];
                If[Not[cc===0],
                    tempelement=Append[tempelement,{pn,dd}];
                    tempCoeff[Last[tempelement]]=cc;
                ];
            ];
            pos=Flatten[Position[tempelement,xx]];
            MyPrint["IBPReducing ",xx];
            If[pos==={},Abort[]];
            c2=tempCoeff[tempelement[[pos[[1]]]]];
            tempelement=Delete[tempelement,pos];
            Clear[Coeff];
            Do[Coeff[ObtainNN[tempelement[[iii]]]]=MyToString[-tempCoeff[tempelement[[iii]]]/c2,InputForm],{iii,Length[tempelement]}];
            MakeTable[ObtainNN[xx],ObtainNN/@tempelement];
(*            If[Head[TableIBP[xx]] === TableIBP,
                TableIBP[ObtainNN[xx]] = Table[0,{SBasis0L[xx[[1]]]}]
            ];*)
            UsedIBP[{ObtainNN[xx],i},SBasis0L[xx[[1]]]];
            (*TableIBP[ObtainNN[xx]]=ReplacePart[TableIBP[ObtainNN[xx]],1,i];*)
            Return[True]
        ]
    ];
    Return[False];
]


(*the functions producing proper expressions have been described*)
(*--------------------------------------------------------------------------------*)
(*following are the functions performing substitutions
SubstituteOne evaluates the sum of integrals of list with some
coefficients; in case, when the second parameter is
Null, the coefficients are taken from the variable EqCoeff
(this is the case when the list comes from an IBP)
Otherwise, the coefficients come from TableC[point],
meaning that we are substituting integrals
into a proper expression of point.
The third parameter defines whether we keep negative
numbers not substituted. Is it turned on in the
calls from the Laporta algorithm, since the tail-masking is done
there.
You shoulk keep in mind that the coefficients are stored as
strings (memory-economy), so we first construct an expression
and only then evaluate it, either by making it an expression,
running Together and turning back into a string,
or by an external evaluation call
*)
(*Substitute performs consequent substitutions
of integrals starting from the end of the list.
Again, it has the OnlyPositive parametr for tail masking
*)

SowMany[x_,y_]:=Sow["("<>x<>")*("<>##[[2]]<>")",##[[1]]]&/@y
StringSum[x_] := "0" <> StringJoin @@ (("+" <> ##) & /@ x)

SubstituteOne[list_,point_,OnlyPositive_]:=Module[{temp},
MyClearCache[];
    Clear[Coeff];
    If[point===Null,
        Coeff2=EqCoeff
        ,
        Clear[Coeff2];
        temp={Coeff2[##[[1]]],##[[2]]}&/@(GetTableC[point]);
        Apply[Set,temp,{1}]
    ];
    temp=Reap[(SowMany[Coeff2[##],GetTableC[##]];)&/@list,_,List][[2]];
    temp={##[[1]], StringSum[##[[2]]]} & /@ temp;
   (* tc-=MyTimeUsed[];*)
    If[UsingFermat,
        temp={##[[1]], FEval[##[[2]]]} & /@ temp,
        temp={##[[1]],MyToString[Together[ToExpression[##[[2]]]],InputForm]}&/@temp
    ];
(*    tc+=MyTimeUsed[];*)
    temp=Delete[temp,Position[(##[[2]])&/@temp,"0"]];
    (Coeff[##[[1]]]=##[[2]])&/@temp;
    Return[(##[[1]])&/@temp];
]

Substitute[list_,OnlyPositive_]:=Module[{i,j,k,y,newlist,l,temp,temp2,temp3,last,tbd},
    Loaded=Length[list]+1;
    last=0;(*RealSector*);
    For[counter=Length[list],counter>0,counter--,
        y=list[[counter]];
        If[And[Not[OnlyPositive],SubstitutionDebug,Not[last===RealSector[GetII[y]]]],
            MessagePrint["Substituting in ",RealSector[GetII[y]]];
            last=RealSector[GetII[y]]
        ];
        (*MyPrint["Substituting ",y];*)
        tbd=GetTableD[y];
        If[Or[Head[tbd]===TableD,tbd==={y},tbd==={},And[y<0,OnlyPositive]],Continue[]];
        NeedToSubstitute=Or@@((Not[temp=GetTableD[##];Or[Head[temp]===TableD,temp==={##},And[##<0,OnlyPositive]]])&/@tbd);
        If[Not[NeedToSubstitute],Continue[]];
(*        sc++;*)
(*        stl=MyTimeUsed[];*)
        newlist=SubstituteOne[tbd,y,OnlyPositive];
(*        st=st+MyTimeUsed[]-stl;*)
        If[OnlyPositive,MakeTable2[y,newlist],MakeTable[y,newlist]];
    ];
]

(*substitution functions have been described*)
(*---------------------------------------------------------------------------*)
(*following is the Laporta algorithm
it takes a list of integrals that have to be evaluated as input
and works with them consequently
for a given integrals it calculates its level (LLevel function),
that is normally a pair - the number of dots and the degree of
irreducible nominators. In the cases with regularized lines it
is a triple, with the degree on that line at the third position.
For a level it calls the function NeededLevel, that estimates
the needed level of IBPs, that have to be constructed.
Further, it calls the function UnderLevels, that lists the levels
lower than the needed level, grouped in blocks (we will be
generating IBPs for a whole block afterwards).
Now for each block of levels we call the LevelPoints function,
that lists the points corresponding to this level.
Now we have a set of points, where we have to generate IBPs,
if we haven't done it in the past (the information is in TableIBP).
Thus is done by the MakeRelation function.
The relations are sorted and we start calling the ReduceRelation
function. In should be noted that the process will stop normally
if all the relations have been considered.
But it can also stop if we have obtained proper expressions for
all points in pointslist - a list containing the required integral
and a number of low-level points if we are working with the lowest
block of relations. The reason that those low points are added is
that otherwise we might produce extra masters.
Now about the ReduceRelation function.
It takes the relation as input and runs the MakeBackList function
and then Substitute in order to substitute all existing values
into the relation. Tail-masking is being performed, so we also
pass the corner of the sector as a second argument to avoid
reducing lower. Afterwards, when everything has been substituted
it calls the UseRelation function to produce a proper expression
for the highest remaining term and put it into tables.
*)



UnderLLevels[{x_,y_}]:=Flatten[Outer[List,Range[1,x],Range[1,y]],1]

AddZerosAndReg[MaxReg_,llevel_]:=Module[{level=llevel},
        If[level[[1]]==1,
                If[level[[2]]==1,
                    level={{0,0},{1,0},{0,1},{1,1}}
                ,
                    level={{0,level[[2]]},{1,level[[2]]}}
                ]
            , 
                If[level[[2]]==1,
                    level={{level[[1]],0},{level[[1]],1}}
                ,
                    level={level}
                ]                           
            ];
            
            If[MaxReg>0,level=AppendDifferent[level,Range[-MaxReg,MaxReg]]];
    Return[level];

]

CheckPoints[SN_,AddNew_]:=Module[{y,tbd,lev1,lev,temp},
    While[ELcounter<=ELLength[SN],
        y=EL[SN,ELcounter];
        If[y<0,ELcounter++;Continue[]];
        tbd=GetTableD[y];
        If[Head[tbd]===TableD,
            If[NewPoint,
                temp=GetII[y];
                lev1=Take[LLevel@@temp,2];
                lev={If[lev1[[1]]===0,1,lev1[[1]]],lev1[[2]]+1};
                If[UsedIBPs[temp[[1]],SSector@@temp,lev],
                    MakeIrreducible[y];
                    ELcounter++;
                    Continue[]
                ];
                NewPoint=False;
                If[AddNew,
                    If[Not[MemberQ[Levels,lev]],
                        MessagePrint["New level of integrals appeared: ",lev1];
                        temp=Complement[UnderLLevels[lev],Levels];     
                        temp=Sort[temp,(If[#1[[1]]+#1[[2]]<#2[[1]]+#2[[2]],True,
                        If[#1[[1]]+#1[[2]]>#2[[1]]+#2[[2]],False,
                            #1[[1]]<#2[[1]]
                         ]
                       ])&];                   
                        Levels=Join[Levels,temp];
                    ]
                ];
            ];
            Return[False]
        ,
            If[tbd=!={y},ELAdd[tbd,False]];
            ELcounter++;
            NewPoint=True;
        ];                        
    ];
    Return[True];
]


Laporta[SN_] := Module[{list, xx, x, d, i, j,k,l,iii,timecounter,ppp,temp},

    NewPoint=True;
    If[CheckPoints[SN,False],
        Return[];
    ];
    {pn,ssector}=Number2RealSector[SN];
    MessagePrint["LAPORTA STARTED: ", ELLength[SN]," integrals for evaluation"];


    If[Head[IBPOrdering[pn,ssector]]===IBPOrdering,
        temp=HighestNumber[MakeRelation[##,{pn,5*ssector}]]&/@Range[SBasis0L[pn]];
        IBPOrdering[pn,ssector]=Ordering[temp,All,(HigherNumber[#1,#2])&];
        (IBPShift2[pn,ssector,##]=    (GetII[temp[[##]]][[2]]-5*ssector))    &/@Range[SBasis0L[pn]];
        (IBPShift[pn,ssector,##]=   (Max[##,0]&/@ ((GetII[temp[[##]]][[2]]-5*ssector)*ssector))*ssector )    &/@Range[SBasis0L[pn]];       
    ];  

    temp=(GetII[##])&/@Table[EL[SN,i],{i,ELLength[SN]}];

    TrySymmetries/@temp;
    

    temp=(##[[2]])&/@temp;
    temp=LLevel[pn,##]&/@temp;
    If[Length[temp[[1]]]>2,
        MaxReg=Max@@(Abs[##[[3]]]&/@temp);
        temp=Drop[##,-1]&/@temp
        ,
        MaxReg=0
    ];
    temp=Union[temp];
    MessagePrint["Maximal levels: ",DoubleMaxPoints[temp]];
    
    temp=UnderLLevels[{Max[##[[1]],1],##[[2]]+1}]&/@temp;    
    temp=Flatten[temp,1];
    temp=Union[temp];
    temp=Sort[temp,(If[#1[[1]]+#1[[2]]<#2[[1]]+#2[[2]],True,
                        If[#1[[1]]+#1[[2]]>#2[[1]]+#2[[2]],False,
                            #1[[1]]<#2[[1]]
                         ]
                       ])&];
    Levels=temp;

        
       
        For[levelr=1,levelr<=Length[Levels],levelr++,
            
            RealLevel=Levels[[levelr]];
            If[UsedIBPs[pn,ssector,RealLevel],Continue[]];
            
            MessagePrint[RealLevel];
            timecounter=MyTimeUsed[];
(*            sss4=sss4-TimeUsed[];*)
            (*symmetries in higher points*)
            

            
            level=Join[            
                AddZerosAndReg[MaxReg,RealLevel+{1,1}],
                If[RealLevel[[2]]===1,AddZerosAndReg[MaxReg,RealLevel+{1,0}],{}],                                
              (*  If[RealLevel==={1,1},AddZerosAndReg[MaxReg,RealLevel],{}]*)
              If[RealLevel[[1]]===1,AddZerosAndReg[MaxReg,RealLevel],{}]
            ];
            

            list = ObtainNN/@(Union[Flatten[LevelPoints[pn,##,ssector]&/@level,1]]);
            TrySymmetries[GetII[##],True]&/@list;
            
            (*where to generate*)            
      
            level=AddZerosAndReg[MaxReg,RealLevel];
            list = ObtainNN/@(Union[Flatten[LevelPoints[pn,##,ssector]&/@level,1]]);
            list=Union[LowestNumber[NOrbit[##]]&/@list];

         (*   Print["Preparing symmetries: ",MyTimeUsed[]-timecounter," seconds."];*)
(*            sss4=sss4+TimeUsed[];*)
            
            RelationNumber = 1;
            Clear[EqCoeff,RelationList,IBPPointer,HML];

          (*  timecounter=MyTimeUsed[];*)
(*            sss3=sss3-TimeUsed[];*)
                (*generating equations*)
            (
                If[Head[TableIBP[##]] === TableIBP,
                    TableIBP[##] = Table[0, {SBasis0L[GetII[##][[1]]]}]
                ];

              If[Head[TableIBP[##]] === List,
                If[LeeIdeas,
                    For[j=1,j<=SBasis0L[pn],j++,
                        If[MultiMore[pn,ssector*(GetII[##][[2]]),SPoint[ssector]+ssector*IBPShift[pn,ssector,IBPOrdering[pn,ssector][[j]]]],
                            For[k=j+1,k<=SBasis0L[pn],k++,
                                TableIBP[##]=ReplacePart[TableIBP[##],1,IBPOrdering[pn,ssector][[k]]];
                            ];
                            Break[]
                        ]
                    ];
                ];
                For[j = 1, j <= SBasis0L[pn], j++,
                    If[TableIBP[##][[j]] === 1, Continue[]];
                    aa={ObtainNN[{pn,GetII[##][[2]]+IBPShift2[pn,ssector,j]}]};
                    If[Length[aa]>0,
                        HML[RelationNumber]=aa[[1]];
                        IBPPointer[RelationNumber] = {##,j};
                        RelationNumber++;
                    ];
                    Clear[EqCoeff];
                ];
              ];
(*and back*)
                If[TableIBP[##] === Table[0,{pn}],
                    TableIBP[##]=.;
                ];


            )&/@list;
            If[RelationNumber==1,Continue[]];
            ro = Ordering[Range[RelationNumber - 1],All, (HigherNumber[HML[#1], HML[#2]]) &];
            Clear[RO,HML];
            temp=Transpose[{Range[Length[ro]],ro}];
            temp={RO[##[[1]]],##[[2]]}&/@temp;
            Apply[Set,temp,{1}];
            Clear[ro];
            
            MessagePrint["Preparing points, symmetries and ",RelationNumber-1," IBP's: ",MyTimeUsed[]-timecounter," seconds."];
(*            sss3=sss3+TimeUsed[];*)
                GoodRelations=0;
                timecounter=MyTimeUsed[];
                Loaded=RelationNumber;
                For[thiscounter = RelationNumber-1, thiscounter > 0, thiscounter--,
                    If[CheckPoints[SN,True],
                        MessagePrint[GoodRelations," new relations produced: ",MyTimeUsed[]-timecounter," seconds."];
                        Goto[end]
                    ];
                    Clear[EqCoeff];
                    UsedIBP[IBPPointer[RO[thiscounter]],SBasis0L[pn]];
                    rlist=MakeRelation[IBPPointer[RO[thiscounter]][[2]],GetII[IBPPointer[RO[thiscounter]][[1]]]];
                    If[ReduceRelation[rlist,ObtainNN[{pn,SPoint[ssector]}]],
                        GoodRelations++
                    ];
                ];
                MessagePrint[GoodRelations," new relations produced: ",MyTimeUsed[]-timecounter," seconds."];
                UsedIBPs[pn,ssector,RealLevel]=True;
                NewPoint=True;
                If[CheckPoints[SN,True],
                    Goto[end];
                ];
        ]; (*for*)
    Label[end];        

    Clear[EqCoeff,RelationList,IBPPointer];
]

LLevel[pn_,x_]:=If[SBasisRL[pn]>0, (*the level of a point*)
        {Total[If[##>=1,##-1,0]&/@(Delete[x,SBasisRL[pn]])],Total[If[##>=1,0,-##]&/@(Delete[x,SBasisRL[pn]])],x[[SBasisRL[pn]]]-1}
            ,
        {Total[If[##>=1,##-1,0]&/@(x)],Total[If[##>=1,0,-##]&/@(x)]}
        ]

NeededLevel[l_]:=  (*the minimal needed level for IBPs*)
        If[Length[l]===2,
            {If[l[[1]]<1,1,l[[1]]],If[l[[2]]<2,2,l[[2]]]}
            ,
            {If[l[[1]]<1,1,l[[1]]],If[l[[2]]<2,2,l[[2]]],Max[Abs[l[[3]]],1]+1}
        ]


AppendOne[x_, y_] := Append[##, y] & /@ x;
AppendDifferent[x_, y_] := Join @@ (AppendOne[x, ##] & /@ y);
(*some technical stuff*)


UnderLevels[l_]:=Module[{i,j,result,temp}, (*the levels lower than
                            the given level grouped in blocks*)
    If[Length[l]===3,
        Return[AppendDifferent[##,Range[-l[[3]],l[[3]]]]&/@UnderLevels[Take[l,2]]];
    ];

    result={{{0,0},{1,0},{0,1},{1,1},{0,2},{1,2}}}; (*starting block*)
    temp={};
    For[j=3,j<=l[[2]],j++,
        AppendTo[temp,{0,j}]
    ];
    If[l[[1]]>1,
        For[j=3,j<=l[[2]],j++,
            AppendTo[temp,{1,j}]
        ];
    ];
    For[i=2,i<l[[1]],i++,
        For[j=0,j<=l[[2]],j++,
            AppendTo[temp,{i,j}]
        ]
    ];
    If[Not[temp==={}],AppendTo[result,temp];temp={}]; (*main block*)
    If[l[[1]]>1,
        For[j=0,j<=l[[2]],j++,
            AppendTo[temp,{l[[1]],j}]
        ],
        For[j=3,j<=l[[2]],j++,
            AppendTo[temp,{l[[1]],j}]
        ]
    ];
    If[Not[temp==={}],AppendTo[result,temp];temp={}]; (*same dot level*)
    result
]


LevelPoints[pn_, level_, ssector_] := Module[{i, j, temp, temp1, temp2, d},
                (*all points of a given level*)
    If[SBasisRL[pn]>0,sector=ReplacePart[ssector,0,SBasisRL[pn]],sector=ssector];
    (sector=ReplacePart[sector,2,##])&/@HPI[pn];
    If[Length[Cases[sector, 1]] > 0,
      temp1 = Compositions[level[[1]], Length[Cases[sector, 1]]];
      pos = Flatten[Position[sector, 1]];
      temp1 = PutAtPositions[pos, ##, Length[sector]] & /@ temp1;
      ,
      temp1 = {Table[0, {Length[sector]}]}
      ];
    If[Length[Cases[sector, -1]] > 0,
      temp2 = Compositions[level[[2]], Length[Cases[sector, -1]]];
      pos = Flatten[Position[sector, -1]];
      temp2 = PutAtPositions[pos, ##, Length[sector]] & /@ temp2;
      ,
      temp2 = {Table[0, {Length[sector]}]}
      ];
    If[Length[Cases[sector, 0]] > 0,
      temp3 = (level[[3]])*Delta[SBasisRL[pn],Length[sector]];
      ,
      temp3 = Table[0, {Length[sector]}]
    ];
    temp =
      Flatten[Table[
          temp1[[i]] + temp2[[j]], {i, 1, Length[temp1]}, {j, 1,
            Length[temp2]}], 1];

   (* temp=(##+temp3)&/@temp;*)

(*    For[i=1,i<=Length[temp],i++,
        For[j=1,j<=Length[HPI[pn]],j++,
        Print[temp];
            temp=ReplacePart[temp,ReplacePart[temp[[i]],1,j],i];
        ]
    ];  *)
    temp = {pn, temp3+Degree2Point[##, sector/.{2->1}]} & /@ temp;

    temp]


MakeRelation[n_,shift_]:=Module[{i,j,temp,Coe,p,pos,ssector},
                                          (*produces an IBP*)
    tempelement=Reap[
        (temp={shift[[1]],##+shift[[2]]};
        Coe=Expand[SBasis0C[shift[[1]],n,##]/.AVRulesD[shift[[2]]]];
        If[Not[Coe===0],EqCoeff[Sow[ObtainNN[temp]]]=MyToString[Coe,InputForm]];
        )&/@SBasis0D[shift[[1]],n];
    ][[2]];
    If[Length[tempelement]===0,Return[{}],tempelement=tempelement[[1]]];
    Return[tempelement];
  (*  ssector=SSector[shift[[1]],shift[[2]]];*)
    
(*    p=HighestNumberPosition[tempelement];
    temp=tempelement[[p]];
    Return[Prepend[Delete[tempelement,p],temp]];*)
]



ReduceRelation[list_,point_]:=Module[{temp,i,xx,BackList,timecounter,j,l},   
(*    mbl=mbl-TimeUsed[]; *)

   (* mbl=mbl-TimeUsed[]; 
                                                             *)
    BackList=MakeBackList[list,point];
(*    mbl=mbl+TimeUsed[];                                *)
    If[And[Length[BackList]>0,HigherNumber[point,BackList[[1]]],Not[point===BackList[[1]]]],Return[False]];
(*

    If[And@@((Head[GetTableD[##]]=!=TableD)&/@list),(*mbl=mbl+TimeUsed[];*)Return[False]];
    *)
(*    Substitute[Sort[list,HigherNumber],True];*)
Substitute[BackList,True];
    result=SubstituteOne[list,Null,True];
    result=UseRelation[result,point];
(*    mbl=mbl+TimeUsed[];*)
    Return[result];
]



UseRelation[list_,point_]:=Module[{temp,xx,ccc,iii,j,tbd},
                    (*is called after everything has been
                    substituted, makes a new proper expression*)
   If[Length[list]>0,
         j=HighestNumberPosition[list];
         xx=list[[j]];
         tbd=GetTableD[xx];
         If[Not[Head[tbd]===TableD],Return[False]];
         If[And[HigherNumber[point,xx],Not[point===xx]],Return[False]];
         If[RelationOutput,MessagePrint["Relation created for ",xx," of length ",Length[list]]];
         ccc=Coeff[xx];
         (Coeff[##]="-("<>Coeff[##]<>")/("<>ccc<>")")&/@list;
         Coeff[xx]=.;
         MakeTable2[xx,Delete[list,j]];
         Return[True]
    ,
        If[RelationOutput, MessagePrint["Relation reduced to zero"]];
        Return[False]
    ];
]

SProjection[x_,ssector_]:=Module[{i},      (*the positive part of a vector is a sector*)
    Table[If[x[[i]]*ssector[[i]]>0,x[[i]],0],{i,1,Length[x]}]
]


(*produces the IBPs in a sector and sorts the elements in a way
that the elements will be for a general point of a sector;
Is used to determine the highest member of an IBP when possible*)
IBPShifts[pn_, ssector_,i_] := IBPShifts[pn,ssector,i] = Module[{spoint,temp},
    spoint = SPoint[ssector];
    (GetII[##][[2]] - spoint - ssector)&/@
        Sort[Evaluate[ObtainNN[{pn, ## + spoint + ssector}] & /@ SBasis0D[pn, i]],HigherNumber]
]

UsedIBP[x_,y_]:=Module[{temp},
    If[TableIBP[x[[1]]],Return[]];
    If[Head[TableIBP[x[[1]]]]===TableIBP,TableIBP[x[[1]]]=Table[0,{y}]];
    (TableIBP[x[[1]]]=ReplacePart[TableIBP[x[[1]]],1,x[[2]]]);
    If[Times@@TableIBP[x[[1]]]===1,TableIBP[x[[1]]]=True];
]
(*writes into tables that an IBP has been used*)


(*--------------------------------------------------------------*)
(*The following functions are used to load start files, rules and s-bases.
The basic idea is that you can use the LoadSBases and LoadStart commands
in two ways - either simply naming a file or also naming a number,
that will be the problem number for the start or basis being loaded.
The bases or start files are stored without a problem number
specified. If you load them without a number, then the problem
number is assumed (that can be used for fast tests, but in real
problems you will require multiple problems at the same time).
So if the bases or tables are loaded with a number, then
first the 0 bases or start are cleared with the ClearSBases or
ClearStart(!!!) function. Then the problems are assigned with
the CopySBases or CopyStart(!!!) functions.
One more point is that when you load a start file or a sbases file
then you specify a file name without an extension. If there is a
file with the extension "rules" and the same file name in the same
directory, it is also loaded ate the same time. It should contain
rules in the following format:
RULES[region_]:=G[x_]:>....
or
RULES[pn_,region_]:=G[pn_,x_]:>....
In the first case the problem number will be appended
automatically by the CopyRules function.
The last step of the load process is to define the regions,
that are stored in the SBasisM[pn] variable. They are defined
according to RULES definitions, but keeping in mind that
the reduction should always go from regions with
smaller numbers to regions with greater numbers.*)


CreateProblem[pn_,n_]:=Module[{temp,sectors},
    ExampleDimension[pn]=n;
    SBasis0L[pn]=0;
    HPI[pn]={};
    SBasisM[pn]={};
    SBasisRL[pn]=0;
    SBasisS[pn]={{Range[n],Table[1,{n}],Table[0,{n}]}}; (*symmetries*)
    sectors=Flatten[Outer @@ Prepend[Table[{-1, 1}, {n}], List], n-1];
    temp={SBasisR[pn,##],False}&/@sectors;
    Apply[Set,temp,{1}];
    temp={SBasisL[pn,##],0}&/@sectors;
    Apply[Set,temp,{1}];
    temp={SBasisE[pn,##],{}}&/@sectors;
    Apply[Set,temp,{1}];
]




LoadSBases[x_]:=Module[{temp},
    If[Burning,ErrorPrint["FIRE is burning, can't load more sbases"];Abort[]];
    FILES=x;
    ClearSBases[0];
    Get[FILES <> ".sbases"];
    If[Head[SBasisM[0]]==SBasisM,SBasisM[0]={}];
    If[Head[HPI[0]]===HPI,HPI[0]={}];
    If[And[Not[Head[SBasis0L[0]]===SBasis0L],Not[NumberQ[Head[SBasis0L[0]]]]],
        MessagePrint["SBases loaded"];
        Off[Get::"noopen"];
        Get[FILES <> ".rules"];
        On[Get::"noopen"];
        CopyRules[0];
        ProblemFileName[0]=FILES;
    ,
        ErrorPrint["SBases not loaded - probably an old file format"];
    ]
]

LoadSBases[x_,number_] := Module[{temp},
    If[Burning,ErrorPrint["FIRE is burning, can't load more start files"];Abort[]];
    If[number==0,ErrorPrint["Problem number should not be equal to zero"];Return[]];
    FILES=x;
    ClearSBases[0];
    Get[FILES <> ".sbases"];
    If[Head[SBasisM[0]]==SBasisM,SBasisM[0]={}];
    If[Head[HPI[0]]===HPI,HPI[0]={}];
    If[And[Not[Head[SBasis0L[0]]===SBasis0L],Not[NumberQ[Head[SBasis0L[0]]]]],

        If[Length[SBasisS[0][[1]]]===2,SBasisS[0]={##[[1]],##[[2]],Table[0,{Length[##[[1]]]}]}&/@SBasisS[0]];

        MessagePrint["SBases loaded"];
        ClearSBases[number];
        CopySBases[0,number];
        ClearSBases[0];
        Off[Get::"noopen"];
        Get[FILES <> ".rules"];
        On[Get::"noopen"];
        CopyRules[number];
        ProblemFileName[number]=FILES;
        SetSBasisM[number];
    ,
        ErrorPrint["SBases not loaded - probably an old file format"];
    ]
]


LoadStart:=Module[{temp},
    If[Burning,ErrorPrint["FIRE is burning, can't load more start files"];Abort[]];
    ProblemNumber=0;
    ClearStart[0];
    If[Length[{##}]>0,FILES={##}[[1]]];
    If[ValueQ[FILES]==False,
        ErrorPrint["File not defined"]
    ,
        Get[FILES <> ".start"];
        If[And[Not[Head[SBasis0L[0]]===SBasis0L],Not[NumberQ[Head[SBasis0L[0]]]]],

            If[Length[SBasisS[0][[1]]]===2,SBasisS[0]={##[[1]],##[[2]],Table[0,{Length[##[[1]]]}]}&/@SBasisS[0]];
            If[Head[HPI[0]]===HPI,HPI[0]={}];
            MessagePrint["Initial data loaded"];
            If[Length[{##}]>1,ProblemNumber={##}[[2]];CopyStart[0,ProblemNumber]];
            ,
            ErrorPrint["Failed"];
            Clear[SBasisL,ExampleDimension,SBasisR,SBasisE,SBasisRL,SBasisS,SBasis0L,SBasis0D,SBasis0C,SBasisM];
            Return[]
        ];
            Off[Get::"noopen"];
            Get[FILES <> ".rules"];
            On[Get::"noopen"];
            If[Head[SBasisRL[ProblemNumber]]===Symbol,SBasisRL[ProblemNumber]=0];
            If[Head[HPI[0]]===HPI,HPI[0]={}];
            CopyRules[ProblemNumber];
         (*   ProblemFileName[ProblemNumber]=FILES;*)
            If[ProblemNumber>0,SetSBasisM[ProblemNumber]];
    ];
]&;

ClearStart[n_]:=Module[{temp},
    temp={ExampleDimension,SBasis0L,SBasis0D,SBasis0C,SBasisL,SBasisS,SBasisR,SBasisE,SBasisRL,SBasisM,HPI};
    ClearForFirst[##,n]&/@temp;
]

CopyStart[value1_,value2_]:=Module[{temp},
    temp={ExampleDimension,SBasis0L,SBasis0D,SBasis0C,SBasisL,SBasisS,SBasisR,SBasisE,SBasisRL,SBasisM,HPI};
    CopyWithFirst[##,value1,value2]&/@temp;
]

ClearSBases[n_]:=Module[{temp},
    temp={ExampleDimension,SBasis0L,SBasis0D,SBasis0C,SBasisL,SBasisD,SBasisA,SBasisH,SBasisO,SBasisC,SBasisS,SBasisR,SBasisE,SBasisRL,SBasisM,HPI};
    ClearForFirst[##,n]&/@temp;
]

CopySBases[value1_,value2_]:=Module[{temp},
    temp={ExampleDimension,SBasis0L,SBasis0D,SBasis0C,SBasisL,SBasisD,SBasisA,SBasisH,SBasisO,SBasisC,SBasisS,SBasisR,SBasisE,SBasisRL,SBasisM,HPI};
    CopyWithFirst[##,value1,value2]&/@temp;
]

CopyRules[number_]:=Module[{temp,i},
    temp=DefinedFor[RULES];
    temp=Select[temp,(Head[##[[1]]]===List)&];
    For[i=1,i<=Length[temp],i++,
        yyy=RULES@@Prepend[temp[[i]],number];
        Evaluate[yyy]:=Evaluate[(RULES@@temp[[i]])/.G[x_]:>G[number,x]];
        RULES[Sequence@@temp[[i]]]=.
    ];
]

SetSBasisM[number_]:=Module[{temp},
    If[And[Head[SBasisM[number]]===List,Length[SBasisM[number]]>0],Return[]];
    If[Head[SBasisM[number]]===SBasisM,SBasisM[number]={}];
    temp=DefinedFor[RULES];
    temp=Select[temp,(##[[1]]===number)&];
    If[And[Times@@(##[[2]])===0,Not[MemberQ[SBasisM[number],##[[2]]]]],
        AppendTo[SBasisM[number],##[[2]]]
    ]&/@temp;
    SBasisM[number]=Sort[SBasisM[number],
        If[Position[#1,0]===Position[#2,0],
                And@@((##>=0)&/@(#1-#2))
            ,
            True
        ]&
    ];
]

ClearForFirst[name_,value_]:=Module[{temp,i},
    temp=DefinedFor[name];
    temp=Select[temp,(##[[1]]===value)&];
    Apply[(name[##]=.)&,temp,1];
]

CopyWithFirst[name_,value1_,value2_]:=Module[{temp,i},
    temp=DefinedFor[name];
    temp=Select[temp,(##[[1]]===value1)&];
    For[i=1,i<=Length[temp],i++,
        yyy=name@@ReplacePart[temp[[i]],value2,1];
        Evaluate[yyy]=name@@temp[[i]]
    ]
]


SaveData[x_] := Module[{temp},
    Put[Null,x];
    Save[
        x, {ExampleDimension, SBasis0L, SBasis0D, SBasis0C, SBasisL, SBasisD,
          SBasisA, SBasisH, SBasisO, SBasisC, SBasisS, SBasisR, SBasisE,
          SBasisRL, SBasisM, RULES, Burning, MaxDimension, SectorNumber, MaxRegion,
          RealRegion,RealSectors,RealSector2Number,Number2RealSector,HPI}];]


DumpSaveData[x_] := Module[{temp},
    Put[Null,x];
    DumpSave[
        x, {ExampleDimension, SBasis0L, SBasis0D, SBasis0C, SBasisL, SBasisD,
          SBasisA, SBasisH, SBasisO, SBasisC, SBasisS, SBasisR, SBasisE,
          SBasisRL, SBasisM, RULES, Burning, MaxDimension, SectorNumber, MaxRegion,
          RealRegion,RealSectors,RealSector2Number,Number2RealSector}];]


LoadData[x_] := Module[{temp},
	If[Burning,
		ErrorPrint["Data already loaded"];
		Return[];
	];
    Clear[ExampleDimension, SBasis0L, SBasis0D, SBasis0C, SBasisL, SBasisD,
      SBasisA, SBasisH, SBasisO, SBasisC, SBasisS, SBasisR, SBasisE, SBasisRL,
       SBasisM, RULES, Burning, MaxDimension, SectorNumber, MaxRegion, RealRegion,HPI];
    Get[x];
(*     If[Length[Complement[AllRules[],AllProblems[]]]>0,
        Print["WARNING: the following problems might appear after the application of rules but have not been loaded: ",Complement[AllRules[],AllProblems[]]];
     ];*)
     If[Head[HPI[##]]===HPI,HPI[##]={}]&/@AllProblems[];
     If[Head[RealSectors]===Symbol,
        ErrorPrint["Data file of an old version loaded"];
        ErrorPrint["Performing additional preparations"];
        ErrorPrint["Consider reconstructing the data file to avoid those every time you load it"];
        EnumerateRealSectors[];
        ErrorPrint["Done"];
     ];
    TrueQ[Burning]]


(*-------------------------------------------------------------------------------*)
(*
Let us now explain how to construct start files. Some notations
don't look really nice, but they appeared at the moment I did not
expect the algorithm to become something really functional, and
currently they have been used in many files, so I am not changing
them any longer.

To produce a start file you have to run the Prepare[] function,
but first give values to a list of variables.

First of all, you
set "startinglist" to be a list of IBPs written in terms of shift
and multiplication operators. This is the same format with what the IBP.m code
produces as output.

Then you have to define boundary conditions.
It is done by setting the "RESTRICTIONS" equal to a list of list,
each of those of length equal to the number of indices $n$ in this
problem. If "RESTRICTIONS" contain a list like ${a_1,\ldots,a_n}$,
where all $a_i$ should be $-1$, $0$ or $1$, then it means that the
integrals vanish if the indices corresponding to $-1$ are
non-positive, the ones corresponding to $1$ are positive and the
remaining ones are abritrary.

The symmetries of the diagram are defined by setting one of the
two variables, "SYMMETRIES" or "ODDSYMMETRIES". If all your
symmetries preserve the sign, the you can use the first one and
simply provide a list of possible permutations of indices (no need
to include the identical one). And if sign might be changed, you
set the second one providing a list of pairs --- a permutation and
a set of 1s and -1s ${s_1,\ldots,s_n}$. In this case a point ${a_1,\ldots,a_n}$,
being mapped to a symmetric one will be multiplied by a product
$s_1^{a_1}*\ldots*s_n^{a_n}$.

The parity condition are specified via the following way:
$EVENRESTRICTIONS[list1]=list2$, where $list1$ can have numbers
from ${-1,0,1,2}$ and $list2$ can consist only of zeros and ones.
The meaning of such a statement is that if you take a point ${a_1,\ldots,a_n}$,
where the indices corresponding to $-1$ in $list1$ are
non-positive, the ones corresponding to $1$ are positive,
the ones corresponding to $0$ are equal to zero and the
remaining ones are abritrary, then the sum of indices
corresponding to $1$ in $list2$ should be even, otherwise the
integral is equal to zero.

If there is a regularized line you need to set "RegLine" equal to
the number of the line. The standart shift is assumed to be $((4 - d)/2)$,
but you can use any other one by setting the "RegLineShift"
variable.

Now you can just run Prepare[] and all this data will be
transformed into an internal format. The result can be saved in a
start file by the SaveStart[file_without_extension] command.

The following functions are not commented for they are one of the
oldest parts of the algorithm, that is not really well written and
might be improved later.
*)

Prepare[]:=Module[{temp},
    ProblemNumber=0;
    ExampleDimension[ProblemNumber]=Max @@ Apply[## &,Union[Cases[startinglist, Y[y_], {0, Infinity}],Cases[startinglist, Ym[y_], {0, Infinity}], Cases[startinglist, a[y_], {0, Infinity}]], {1}];
    MessagePrint["Dimension set to ",ExampleDimension[ProblemNumber]];
    dirs = alldirections;
    even=allzerodirections;
    Clear[SBasisL, SBasis0D, SBasis0C, SBasis0L, SBasisA, SBasisD, SBasisC, SBasisO, SBasisS, SBasisR, SBasisE,SBasisRL,SBasisM];
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
        SBasisR[ProblemNumber,dir]=RestrictionsPossible[SPoint[dir]];
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
        ErrorPrint["File not defined"];
    ,
        If[Not[Head[ExampleDimension[ProblemNumber]]===ExampleDimension],
            MessagePrint["Saving initial data"];
            Put[Null, FILES <> ".start"];
            Save[FILES <> ".start", {ExampleDimension,ProblemNumber,SBasisL, SBasis0L,SBasis0D, SBasis0C, SBasisO, SBasisS, SBasisR, SBasisE,SBasisRL}];
        ,
            ErrorPrint["Initial data not ready"]
        ];
    ];
]&;

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

allzerodirections :=  Map[ToExpression[StringDrop[StringDrop[ToString[First[##]], 29], -2]] &,DownValues[EVENRESTRICTIONS], {1}]
KillDenominator[x_] := Expand[LCM @@ Denominator /@ (List @@ x)*x]

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
]


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



(*-------------------------------------------------------------------------------------------------*)



MyFileInfo[x_]:=If[ToString[FileType[x]]==="File",{FileByteCount[x],FileDate[x]},{0,0}]

EnumerateSectors[pn_] := Module[{temp,Done},
    If[Head[SBasisM[pn]]==SBasisM,SBasisM[pn]={}];
    temp = DefinedFor[SBasisR];
    temp =
      Select[temp,
        And[##[[1]] === pn,
            Or[SBasisRL[pn] === 0, ##[[2]][[SBasisRL[pn]]] === 1]] &];
    MaxRegion & /@ temp;
    RealRegion[pn, ##] & /@ Range[Length[SBasisM[pn]]];
    If[Head[SBasisO[##[[1]], ##[[2]]]] === SBasisO,
          SBasisO[##[[1]], ##[[2]]] =
            R3HO[SBasisRL[##[[1]]], Flatten[Position[##[[2]], 1]],
              Length[##[[2]]]]] & /@ temp;
    temp = Sort[temp, HigherPair];
    temp = Transpose[{temp, Range[Length[temp]]}];
    temp = {SectorNumber[##[[1]]], ToDigits[1000000 - ##[[2]], 6]} & /@ temp;
(*    If[Head[FILES]===String,
        Put[{{FileByteCount[FILES<>".sbases"],FileDate[FILES<>".sbases"],MyFileInfo[FILES<>".rules"][[1]],MyFileInfo[FILES<>".rules"][[2]]},{##[[1]][[1]][[2]],##[[2]]}&/@temp},FILES<>".fire"];
    ];*)
    Apply[Set, temp, {1}];
]
AllProblems[] := (##[[1]]) & /@ DefinedFor[SBasisS]

AllRules[]:=Module[{result},
Off[Part::partd];
result = Union[(##[[1]]) & /@
        Cases[Extract[(RULES[##[[1]], ##[[2]]]), 2, Hold] & /@
            DefinedFor[RULES], G[x_, y_], {2, Infinity}]];
On[Part::partd];
result]

Burn[] := Module[{temp},
            If[Burning,ErrorPrint["FIRE already burning"];Retun[False]];
            EnumerateSectors /@ AllProblems[];
            MaxDimension[];
(*            If[Length[Complement[AllRules[],AllProblems[]]]>0,
                Print["WARNING: the following problems might appear after the application of rules but have not been loaded: ",Complement[AllRules[],AllProblems[]]];
            ];*)
            EnumerateRealSectors[];
            Burning=True
        ]
MaxDimension[] :=
    MaxDimension[] =
      Max @@ ((ExampleDimension[##[[1]]]) & /@ DefinedFor[ExampleDimension]);
RealRegion[pn_, r_] :=
  RealRegion[pn, r] =
    If[And[r > 0,
        Or[SBasisL[pn, SBasisM[pn][[r]]] === 0,
          Head[SBasisL[pn, SBasisM[pn][[r]]]] === SBasisL]], 0, r]

SavedPairNumber[x_]:=SavedPairNumber[x]=PairNumber[x]
(*
NewToDigits[x_,y_]:=IntegerDigits[x,10,y]
*)

NewToDigits[x_,y_]:=Module[{temp},
    If[x<0,
        temp=NewToDigits[-x, y];
        Return[ReplacePart[temp,temp[[1]]+5,1]];
    ];
    IntegerDigits[x,10,y]
]

NewZerosString[x_]:=Table[0,{x}]
ZerosString[0] = "";
ZerosString[y_] := ZerosString[y] = ZerosString[y - 1] <> "0";
FivePlus[x_]:=If[x==="0","5",If[x==="1","6",If[x==="2","7",If[x==="3","8",If[x==="4","9",ErrorPrint["FivePlus error ,",x];Abort[]]]]]];
ToDigits[x_, y_] := Module[{temp},


    If[x < 0,
        temp=ToDigits[-x, y];
        Return[FivePlus[StringTake[temp,1]] <> StringDrop[temp,1]]
    ];
    (*sss2=sss2-TimeUsed[];*)
    temp = ToString[x];
    If[StringLength[temp] > y, ErrorPrint["ToDigits error: ", x, " ,", y];
      Abort[]];
    result=ZerosString[y - StringLength[temp]] <> temp;
    (*sss2=sss2+TimeUsed[];*)
    result
]
    
PairNumber[x_] := Module[{temp, pn, ssector, r, ordering, sn, dd, i,l,result},
(*    sss1=sss1-TimeUsed[];*)
    result=Reap[
        (*sss11=sss11-TimeUsed[];*)
        pn = x[[1]];
        ssector = SSector[pn, x[[2]]];
        r = MaxRegion[pn, ssector];
        Sow[NewToDigits[If[pn===0,1,1000 - pn], 3]];
        Sow[NewToDigits[99-r, 2]];
        dd = Pair2Degree[{pn, x[[2]]}];
        r = RealRegion[pn, r];
        (*sss11=sss11+TimeUsed[];
        sss12=sss12-TimeUsed[];*)
        If[r > 0,
            sn = SBasisM[pn][[r]];
            l=Length[Position[sn,0]];
            ordering = SBasisO[pn, sn];
            o1=Take[ordering,l];
            o2=Drop[ordering,l];
            Sow[NewToDigits[##, 2] & /@ (o1.dd)];
            Sow[NewToDigits[ToExpression[SectorNumber[{pn, ssector}]],6]];
            Sow[NewToDigits[##, 2] & /@ (o2.dd)];
        ,
            ordering = SBasisO[pn, ssector];
            Sow[NewToDigits[ToExpression[SectorNumber[{pn, ssector}]],6]];
            Sow[NewToDigits[##, 2] & /@ (ordering.dd)];
        ];
        (*sss12=sss12+TimeUsed[];*)
        Sow[NewZerosString[2(MaxDimension[] - Length[x[[2]]])]];
    ][[2]][[1]];
    (*sss1=sss1+TimeUsed[];*)
    ToString[FromDigits[Flatten[result]]]
]














DoubleMaxPoints[x_]:=Module[{temp,temp2,i,j,min},  
    temp=x;
Label[restart1];
    For[i=1,i<=Length[temp],i++,
        For[j=1,j<=Length[temp],j++,
            If[j==i,Continue[]];
            If[And[temp[[j]][[1]]>=temp[[i]][[1]],temp[[j]][[2]]>=temp[[i]][[2]]],
                temp=Delete[temp,i];
                Goto[restart1];
            ];
        ]
    ];
 temp
]
