<< X`;

$eps = \[Epsilon];
iEps = I 10^-15;

Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 2, x_] := (1 - Log[1 - x] + Log[1 - x] / x);
Derivative[0, 0, 1, 0][Hypergeometric2F1][1, 0, 2, x_] := 0;

$APrefactor = (\[Mu]R^2)^$eps I (2 \[Pi])^4;
$AFunction[n_, m1_] := Module[{d = 4 - 2 $eps},
  Return[-$APrefactor / (4 \[Pi] )^(d / 2) Gamma[n - d / 2] / Gamma[n] (1 / m1^2 )^(n - d / 2)];
];

$AFunction[0] = 0;
$AFunction[m1_] := $AFunction[1, m1];

$ASeries[0] = 0;
$ASeries[m1_] := Module[{},
  Return[(I * m1^2 * Pi^2) / \[Epsilon] - I * m1^2 * Pi^2 * (-1 + EulerGamma - Log[(4 * Pi * \[Mu]R^2) / m1^2]) + (I / 12) * m1^2 * Pi^2 * \[Epsilon] * (6 * (-2 + EulerGamma) * EulerGamma + Pi^2 + 24 * Log[m1] * (-1 + EulerGamma + Log[m1]) + 6 * (2 + 4 * Log[2]^2 + Log[16] + Log[Pi] * Log[16 * Pi]) + 12 * Log[Pi * \[Mu]R^2] - 12 * (EulerGamma + 2 * Log[m1]) * Log[4 * Pi * \[Mu]R^2] + 6 * Log[\[Mu]R^2] * Log[16 * Pi^2 * \[Mu]R^2])];
];

$AEpsTerm[m1_] := $eps Evaluate@SeriesCoefficient[$ASeries[m1], {$eps, 0, 1}];
$AEpsTerm[0] = 0;

$BPrefactor = (2 \[Pi])^4 \[Mu]R^(2 $eps) 1 / (2 \[Pi])^(4 - 2 $eps);
$BFunction[k2_, m1_, m2_] := Module[{ cos01, cos02},
  cos01 = (k2 + m1^2 - m2^2) / (2 m1 Sqrt[k2]);
  cos02 = (k2 - m1^2 + m2^2) / (2 m2 Sqrt[k2]);
  Return[$BPrefactor I \[Pi]^(2 - \[Epsilon]) Gamma[\[Epsilon]] / (2 k2) ((k2 + m1^2 - m2^2) m1^(-2 \[Epsilon]) Hypergeometric2F1[1, \[Epsilon], 3 / 2, cos01^2 + iEps] + (k2 - m1^2 + m2^2) m2^(-2 \[Epsilon]) Hypergeometric2F1[1 , \[Epsilon], 3 / 2, cos02^2 + iEps] )];
];

$BSeries[k2_, m1_, m2_] := Module[{},
  Return[(I * Pi^2) / \[Epsilon] -
      ((I / 2) * (-4 * k2 * Pi^2 + 2 * EulerGamma * k2 * Pi^2 - 2 * k2 * Pi^2 * Log[4] + k2 * Pi^2 * Log[m1^2 / m2^2] + m1^2 * Pi^2 * Log[m1^2 / m2^2] - m2^2 * Pi^2 * Log[m1^2 / m2^2] - 2 * Sqrt[k2^2 - 2 * k2 * m1^2 + m1^4 - 2 * k2 * m2^2 - 2 * m1^2 * m2^2 + m2^4] * Pi^2 * Log[(2 * m1 * m2) / (-k2 + m1^2 + m2^2 - Sqrt[k2^2 + (m1^2 - m2^2)^2 - 2 * k2 * (m1^2 + m2^2)])] - 2 * k2 * Pi^2 * Log[Pi] - 2 * k2 * Pi^2 * Log[\[Mu]R^2 / m2^2])) / k2 + (I * \[Epsilon] * (2 * k2 * ((Pi^2 * (EulerGamma^2 + Pi^2 / 6)) / 4 + Pi^2 * Log[2]^2 + Pi^2 * Log[2] * Log[Pi] + (Pi^2 * Log[Pi]^2) / 4 + 2 * (Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2) * Log[\[Mu]R] + Pi^2 * Log[\[Mu]R]^2 - EulerGamma * (Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2 + Pi^2 * Log[\[Mu]R])) + (-(EulerGamma * Pi^2) / 2 + Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2 + Pi^2 * Log[\[Mu]R]) * ((k2 + m1^2 - m2^2) * (-2 * Log[m1] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)]) + (k2 - m1^2 + m2^2) * (-2 * Log[m2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)])) + (Pi^2 * (((k2 + m1^2 - m2^2) * (4 * Log[m1]^2 - 4 * Log[m1] * Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)])) / 2 + ((k2 - m1^2 + m2^2) * (4 * Log[m2]^2 - 4 * Log[m2] * Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)])) / 2)) / 2)) / k2];
(*Return[(I * Pi^2) / \[Epsilon] + (I * (2 * k2 * (-(EulerGamma * Pi^2) / 2 + Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2 + Pi^2 * Log[\[Mu]R]) + (Pi^2 * ((k2 + m1^2 - m2^2) * (-2 * Log[m1] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)]) + (k2 - m1^2 + m2^2) * (-2 * Log[m2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)]))) / 2)) / k2 + (I * \[Epsilon] * (2 * k2 * ((Pi^2 * (EulerGamma^2 + Pi^2 / 6)) / 4 + Pi^2 * Log[2]^2 + Pi^2 * Log[2] * Log[Pi] + (Pi^2 * Log[Pi]^2) / 4 + 2 * (Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2) * Log[\[Mu]R] + Pi^2 * Log[\[Mu]R]^2 - EulerGamma * (Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2 + Pi^2 * Log[\[Mu]R])) + (-(EulerGamma * Pi^2) / 2 + Pi^2 * Log[2] + (Pi^2 * Log[Pi]) / 2 + Pi^2 * Log[\[Mu]R]) * ((k2 + m1^2 - m2^2) * (-2 * Log[m1] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)]) + (k2 - m1^2 + m2^2) * (-2 * Log[m2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)])) + (Pi^2 * (((k2 + m1^2 - m2^2) * (4 * Log[m1]^2 - 4 * Log[m1] * Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 + m1^2 - m2^2)^2 / (4 * k2 * m1^2)])) / 2 + ((k2 - m1^2 + m2^2) * (4 * Log[m2]^2 - 4 * Log[m2] * Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 3 / 2, iEps + (k2 - m1^2 + m2^2)^2 / (4 * k2 * m2^2)])) / 2)) / 2)) / k2];*)
];

$BFunctionMassless[k2_, m1_] := Module[{},
  Return[$BPrefactor I \[Pi]^(2 - \[Epsilon]) m1^(-2 \[Epsilon])Gamma[1 + \[Epsilon]] / (\[Epsilon] (1 - \[Epsilon]))Hypergeometric2F1[1, \[Epsilon], 2 - \[Epsilon], k2 / m1^2 + iEps]];
];

$BSeriesMassless[k2_, m1_] := Module[{},
  Return[(2 * I) * Pi^2 - I * EulerGamma * Pi^2 + (I * Pi^2) / \[Epsilon] + I * Pi^2 * Log[4] + I * Pi^2 * Log[m1^2 / (-k2 + m1^2)] - (I * m1^2 * Pi^2 * Log[m1^2 / (-k2 + m1^2)]) / k2 + I * Pi^2 * Log[Pi] + I * Pi^2 * Log[\[Mu]R^2 / m1^2] + I * \[Epsilon] * (Pi^2 + (Pi^2 * (EulerGamma^2 + Pi^2 / 6)) / 2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * (2 * Log[2]^2 - 4 * Log[2] * Log[m1] + 2 * Log[m1]^2) + Pi^2 * Log[Pi] + Pi^2 * (2 * Log[2] - 2 * Log[m1]) * Log[Pi] + (Pi^2 * Log[Pi]^2) / 2 + 2 * (Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi]) * Log[\[Mu]R] + 2 * Pi^2 * Log[\[Mu]R]^2 - EulerGamma * (Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi] + 2 * Pi^2 * Log[\[Mu]R]) + (Pi^2 - EulerGamma * Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi] + 2 * Pi^2 * Log[\[Mu]R]) * (-Derivative[0, 0, 1, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2]) + (Pi^2 * (Derivative[0, 0, 2, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] - 2 * Derivative[0, 1, 1, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2])) / 2)];
(*Return[(I * Pi^2) / \[Epsilon] + I * (Pi^2 - EulerGamma * Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi] + 2 * Pi^2 * Log[\[Mu]R] + Pi^2 * (-Derivative[0, 0, 1, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2])) + I * \[Epsilon] * (Pi^2 + (Pi^2 * (EulerGamma^2 + Pi^2 / 6)) / 2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * (2 * Log[2]^2 - 4 * Log[2] * Log[m1] + 2 * Log[m1]^2) + Pi^2 * Log[Pi] + Pi^2 * (2 * Log[2] - 2 * Log[m1]) * Log[Pi] + (Pi^2 * Log[Pi]^2) / 2 + 2 * (Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi]) * Log[\[Mu]R] + 2 * Pi^2 * Log[\[Mu]R]^2 - EulerGamma * (Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi] + 2 * Pi^2 * Log[\[Mu]R]) + (Pi^2 - EulerGamma * Pi^2 + Pi^2 * (2 * Log[2] - 2 * Log[m1]) + Pi^2 * Log[Pi] + 2 * Pi^2 * Log[\[Mu]R]) * (-Derivative[0, 0, 1, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] + Derivative[0, 1, 0, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2]) + (Pi^2 * (Derivative[0, 0, 2, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] - 2 * Derivative[0, 1, 1, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2] + Derivative[0, 2, 0, 0][Hypergeometric2F1][1, 0, 2, iEps + k2 / m1^2])) / 2)];*)
];

$BFunctionMassless2[k2_] := Module[{d = 4 - 2 \[Epsilon]},
  Return[I (I \[Mu]R)^(2 \[Epsilon]) (2 \[Pi])^4 1 / (2^d \[Pi]^(d / 2)) (k2)^-\[Epsilon] (Gamma[1 - \[Epsilon]]^2 Gamma[\[Epsilon]]) / Gamma[2 - 2 \[Epsilon]]];
];

$BSeriesMassless2[k2_] := (I * Pi^2) / \[Epsilon] - I * (-2 * Pi^2 + EulerGamma * Pi^2 - 2 * Pi^2 * Log[2] + Pi^2 * Log[k2] - Pi^2 * Log[Pi] - 2 * Pi^2 * Log[I * \[Mu]R]) - (I / 12) * \[Epsilon] * (-48 * Pi^2 + 24 * EulerGamma * Pi^2 - 6 * EulerGamma^2 * Pi^2 + Pi^4 - 48 * Pi^2 * Log[2] + 24 * EulerGamma * Pi^2 * Log[2] - 24 * Pi^2 * Log[2]^2 + 24 * Pi^2 * Log[k2] - 12 * EulerGamma * Pi^2 * Log[k2] + 24 * Pi^2 * Log[2] * Log[k2] - 6 * Pi^2 * Log[k2]^2 - 24 * Pi^2 * Log[Pi] + 12 * EulerGamma * Pi^2 * Log[Pi] - 24 * Pi^2 * Log[2] * Log[Pi] + 12 * Pi^2 * Log[k2] * Log[Pi] - 6 * Pi^2 * Log[Pi]^2 - 48 * Pi^2 * Log[I * \[Mu]R] + 24 * EulerGamma * Pi^2 * Log[I * \[Mu]R] - 48 * Pi^2 * Log[2] * Log[I * \[Mu]R] + 24 * Pi^2 * Log[k2] * Log[I * \[Mu]R] - 24 * Pi^2 * Log[Pi] * Log[I * \[Mu]R] - 24 * Pi^2 * Log[I * \[Mu]R]^2)

$BFunction[k2_, 0, m2_] := $BFunctionMassless[k2, m2];
$BFunction[k2_, m1_, 0] := $BFunctionMassless[k2, m1];
$BFunction[k2_, 0, 0] := $BFunctionMassless2[k2];
$BSeries[k2_, 0, m2_] := $BSeriesMassless[k2, m2];
$BSeries[k2_, m1_, 0] := $BSeriesMassless[k2, m1];
$BSeries[k2_, 0, 0] := $BSeriesMassless2[k2];

$BEpsTerm[k2_, m1_, m2_] := $eps Evaluate@SeriesCoefficient[$BSeries[k2, m1, m2], {$eps, 0, 1}];
$BEpsTerm[k2_, 0, m2_] := $eps Evaluate@SeriesCoefficient[$BSeries[k2, 0, m2], {$eps, 0, 1}];
$BEpsTerm[k2_, m1_, 0] := $eps Evaluate@SeriesCoefficient[$BSeries[k2, m1, 0], {$eps, 0, 1}];
$BEpsTerm[k2_, 0, 0] := $eps Evaluate@SeriesCoefficient[$BSeries[k2, 0, 0], {$eps, 0, 1}];

$XPreFactor = (2 * \[Pi])^4 * (4 * \[Pi])^$eps * (Gamma[1 - $eps]^2 * Gamma[1 + $eps]) / Gamma[1 - 2 $eps] I / (16 \[Pi]^2);

SimplifyX[expr_] := FullSimplify@Collect[(Collect[expr, _DiscB, Factor] // DiscExpand // KallenExpand) /. Log[x_] :> Log[FullSimplify[x]], _Log, FullSimplify];


(* hold epsilon expansion for A and B functions *)
ToABCSeries[x_] := Module[{tmp = x},
  tmp = tmp /. pvA[0, m_] :> $ASeries[m];
  tmp = tmp /. pvB[___, s_, m1_, m2_] :> $BSeries[s, m1, m2];
  tmp = tmp /. p_pvC :> LoopRefine[$XPreFactor p];
  Return[tmp];
];