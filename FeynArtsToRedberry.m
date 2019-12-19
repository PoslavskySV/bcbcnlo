On[Assert];

$RVerbosity = "None";
$LogTrace[x__] := If[$RVerbosity == "All", Print@x];

If[$VersionNumber < 10.2,
  Alphabet["Greek"] = CharacterRange["\[Alpha]", "\[Omega]"];
  Alphabet[] = CharacterRange["a", "z"];
];

$GetIndex[i_, type_] := Module[
  {
    alphabet, letter, index
  },
  Switch[type,
    LatinLower, alphabet = Alphabet[],
    LatinUpper, alphabet = ToUpperCase[Alphabet[]],
    GreekLower, alphabet = (ToString[TeXForm[#]] & /@ Alphabet["Greek"]),
    GreekUpper, alphabet = Complement[(ToString[TeXForm[#]] & /@ ToUpperCase[Alphabet["Greek"]]), ToUpperCase[Alphabet[]]],
    Matrix1, alphabet = # <> "'" & /@ Alphabet[],
    Matrix2, alphabet = # <> "'" & /@ ToUpperCase[Alphabet[]];
  ];

  If[i <= Length[alphabet], Return[alphabet[[i]]] ];

  letter = alphabet[[ Mod[i - 1, Length[alphabet]] + 1]];
  index = Floor[(i - 1) / Length[alphabet]];

  Return[letter <> "_{" <> ToString[index] <> "}"];
];

Assert[$GetIndex[1, LatinLower] == "a"];
Assert[$GetIndex[26, LatinLower] == "z"];
Assert[$GetIndex[27, LatinLower] == "a_{1}"];
Assert[$GetIndex[52, LatinLower] == "z_{1}"];
Assert[
  Table[$GetIndex[i, LatinLower], {i, 1, Length[Alphabet[]] * 4}] ==
      Flatten[{Alphabet[],
        Table[# <> "_{" <> ToString[i] <> "}" & /@ Alphabet[], {i, 1,
          3}]}, Infinity]
];

$GetRedberryIndex[i_, type_] := If[i > 0, "_{", "^{"] <> $GetIndex[Abs[i], type] <> "}";

(* Replace internal, outgoing and loop momentums with definitions *)
$ReplaceMomentums[incoming_List, outgoing_List, internal_List] := Module[
  {
    func = Function[{io, list}, Table[FourMomentum[io, i] -> list[[i]], {i, 1, Length[list]}]]
  },
  Return[func[Incoming, incoming] ~ Join ~ func[Outgoing, outgoing] ~ Join ~ func[Internal, internal]];
];

$ReplaceMomentums[incoming_List, outgoing_List] := $ReplaceMomentums[incoming, outgoing, {}];

Attributes[FeynAmpDenominator] = {};

$InvocationsCounter = 0;
$ToRedberryProduct[expr_, OptionsPattern[{ReplacePolarizations -> {}, Momentums -> {{}, {}, {}}}]] := Module[
  {
    freeIndices,
    repeatedIndices,
    dummyCounter,
    nextDummyIndex,
    indexTypes,
    matrices,
    temp,
    contractionPatt,
    indexPatt,
    $$expandDotInTimes
  (*,*)
  (*InsertPropIndex*)
  },

  ++$InvocationsCounter;
  $LogTrace["Running " <> ToString[$InvocationsCounter] <> " invocation."];

  indexTypes[Lorentz] = LatinLower;
  indexTypes[Gluon] = LatinUpper;
  indexTypes[Colour] = Matrix2;

  matrices["SUNT" ] = "T";
  matrices["DiracMatrix" ] = "G";
  (* Step 1*)
  (* basic replacements *)

  temp = expr;
  temp = temp //. {GS -> gStrong, EL -> e};
  temp = temp //. {FermionChain -> Dot, NonCommutative -> Dot};
  temp = temp //. SumOver[x__] :> 1;

  (* replace chirality projectors with gamma matrices *)
  temp = temp //. {x_ DiracMatrix[i_].ChiralityProjector[-1] y_ + x_ DiracMatrix[i_].ChiralityProjector[1] y_ :> x y DiracMatrix[i]};
  temp = temp //. {ChiralityProjector[x_] :> (1 + x G5) / 2};
  (* Dirac slash *)
  temp = temp //. DiracSlash[a_ + b_] :> DiracSlash[a] + DiracSlash[b];
  temp = temp //. DiracSlash[-a_] :> -DiracSlash[a];

  $LogTrace@"Dirac matrices and other related stuff replaced";

  temp = temp //. Dot[a__, x_Times, b__] :> Dot[a, Sequence @@ x, b];
  $$expandDotInTimes[pr_] := Module[{els, dots, notDots},
    If[FreeQ[pr, _Dot], Return[pr]];
    notDots = dots = {};
    els = List @@ pr;
    Do[
      If[Head[els[[i]]] === Dot,
        dots = Join[dots, List @@ els[[i]]],
        AppendTo[notDots, i]
      ];, {i, 1, Length[pr]}];
    If[Length[dots] == 1,
      Return[pr],
      Return[Dot @@ Join[dots, els[[notDots]]]]
    ];
  ];

  temp = temp //. a_Times :> $$expandDotInTimes[a];

  (* replace denominators *)
  (*temp = temp //. FeynAmpDenominator -> Times;*)
  (*temp = temp //. PropagatorDenominator[momentum_, mass_] :> (1 / (Pair[momentum, momentum] - mass^2));*)
  InsertPropIndex[x_Plus] := Map[InsertPropIndex, x];
  InsertPropIndex[a_ x_] /; NumberQ[a] := a InsertPropIndex[x];
  InsertPropIndex[x_Symbol] := FV[x, "a"];
  temp = temp /. PropagatorDenominator[momentum_, mass_] :> PropagatorDenominator[InsertPropIndex[momentum], mass];

  temp = temp //. {
    Pair[a_ + b_, c_] :> Pair[a, c] + Pair[b, c],
    Pair[c_, a_ + b_] :> Pair[a + b, c],
    Pair[a_, -b_] :> -Pair[a, b],
    Pair[-a_, b_] :> -Pair[a, b]
  };

  (* Unitary matrices *)
  temp = temp //. SUNT[a_, b_, c_] :> SUNT[a];

  (*replace polarizations*)
  temp = temp //. PolarizationVector[_, p_, index_] :> PolarizationVector[p, index];

  (*fix traces*)
  temp = temp //. MatrixTrace[x__] :> MatrixTrace[Dot[x]];

  $LogTrace@"Basic replacements done";


  (* Step 2 *)
  (* replace indices *)

  (*find free indices*)
  freeIndices = DeleteDuplicates[Cases[temp, _Index, Infinity] /. Index[type_, index_] -> index];
  freeIndices = Sort[freeIndices];
  dummyCounter = 0;
  nextDummyIndex := Module[{dc = dummyCounter},
    ++dc;
    While[! FreeQ[freeIndices, dc], ++dc]; dummyCounter = dc;
    Return[dc];
  ];

  temp = temp //. Index[type_, i_] :> $GetIndex[i, indexTypes[type]];

  (* setup dummy indices for DiracSlash and Pair *)
  (*contractionPatt = h_Pair | h_DiracSlash /; FreeQ[h, _Dummy] :> Head[h][Sequence @@ h, Dummy[#]] &;*)
  (*temp = temp //. sum_Plus :> Plus0[Sequence @@ sum, Hold[Dummy[nextDummyIndex]]];*)
  (*temp = temp //. Hold -> Evaluate;*)
  (*temp = temp //. Plus0[x__, Dummy[d_]] :> (Plus[x] //. contractionPatt[d]);*)
  (*process remaining contractions*)
  (*temp = temp //. contractionPatt[Hold[nextDummyIndex]] //. Hold -> Evaluate;*)


  $LogTrace@"Indices generated and replaced";

  (* Step 3 *)
  (* Momentum replacements *)

  temp = temp //. $ReplaceMomentums @@ OptionValue[Momentums];
  If[!FreeQ[temp, Incoming | Outgoing | Internal],
    Print@InputForm@temp;
    Throw["Momentum replacement failed: specify all incoming, outcoming and internal momentums."];
  ];
  temp = temp //. FourVector :> FV;
  temp = temp //. FV[a_ + b_, c___] :> FV[a, c] + FV[b, c];
  temp = temp //. FV[-a_, c___] :> -FV[a, c];
  temp = temp //. FV[i_Integer a_, c___] :> i FV[a, c];
  (* replace spinors*)
  temp = temp //. DiracSpinor[p_Symbol, ME] :> evSpinor[p];
  temp = temp //. DiracSpinor[-p_Symbol, ME] :> eubarSpinor[p];

  temp = temp //. DiracSpinor[p_Symbol, m_] :> ubarSpinor[p];
  temp = temp //. DiracSpinor[-p_Symbol, m_] :> vSpinor[p];


  (* Step 4 *)
  (* final string replacements *)

  (* to string *)
  temp = temp //. Dummy[x_Integer] :> Dummy[$GetIndex[x, LatinLower]];
  temp = ToString[temp, InputForm];
  temp = StringReplace[temp, {"\"" -> "", " " -> "", "\n" -> ""}];
  (* replace ^ with ** *)
  temp = StringReplace[temp, "^" ~~ x : (DigitCharacter | "(" | ")" | "-").. -> "**" ~~ x];

  indexPatt = (WordCharacter | " " | "_" | "^" | "{" | "}")..;
  (* SUNT["a"] -> T_a *)
  temp = StringReplace[temp, (m : "DiracMatrix" | "SUNT") ~~ "[" ~~ x : indexPatt ~~ "]" :> (matrices[m]) ~~ "_{" ~~ x ~~ "}"];
  (* MetricTensor["a", "b"] -> g_ab *)
  temp = StringReplace[temp, "MetricTensor[" ~~ i : indexPatt ~~ "," ~~ j : indexPatt ~~ "]" :> "g_{" ~~ i ~~ j ~~ "}"];
  (* SUNF["A", "B", "C"] -> f_ABC *)
  temp = StringReplace[temp, "SUNF[" ~~ i : indexPatt ~~ "," ~~ j : indexPatt ~~ "," ~~ k : indexPatt ~~ "]" :> "f_{" ~~ i ~~ j ~~ k ~~ "}"];

  (* Pair[x, y] -> x_a*y^a *)
  temp = StringReplace[temp, "Pair[" ~~ p : indexPatt ~~ "," ~~ q : indexPatt ~~ "]" :> "Pair[" ~~ p ~~ "_{a}" ~~ "," ~~ q ~~ "_{a}]"];
  (* DiracSlash[p] -> p_a*G_a *)
  temp = StringReplace[temp, "DiracSlash[" ~~ p : indexPatt ~~ "]" :> "DiracSlash[" ~~ p ~~ "_{a}]"];

  (* FourVector[p, "a"] -> p_a *)
  temp = StringReplace[temp, "FV[" ~~ p : indexPatt ~~ "," ~~ i : indexPatt ~~ "]" :> p ~~ "_{" ~~ i ~~ "}"];
  (* ubarSpinor[p] -> ubar[p_a] *)
  temp = StringReplace[temp, "Spinor[" ~~ p : indexPatt ~~ "]" :> "[" ~~ p ~~ "_a]"];
  temp = StringReplace[temp, "." -> " * "];
  temp = StringReplace[temp, "MatrixTrace" -> "Tr"];

  (* replace polarizations *)
  If[Length[OptionValue[ReplacePolarizations]] != 0,
    (temp = StringReplace[temp, ("PolarizationVector[" ~~ ToString[#[[1]]] ~~ "," ~~ " "... ~~ index : indexPatt ~~ "]" :> ToString[#[[2]]] ~~ "_" ~~ index )];)&
        /@ OptionValue[ReplacePolarizations]
  ];

  Return[temp];
];

ToRedberry[expr_, opts : OptionsPattern[]] := If[
  Head[expr] === Plus,
  Return[StringJoin @@ ( (" + (" <> $ToRedberryProduct[#, opts] <> ")") & /@ (List @@ expr) ) ],
  Return[$ToRedberryProduct[expr, opts]]
];
