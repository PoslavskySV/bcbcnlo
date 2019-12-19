If[$VersionNumber < 9,
  $CMD = $CommandLine[[3 ;;]];,
  $CMD = $ScriptCommandLine;
];

Print@$CMD;

If[Length[$CMD] != 4, Print@"Incomplete args. Syntax: state loops output"; Quit[]];

$ArgVector = $CMD[[2]];
$ArgLoops = ToExpression@$CMD[[3]];
$ArgOutput = $CMD[[4]];


$loopPrefix = If[$ArgLoops == 0, "tree_", ""];

(* suppress all output *)
$stdout = $Output;
$stream = OpenWrite["/dev/null"];

Get["FeynArts`FeynArts`"];
Get["FeynArtsToRedberry.m"];
$FAVerbose = 1;
$PrePrint = InputForm;


$ExcludeTopologies[V4onExt] = FreeQ[Cases[#, Propagator[External][__]], Vertex[4]] &;
GenerateRedberryAmplitudes[vector_] := Module[{$diagrams, $amplitudes, $eps},
  $diagrams = CreateTopologies[$ArgLoops, 1 -> 4, Adjacencies -> {3}, ExcludeTopologies -> {WFCorrections, Tadpoles, V4onExt}];
  $diagrams = InsertFields[$diagrams,
    {vector} -> {
    (*c-quark*) F[3, {2, Index[Colour, 1]}] ,
    (*c-antiquark*)-F[3, {2, Index[Colour, 2]}],
    (*b-quark*) F[4, {3, Index[Colour, 3]}] ,
    (*b-antiquark*)-F[4, {3, Index[Colour, 4]}]
    },
    Model -> "SMQCD",
    ExcludeParticles -> {V[1], V[2], V[3], V[4], S[_]},
    InsertionLevel -> {Particles},
    Restrictions -> {NoElectronHCoupling, NoLightFHCoupling, NoQuarkMixing},
    ExcludeFieldPoints -> {}, LastSelections -> V[5]
  ];

  (*$diagrams = DiagramSelect[$diagrams, Length[WFCorrectionFields[##]] == 0 || !FreeQ[WFCorrectionFields[##], V[1]] &];*)
  $amplitudes = CreateFeynAmp[$diagrams, MomentumConservation -> True];
  (*$amplitudes = CreateFeynAmp[$diagrams, PreFactor -> 1];*)

  Which[vector === V[1], $eps = eps, vector === V[2], $eps = epsZ];

  $amplitudes = Table[
    ToRedberry[$amplitudes[[i, 3]],
      ReplacePolarizations -> {k -> $eps},
      Momentums -> {{k}, {pCharm, paCharm, pBottom, paBottom}, {q}}],
    {i, 1, Length[$amplitudes]}
  ];

  Return[$amplitudes];
];


Which[
  $ArgVector == "gamma",
  $amplitudes = GenerateRedberryAmplitudes[V[1]];,
  $ArgVector == "Z",
  $amplitudes = GenerateRedberryAmplitudes[V[2]];,
  $ArgVector == "all",
  $amplitudes = Flatten[GenerateRedberryAmplitudes /@ {V[1], V[2]} ];
];

Quiet@CreateDirectory[Directory[] <> "/" <> $ArgOutput <> "/"];

$Output = $stream;
Do[
  f = OpenWrite[Directory[] <> "/" <> $ArgOutput <> "/amp_" <> $loopPrefix <> ToString[i - 1]];
  WriteString[f, $amplitudes[[i]]];
  Close[f];
  , {i, 1, Length[$amplitudes]}
];


(* recover output *)
Close[$stream];
$Output = $stdout;
