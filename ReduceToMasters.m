If[$VersionNumber < 9,
  $CMD = $CommandLine[[3 ;;]];,
  $CMD = $ScriptCommandLine;
];


$RecursionLimit = 16384;
$StartingTime = AbsoluteTime[];
$ElapsedSeconds[] := Round[AbsoluteTime[] - $StartingTime];
$ConsoleBoldGreen = "\033[1m\033[32m";
$ColsoleBoldCyan = "\033[1m\033[36m";
$ConsoleBoldWhite = "\033[1m\033[37m";
$ConsoleBlue = "\033[34m";
$ConsoleResetColor = "\033[0m";
$DoAssertions = True;
$Debug = True;
$Log[pref_, x_] := If[$Debug, Print[$ConsoleBoldGreen <> "[" <> pref <> " " <> ToString[$ElapsedSeconds[]] <> "s] " <> $ConsoleBoldWhite <> x <> $ConsoleResetColor]];
$Log[x_] := $Log["Mathematica", x];

If[$DoAssertions, On[Assert]];

$$DoRedberry = True;
$$DoApart = True;
$$DoFIRE = True;
$$DoAnalytics = True;

(* Reading setup *)
$AmpsPath = If[Length[$CMD] == 0, "amps/", $CMD[[2]] ];
Get[ToFileName[$AmpsPath, "MathematicaSetup.m"]];

(* Check mandelstam correctness *)
$$TotalSquaredMass = Total[$ExternalMomentas^2] /. $Mandelstam;
Assert[s === Simplify[Expand[Total[$ExternalMomentas[[3 ;;]]]^2] //. $Mandelstam, s + t + u == $$TotalSquaredMass]];


$MinimalEnergy = Total[Sqrt[$ExternalMomentas^2 /. $Mandelstam] // Simplify]^2;
$Assumptions = MU > 0 && MD > 0 && MC > 0 && MS > 0 && MT > 0 && MB > 0 && s > 0 && s > $MinimalEnergy;

$Log@("Running for " <> $AmpsPath);
$Log@"Loading packages";
Print@$ConsoleBlue;
Quiet@Get["pkg/Apart.m"];
Quiet@Get["pkg/FIRE/init.m"];
Quiet@Get["X`"];
Print@$ConsoleResetColor;



(***************************************  Helper functions and variables **********************************************)


$AllMomentas = Join[$InternalMomentas, $ExternalMomentas];
$LoopVariables = $LoopVariablesDefinitions[[All, 1]];
ToXDotReplacements = DeleteDuplicates[(Times @@ # -> LDot @@ #) & /@ Tuples[$AllMomentas, {2}]];
ToXDot[x_] := x /. $Mandelstam /. ToXDotReplacements;

$XMandelstam = $Mandelstam /. ToXDotReplacements;
Do[AppendTo[$XMandelstam, LDot[mom, $AuXVector] -> 0], {mom, Join[$ExternalMomentas, {$AuXVector}]}];
$ExpandLoopVariables[x_] := x //. $LoopVariablesDefinitions;
$ApplyMandelstam[x_] := x //. $Mandelstam;

$RandomQPsubs = (# -> Prime[RandomInteger[10000]] MC^2) & /@ $LoopVariables;
AppendTo[$RandomQPsubs, s -> (100 * Max[$RandomQPsubs[[All, 2]] /. MC -> 1]) * MC^2];



(****************************************** Loading amplitudes ********************************************************)

(* Load amplitudes from Redberry *)
$Log@"Loading amplitudes from Redberry";

RedberryAmplitudes = {};
Module[{file, i = 0},
  While[True,
    file = ToFileName[Directory[], $AmpsPath] <> "amp_" <> ToString[i] <> ".m";
    If[! FileExistsQ[file], Break[]];
    AppendTo[RedberryAmplitudes, Import[file]];
    ++i;
  ]
][];

(* Reduce the number of loop scalars *)
$LoopVariablesDefinitions = Select[$LoopVariablesDefinitions, !FreeQ[RedberryAmplitudes, #[[1]]]&];
$LoopVariables = $LoopVariablesDefinitions[[All, 1]];



(***************************************** Partial fractioning ********************************************************)


$DoApart[expr_Plus, $vars_] := Module[{},
  If[Length[$Scalars] == 0, Throw["Aparting sum with no scalar abbreviations"]];
  Return[Collect[expr, $Scalars, $DoApart[#, $LoopVariables]&]];
];

(* Perform partial fractioning using Apart *)
$DoApart[expr_, $vars_] := Module[{temp = expr},
  temp = $PreApart[temp, Alternatives @@ $vars];
  temp = temp /. $PreApart[x_, y_] :> $Apart[x, List @@ y];
  temp = Expand[temp];
  temp = Collect[temp, _$ApartIR, Factor];
  temp = $ApartComplete[temp, $vars];
  Return[temp];
];

(* Derives list of propagators *)
$PropagatorList[amps_] := Module[{},
  DeleteDuplicates@(Union @@ ($ApartUnion[#] /. $ApartIR[_, _, x_, _] :> x & /@ amps))
];


$UndepressReplacements[x_] := Together[Expand[$ApplyMandelstam[Expand[$ApplyMandelstam[x]]]]];
(* Undepress denominator polynomial *)
$Undepress[x_] := Together[Expand[$ApplyMandelstam[Expand[x /. FDen[q_, x0_, m_] :> (q + x0)^2 - m^2]]]];
(* Converts quadratic polynomial into the form (x + x0)^2 - m^2 *)
$Depress[poly_, x_] /; PolynomialQ[poly, x] := Module[{n = Exponent[poly, x], c, x0, tmp = poly, series},
  If[n =!= 2, Return[poly]];
  c = Coefficient[tmp, x, n];
  tmp = Expand[tmp / c];
  x0 = -Coefficient[tmp, x, n - 1] / (n Coefficient[tmp, x, n]);
  series = Series[tmp, {x, x0, n}];
  tmp = c FDen[x, -$UndepressReplacements[x0], Simplify[Sqrt[-$UndepressReplacements[SeriesCoefficient[series, 0]]]]];
  Assert[$Undepress[tmp] === $UndepressReplacements[poly]];
  Return[tmp];
];
$Depress[expr_, x_] := expr;
$Depress[x_] := Fold[$Depress, x, $InternalMomentas];


(* Doing Apart *)
If[$$DoApart,
  $Log["Apart", "Doing $Apart for " <> ToString[Length[RedberryAmplitudes]] <> " amplitudes"];
  ApartedAmplitudes = {};
  Module[{tmp, test},
    For[i = 1, i <= Length[RedberryAmplitudes], i++,
      tmp = RedberryAmplitudes[[i]];
      AppendTo[ApartedAmplitudes, $DoApart[tmp, $LoopVariables]];
      $Log["Apart", ToString[i] <> "th diagram done"];
    ]][];
  $Log@"Checking $Apart...";
  (*test = Factor[((Plus @@ ApartedAmplitudes // $RemoveApart) - Plus @@ RedberryAmplitudes) /. $RandomQPsubs];*)
  (*Assert[ test == 0];*)
  (*If[test != 0, Print[InputForm[test]]];*)
  Export[ToFileName[$AmpsPath, "ApartedAmplitudes.m"], ApartedAmplitudes];
  ,
  ApartedAmplitudes = Import[ToFileName[$AmpsPath, "ApartedAmplitudes.m"]];
];



(* Extracting actual denominators *)
ListOfPropagators = $PropagatorList[ApartedAmplitudes];
ListOfPropagatorsForFIRE = ListOfPropagators // $ExpandLoopVariables // Expand;
ListOfPropagatorsDepressed = Map[$Depress, #] & /@ ListOfPropagatorsForFIRE;
For[i = 1, i <= Length[ListOfPropagators], i++, $PropagatorsIndex[ListOfPropagators[[i]]] = i;];



(*******************************************  Running FIRE  ***********************************************************)


If[$$DoFIRE ,
  $Log["FIRE", "Building IBPs for " <> ToString[Length[ListOfPropagatorsForFIRE]] <> " denominators"];
  For[$i = 1, $i <= Length[ListOfPropagatorsForFIRE], $i++,
    ClearIBP[];
    Propagators = ListOfPropagatorsForFIRE[[$i]];
    Internal = $InternalMomentas;
    External = Select[$ExternalMomentas, !FreeQ[Propagators, #]&];
    PrepareIBP[];
    startinglist = Flatten[Outer[(IBP[#1, #2] //. $Mandelstam) &, Internal, Join[Internal, External]], 1];
    Prepare[$i];
    If[Mod[$i, 10] == 0, $Log["FIRE", ToString[$i] <> "th denominator done"]];
  ];
  ClearIBP[];
  Burn[];

  $Log["FIRE", "Reducing to masters with FIRE"];
  ReducedAmplitudes = {};
  Module[{tmp, i},
    For[i = 1, i <= Length[ApartedAmplitudes], i++,
      tmp = ApartedAmplitudes[[i]];
      AppendTo[ReducedAmplitudes, tmp /. $ApartIR[_, _, x_, n_] :> F[$PropagatorsIndex[x], -n]];
      $Log["FIRE", ToString[i] <> "th diagram done"];
    ]][];

  Export[ToFileName[$AmpsPath, "ReducedAmplitudes.m"], ReducedAmplitudes];
  ,
  ReducedAmplitudes = Import[ToFileName[$AmpsPath, "ReducedAmplitudes.m"]];
];



(************************************* PackageX related functions *****************************************************)

<< ABFunctions`;

FDenList::"Just a form for handling propagator denominators and numerators :
FDenList[Num[numerator], denominator_1, denominator_2, ...]is equivalent to
numerator / (denominator_1 * denominator_2 * ...)";

FDenList[Num[num_], c___, x_ y_, b___] := x^-1 * FDenList[Num[num], c, y, b] /; FreeQ[x, _FDen];
(* Converts FIRE G-functions to the FDenList notation*)
ReplaceG[i_, list_] := Module[{sqr, expand, fac, j, num},
  fac = {};
  num = 1;
  Do[
    If[list[[j]] < 0,
      Assert[Head[ListOfPropagatorsDepressed[[i]][[j]]] =!= FDen];
      num *= ToXDot[ListOfPropagatorsDepressed[[i]][[j]]]^(-list[[j]]);
      ,
      AppendTo[fac, ConstantArray[ListOfPropagatorsDepressed[[i]][[j]], list[[j]]]];
    ];
    , {j, Length[list]}];
  fac = Flatten[fac, Infinity];
  PrependTo[fac, Num[num]];
  Return[FDenList @@ fac];
];
ReplaceG[x_] := x /. G[i_, list_] :> ReplaceG[i, list];

(* Shifts loop momenta so that the first denominator in the FDenList is just 1/(q^2-m^2) *)
ShiftMomenta[x_FDenList] := Module[{moms, shift, temp = x},
  moms = DeleteDuplicates[(List @@ temp)[[2 ;;, 2]]];
  shift = moms[[1]];
  temp = temp /. FDen[a_, b_, c_] :> FDen[a, Together[b - shift], c];
  temp = temp /. Num[a_] :> Num[Expand[a /. q -> q - shift] // $UndepressReplacements];
  Return[temp];
];

(* Prepares amplitude to the form used by PackageX *)
ToX[x_FDenList] := Module[{tmp},
  tmp = ShiftMomenta[x];
  tmp = tmp //. FDenList[Num[num_], FDen[q_, 0, M1_]] :> LI[num, q, M1];
  tmp = tmp //. FDenList[Num[num_], FDen[q_, 0, M1_], FDen[q_, p_, M2_]] :> LI[num, q, p, M1, M2];
  tmp = tmp //. FDenList[Num[num_], FDen[q_, 0, M1_], FDen[q_, 0, M2_], FDen[q_, k_, M3_]] :> LI[num, q, $AuXVector, k, M1, M2, M3];
  tmp = tmp //. FDenList[Num[num_], FDen[q_, 0, M1_], FDen[q_, p_, M2_], FDen[q_, k_, M3_]] :> LI[num, q, p, k, M1, M2, M3];
  Return[tmp];
];
ToX[x_] := x /. fd_FDenList :> ToX[fd];

Clear[XCoeff];
XCoeff[x_Plus] := XCoeff /@ x;
XCoeff[x_] := x /; NumberQ[x];
XCoeff[v_] := v /; MemberQ[$AllMomentas, v];
XCoeff[c_ v_] := XCoeff[c] v /; MemberQ[$AllMomentas, v];
$PrepareLI[li_LI] := Module[{tmp = li, args},
  args = {};
  Do[
    el = ExpandAll[el];
    AppendTo[args, If[FreeQ[el, Alternatives @@ $AllMomentas], el, XCoeff[el]]];
    , {el, List @@ li}];
  Return[(LI @@ args) /. XCoeff -> XCoeffHold];
];


ToABCFunctions[x_] := Module[{tmp = x},
  tmp = tmp /. li_LI :> $PrepareLI[li];
  tmp = tmp //. (LI[a___] :> (LoopIntegrate[a] //. XCoeffHold[r_] -> r //. $XMandelstam));
  tmp = tmp //. XCoeffHold[r_] -> r;
  Return[tmp];
];

$To$ABC[tmp_] := tmp /. pvA -> $pvA /. pvB -> $pvB /. pvC -> $pvC;

$From$ABC[tmp_] := tmp /. $pvA -> pvA /. $pvB -> pvB /. $pvC -> pvC;

$Collect$ABC[tmp_, func_] := tmp /. $pvA[x___] :> $pvA @@ Factor[List[x]] /. $pvB[x___] :> $pvB @@ Factor[List[x]] /. $pvC[x___] :> $pvC @@ Factor[List[x]] // Collect[#, {_$pvB, _$pvA, _$pvC}, func] &;

$Collect$ABC[tmp_] := $Collect$ABC[tmp, Factor];

SimplifyABC[tmp_] := tmp // $To$ABC // $Collect$ABC // $From$ABC;

(******************************* Building analytical expressions for loop integrals ***********************************)


(* Calling PackageX *)
$Log@"Building analytical expressions for loop integrals";


$EvaluateMastersToABC[x_] := Module[{tmp = x},
  tmp = tmp // ReplaceG;
  tmp = tmp // ToX;
  tmp = tmp // ToABCFunctions;
  tmp = SimplifyABC /@ tmp ;
  Assert[FreeQ[tmp, _FDen]];
  Assert[FreeQ[tmp, _FDenList]];
  Return[tmp];
];


ChopEps[x_] := Module[{tmp},
  tmp = Series[x, {$eps, 0, 0 }];
  Return[{SeriesCoefficient[tmp, {$eps, 0, -1}] / $eps, SeriesCoefficient[tmp, {$eps, 0, 0}]}];
];

ChopEps[x_Plus] := ChopEps /@ x;

SimplifySqrtsAndLogs[expr_] := Module[{tmp = expr},
  tmp = tmp /. Sqrt[x_] :> FullSimplify[Sqrt[Factor[x]]];
  tmp = tmp /. Log[x_] :> FullSimplify[Log[Factor[x]]];
  tmp = tmp /. Log[4 \[Pi] x_] :> 2 Log[2] + Log[\[Pi]] + Log[x];
  tmp = tmp /. Log[4] -> 2 Log[2] ;
  tmp = tmp /. Log[a_ b_] -> Log[a] + Log[b] ;
  tmp = tmp /. Log[Power[a_, n_Integer]] :> n Log[a] ;
  tmp = tmp /. Log[a_^2] :> 2 Log[a] ;
  Return[tmp];
];

Block[{tmp, ser},
  If[$$DoAnalytics,
    TotalAmplitudeABC = {};
    TotalAmplitude = {};
    TotalAmplitudeDiv = {};
    TotalAmplitudeFin = {};
    For[i = 1, i <= Length[ReducedAmplitudes], i++,
      tmp = $EvaluateMastersToABC[ReducedAmplitudes[[i]]];
      AppendTo[TotalAmplitudeABC, tmp];

      tmp = tmp //. d -> 4 - 2 * $eps;

      ser = ChopEps[ToABCSeries[tmp]];
      AppendTo[TotalAmplitude, Total[ser]];
      AppendTo[TotalAmplitudeDiv, ser[[1]] // SimplifySqrtsAndLogs];
      AppendTo[TotalAmplitudeFin, ser[[2]]];

      $Log["X", ToString[i] <> "th diagram done"];
    ];
    Export[ToFileName[$AmpsPath, "TotalAmplitudeABC.m"], TotalAmplitudeABC];
    Export[ToFileName[$AmpsPath, "TotalAmplitude.m"], TotalAmplitude];
    Export[ToFileName[$AmpsPath, "TotalAmplitudeDiv.m"], TotalAmplitudeDiv];
    Export[ToFileName[$AmpsPath, "TotalAmplitudeFin.m"], TotalAmplitudeFin];
    ,
    TotalAmplitude = Import[ToFileName[$AmpsPath, "TotalAmplitude.m"]];
  ];
];


DivergentAmplitude = Factor[Total[TotalAmplitudeDiv]];
FinitAmplitude = Total[TotalAmplitudeFin];

Export[ToFileName[$AmpsPath, "DivergentPart.m"], DivergentAmplitude];
Export[ToFileName[$AmpsPath, "FinitPart.m"], FinitAmplitude];

$Log["Finished"];
$Log["Divergent part = " <> ToString[DivergentAmplitude, InputForm]];

Print@"\n";
Print[$ColsoleBoldCyan];
Print["Two files created :\n"];
Print["  Finit part : " <> ToFileName[$AmpsPath, "FinitPart.m"]];
Print["  Divergent part : " <> ToFileName[$AmpsPath, "DivergentPart.m"]];
Print[$ConsoleResetColor];