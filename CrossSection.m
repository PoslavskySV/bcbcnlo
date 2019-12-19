(********* Utility variables and functions ***********)
<< X`;
$PreRead = (# /. s_String /; StringMatchQ[s, NumberString] && Precision@ToExpression@s == MachinePrecision :> s <> "`50." &);

$MC = 1.5;
$MB = 4.8;
$MBc = $MB + $MC;
$MT = 174.6;
$MZ = 91.1876;
$GammaZ = 2.4952;
(*$GammaZ = 0;*)
(*Print@"GammaZ = 0!!!";*)

$thetaW = ArcSin[Sqrt[0.23120]];
$CW = Cos[$thetaW];
$SW = Sin[$thetaW];

Eps0Factor = 1;
Eps1Factor = 1;

$e = Sqrt[4 \[Pi] 1 / 137];
pi = \[Pi];
mu = \[Mu]R;
Protect[MC, MB, MT, MZ, s, t, u];

$BcProjFactor = (1 / (2 Sqrt[2]) 1 / (3 Sqrt[2])) fBc;
$PreFactor = $BcProjFactor^4;

NN[expr_] := N[expr
    /. MC -> $MC
    /. MB -> $MB
    /. MBc -> $MBc
    /. MT -> $MT
    /. e -> $e
    /. MZ -> $MZ
    /. GammaZ -> $GammaZ
    /. SW -> $SW
    /. CW -> $CW];

NNBlock[expr_] := Block[{
  MC = $MC, MB = $MB, MZ = $MZ, MT = $MT,
  CW = $CW, SW = $SW, GammaZ = $GammaZ,
  e = $e, tmp},
  tmp = Evaluate[expr];
  Return[tmp];
];

$SMIN = 4 * ($MB + $MC)^2;

Epsilon = \[Epsilon];

RealVariables = {e, gStrong, MC, MB, MT, s, \[Mu]R, MZ, CW, SW, GammaZ};
Unprotect[Conjugate];
(Conjugate[#] = #) & /@ RealVariables;
Protect[Conjugate];
$Assumptions = gStrong > 0 && MC > 0 && MB > 0 && MT > 0 && s > 4 (MC + MB)^2 && MZ > 0 && GammaZ > 0;

$Variables[x_] := Cases[x, _Symbol, Infinity] // DeleteDuplicates;
Dimension[x_] := x /. {MC -> RandomReal[] M, MB -> RandomReal[] M, s -> RandomReal[] M^2}

ReadData[path_, id_] := Module[{},
  LoadedAmplitudes[id]["tree"] = Factor@Import[ToFileName[path, "amp_tree_level.m"]];
  LoadedAmplitudes[id]["treeCounterterms"] = Factor@Import[ToFileName[path, "amp_counterterms_div.m"]];
  LoadedAmplitudes[id]["treeCountertermsFinite"] = Factor@Import[ToFileName[path, "amp_counterterms_fin.m"]];
  LoadedAmplitudes[id]["loopCounterterms"] = Factor@Import[ToFileName[path, "DivergentPart.m"]];
  LoadedAmplitudes[id]["loop"] = Import[ToFileName[path, "FinitPart.m"]];
  LoadedAmplitudes[id]["mtab"] = Import[ToFileName[path, "MultiplicationTable.m"]];
  LoadedAmplitudes[id]["scalars"] = Variables[(LoadedAmplitudes[id]["mtab"] /. Conjugate[x_] :> x)[[All, 1]]];
  LoadedAmplitudes[id]["id"] = id;
];
$CheckLoadedAmplitudes[id_] := If[!ValueQ[LoadedAmplitudes[id]["tree"]], Throw["Unknown data id: " <> ToString[id]]];

$EnsureCacheIsInitialized[id_] := Module[{},
  If[ValueQ[$Cache[id]["tree"]], Return[]];

  $CheckLoadedAmplitudes[id];
  Do[
    $Cache[id][var] = LoadedAmplitudes[id][var] // NN;,
    {var, {"tree", "treeCountertermsFinite", "loop", "mtab"}}
  ];

  $Cache[id]["loop"] = Collect[Total@$Cache[id]["loop"], gStrong];
];

SquareAmplitude[id_, $s_, $t_] := Module[{$u, tree, loop, mtab, subs, total, cTotal, matr2, treeCT},
  $EnsureCacheIsInitialized[id];
  $u = 2 ($MC + $MB)^2 - $s - $t;
  subs = {u -> $u, s -> $s, t -> $t};
  tree = $Cache[id]["tree"] /. subs;
  loop = $Cache[id]["loop"] /. subs;
  treeCT = $Cache[id]["treeCountertermsFinite"] /. subs;
  mtab = $Cache[id]["mtab"] /. subs;

  total = tree + treeCT + loop;
  total = total //. Log[(x_ /; NumberQ[x])  y_] :> Log[x] + Log[y];
  total = total //. Log[x_^n_] :> n Log[x];
  total = Collect[total, gStrong];

  cTotal = total;
  cTotal = total /. Complex[a_, b_] :> Complex[a, -b];
  cTotal = cTotal /. (# -> Conjugate[#] & /@ LoadedAmplitudes[id]["scalars"]);

  matr2 = Collect[ Expand[total * cTotal], gStrong];
  matr2 = matr2 /. mtab;
  (*matr2 = Series[matr2, {gStrong, 0, 6}];*)
  matr2 = {gStrong^4 SeriesCoefficient[matr2, {gStrong, 0, 4}], gStrong^6 SeriesCoefficient[matr2, {gStrong, 0, 6}]};
  Return[$PreFactor (matr2 /. Complex[a_, b_] :> a)]
];

DsDt[id_, $s_, $t_] := Module[{tmp},
  tmp = SquareAmplitude[id, $s, $t] /. gStrong -> Sqrt[4 \[Pi] alphaS];
  (* symmetry factor *)
  tmp = 1 / (2 2) tmp;
  (* cross section factor *)
  tmp = 1 / (16 \[Pi] $s^2) tmp;
  Return@tmp;
];

DsDCosTheta[id_, $s_, $cos_] := Module[{},
  Return[
    DsDt[id, $s, ($MC + $MB)^2 - $s / 2 + Sqrt[$s]Sqrt[$s / 4 - ($MC + $MB)^2] $cos]  (Sqrt[$s]Sqrt[$s / 4 - ($MC + $MB)^2])
  ];
];

FullCrossSection[id_, $s_] := Module[{dsdcos},
  dsdcos = Evaluate@DsDCosTheta[id, $s, cos];
  Return[Integrate[#, {cos, -1, 1}]& /@ dsdcos];
];

DsDtTreeAnalytic[id_] := Module[{m2},
  m2 = LoadedAmplitudes[id]["tree"];
  m2 = Expand[m2 * Conjugate[m2]] //. LoadedAmplitudes[id]["mtab"];
  (* symmetry factor *)
  m2 = 1 / (2 2) m2;
  (* cross section factor *)
  m2 = 1 / (16 \[Pi] s^2) m2;
  m2 = m2 /. u -> 2(MB + MC)^2 - s - t;
  m2 = $PreFactor m2;
  m2 = m2 /. gStrong -> Sqrt[4 \[Pi] alphaS];
  Return[m2];
];

DsDCosThetaTreeAnalytic[id_] := (Sqrt[s]Sqrt[s / 4 - (MC + MB)^2]) (DsDtTreeAnalytic[id] /. t -> (MC + MB)^2 - s / 2 + Sqrt[s]Sqrt[s / 4 - (MC + MB)^2] cos);