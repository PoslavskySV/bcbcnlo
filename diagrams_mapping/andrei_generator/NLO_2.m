Amp = Get["NLO"];

Amp = List @@ Sum[Amp[[i]], {i, 1, Length[Amp]}];

GraphID[a_, b_, c_, d_] :=  "n" <> ToString[d[[2]]]

FeynAmpDenominator[a___] := Times[a];

Amp = Amp /. {FeynAmp[a_, b_, c_, d_] -> FeynAmp[a, d]};

Put[Amp, "NLOFC"];

Quit[]

