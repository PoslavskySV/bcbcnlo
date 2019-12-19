(* Double Bc e+e- NLO production generation *)


SetOptions[$FrontEnd, 
  CommonDefaultFormatTypes -> {"Output" -> TraditionalForm}];
PrependTo[$Path, "/home/andrei/Work/physics/B-physics/BcBcNLO/calc/pkg"];
  
<< FeynArts`FeynArts`
$Verbose = False;


$ExcludeTopologies[V4onExt] = 
  FreeQ[Cases[#, Propagator[External][__]], Vertex[4]] &;
  

Ex[1] = CreateTopologies[1, 2 -> 4, Adjacencies -> {3}, ExcludeTopologies -> {WFCorrections, Tadpoles, V4onExt}];

(* 
 Paint[%,ColumnsXRows->{2,2},FieldNumbers->True,
 DisplayFunction->(Export["topNLO.ps",#,ImageSize->48*{10,11}]&)] 
*)

Ex[2] = InsertFields[Ex[1], {F[2, {1}], -F[2, {1}]} -> {F[3, {2, Index[Colour, 1]}], 
     F[4, {3, Index[Colour, 2]}], -F[4, {3, Index[Colour, 3]}], -F[3, {2, Index[Colour, 4]}]}, 
     Model -> "SMQCD", InsertionLevel -> {Particles}, ExcludeParticles -> {S[1], S[2], S[3], V[3]}, 
     ExcludeFieldPoints -> {}, LastSelections -> V[5]];
   


DoubleBcSelect[a_, b_, c_] := 
 Block[{}, fieldsnumber[Z] = Count[List @@ a, V[2], Infinity];
  fieldsnumber[gamma] = Count[List @@ a, V[1], Infinity];
  (* Print["numbers of Z's = "];
  Print[fieldsnumber[Z]];
  Print["number of gamma's = "];
  Print[fieldsnumber[gamma]]; *) 
  If[(fieldsnumber[Z] == 1 && 
      fieldsnumber[gamma] == 0) || (fieldsnumber[Z] == 0 && 
      fieldsnumber[gamma] == 1) , Return[True], Return[False]];]      
      


Ex[3] = DiagramSelect[Ex[2], DoubleBcSelect[##] &];


(*Shape[Ex[3]]*)


Paint[Ex[3], PaintLevel -> {Particles}, ColumnsXRows -> {5, 7}, 
  DisplayFunction -> (Export["diaNLO.ps", #, 
      ImageSize -> 72*{10, 11}] &), AutoEdit -> True];


(* factor (2 Pi)^(-D LoopNumber) is assumed *)
(* multiply by it the final result later *)


Ex[4] = CreateFeynAmp[Ex[3], MomentumConservation -> True, 
   Truncated -> False, PreFactor -> -I, GaugeRules -> {}];
   

Amp = Ex[4];

Amp = Amp /. {GaugeXi[g] -> xig, GaugeXi[Z] -> xiZ, GaugeXi[A] -> xiA};

Amp = Amp /. {ME -> 0, MU -> 0, MD -> 0, MS -> 0};

Delta[i_, j_] := If[i == j, 1, 0]
Unprotect[KroneckerDelta];
KroneckerDelta[i_, j_] := Delta[i, j]
Protect[KroneckerDelta];


Integral[q1_] := q1;
FourMomentum[Incoming, n_] := ToExpression["p" <> ToString[n]];
FourMomentum[Outgoing, n_] := ToExpression["k" <> ToString[n]];
FourMomentum[Internal, n_] := ToExpression["q" <> ToString[n]];


NonCommutative[p___] := noncom[p];
noncom[p_Plus] := noncom /@ p;
noncom[p_Symbol] := p;

FermionChain[p_Plus] := FermionChain /@ p;
FermionChain[a___, b_Plus, c___] := FermionChain[a, #, c] & /@ b;
FermionChain[a___, b_Times, c___] := 
 Block[{local}, local = Sequence @@ b; FermionChain[a, local, c]];
FermionChain[a___, b_, c___] := 
 b FermionChain[a, c] /; Head[b] =!= noncom
FermionChain[a___, b_noncom, c___] := 
 Block[{local, ll, lll}, lll = b /. noncom -> List;
   ll = noncom /@ lll;
   local = Flatten[List[a, ll, c]];
   FermionChain[local /. List -> Sequence]] /; Length[b] > 1;

FermionChain[a___noncom] := Dot[Sequence @@ (First[#] & /@ {a})]; 



Unprotect[Dot];
Dot[a___, ChiralityProjector[b_], ChiralityProjector[b_], c___] := 
  Dot[a, ChiralityProjector[b], c];
Dot[a___, ChiralityProjector[1], ChiralityProjector[-1], c___] := 0;
Dot[a___, ChiralityProjector[-1], ChiralityProjector[1], c___] := 0;
Dot[a___, ChiralityProjector[1], DiracMatrix[b_], c___] := 
  Dot[a, DiracMatrix[b], ChiralityProjector[-1], c];
Dot[a___, ChiralityProjector[-1], DiracMatrix[b_], c___] := 
  Dot[a, DiracMatrix[b], ChiralityProjector[1], c];
Dot[a___, ChiralityProjector[1], DiracSlash[b_], c___] := 
  Dot[a, DiracSlash[b], ChiralityProjector[-1], c];
Dot[a___, ChiralityProjector[-1], DiracSlash[b_], c___] := 
  Dot[a, DiracSlash[b], ChiralityProjector[1], c];
Protect[Dot];



MatrixTrace[p_Plus] := MatrixTrace /@ p;
MatrixTrace[a___, b_Plus, c___] := MatrixTrace[a, #, c] & /@ b;
MatrixTrace[a___, b_Times, c___] := 
 Block[{local}, local = Sequence @@ b; MatrixTrace[a, local, c]]
MatrixTrace[a___, b_, c___] := 
 b MatrixTrace[a, c] /; Head[b] =!= noncom
MatrixTrace[a___, b_noncom, c___] := 
 Block[{local, ll, lll}, lll = b /. noncom -> List;
   ll = noncom /@ lll;
   local = Flatten[List[a, ll, c]];
   MatrixTrace[local /. List -> Sequence]] /; Length[b] > 1
MatrixTrace[a___noncom] := DiracTrace[Sequence @@ (First[#] & /@ {a})];

DiracTrace[a___, ChiralityProjector[b_], ChiralityProjector[b_], 
   c___] := DiracTrace[a, ChiralityProjector[b], c];
DiracTrace[a___, ChiralityProjector[1], ChiralityProjector[-1], 
   c___] := 0;
DiracTrace[a___, ChiralityProjector[-1], ChiralityProjector[1], 
   c___] := 0;
DiracTrace[a___, ChiralityProjector[1], DiracMatrix[b_], c___] := 
  DiracTrace[a, DiracMatrix[b], ChiralityProjector[-1], c];
DiracTrace[a___, ChiralityProjector[-1], DiracMatrix[b_], c___] := 
  DiracTrace[a, DiracMatrix[b], ChiralityProjector[1], c];
DiracTrace[a___, ChiralityProjector[1], DiracSlash[b_], c___] := 
  DiracTrace[a, DiracSlash[b], ChiralityProjector[-1], c];
DiracTrace[a___, ChiralityProjector[-1], DiracSlash[b_], c___] := 
  DiracTrace[a, DiracSlash[b], ChiralityProjector[1], c];
DiracTrace[a___, DiracSlash[b_], DiracSlash[b_], c___] := 
  sp[b, b] DiracTrace[a, c];
DiracTrace[a___, b_Plus, c___] := DiracTrace[a, #, c] & /@ b;


MetricTensor /: MetricTensor[a_, b_] MetricTensor[b_, c_] := 
 MetricTensor[a, c]
MetricTensor /: MetricTensor[a_, b_]^2 := D;
MetricTensor /: 
 Dot[a___, DiracMatrix[j_], b___] MetricTensor[i_, j_] := 
 Dot[a, DiracMatrix[i], b]
MetricTensor[a_, a_] := D;
MetricTensor /: FourVector[p_, a_] MetricTensor[a_, b_] := 
 FourVector[p, b]
MetricTensor /: MetricTensor[a_, b_] VDEN[c_, b_, p_, 0, xi_] := 
 VDEN[c, a, p, 0, xi]
MetricTensor /: MetricTensor[a_, b_] VDEN[a_, c_, p_, 0, xi_] := 
 VDEN[b, c, p, 0, xi]

FourVector /: Dot[a___, DiracMatrix[i_], b___] FourVector[p_, i_] := 
 Dot[a, DiracSlash[p], b]
FourVector /: 
 DiracTrace[a___, DiracMatrix[i_], b___] FourVector[p_, i_] := 
 DiracTrace[a, DiracSlash[p], b]
FourVector /: FourVector[a_, i_]^2 := sp[a, a]
FourVector /: FourVector[a_, i_] FourVector[b_, i_] := sp[a, b]

Index[Lorentz, n_] := ToExpression["lor" <> ToString[n]]

(*FeynArts to Form color conversion*)

Index[Colour, n_] := ToExpression["j" <> ToString[n]]
Index[Gluon, n_] := n
IndexDelta[j1_Symbol, j2_Symbol] := cprop[j1, j2]
IndexDelta[j1_Integer, j2_Integer] := prop[a[j1], a[j2]]
SUNT[j1_Integer, j2_Symbol, j3_Symbol] := GM[a[j1], j2, j3]
SUNF[j1_Integer, j2_Integer, j3_Integer] := 
 I V3g[a[j1], a[j2], a[j3]]
SUNF[j1_, j2_, j3_, j3_] := 0
SUNF[j1_, j2_, j3_, j2_] := nc prop[a[j1], a[j3]]
SUNF[j1_, j2_, j2_, j3_] := -nc prop[a[j1], a[j3]]
SUNTSum[j1_, j2_, j3_, j3_] := 0
SUNTSum[j1_, j2_, j2_, j3_] := (nc^2 - 1)/2/nc cprop[j1, j3]
SUNT[j1_Integer, j1_Integer, j2_Symbol, 
  j3_Symbol] := (nc^2 - 1)/2/nc cprop[j2, j3]
SUNT[j1_Integer, j2_Integer, j3_Symbol, j3_Symbol] := 
 1/2 prop[a[j1], a[j2]]
 
 
 
Amp = Amp /. {SumOver[a___] -> 1};


Put[Amp, "NLO"]; 

Quit[]


