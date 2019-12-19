
Amp = Get["NLOFC"];

PropagatorDenominator[a_, b_] := DEN[a, b];

DEN[a_, b_] := DEN[a, b, 1]

DEN /: Power[DEN[a_, b_], j_] := DEN[a, b, j] /; j > 0;

DEN[a_, b_, 0] := 1; 

ChiralityProjector[c_] := gamma[(13 - c)/2];

DiracSlash[c_] := gamma[c];

DiracMatrix[c_] := gamma[c];

DiracSpinor[p_, m_] := diracspinor[p,m];

MetricTensor[a_,b_] := met[a,b];

FourVector[a_Plus, b_] := FourVector[#, b]& /@ a;

FourVector[Times[a_Integer, b_Symbol], c_] := a FourVector[b,c]

FourVector[a_Symbol, b] := ToString[a][b];

sp[a_Plus, b_] := sp[#, b]& /@ a;

sp[a_, b_Plus] := sp[a, #]& /@ b;

sp[Times[a_Integer, b_Symbol], c_] := a sp[b, c];

sp[a_, Times[b_Integer, c_Symbol]] := b sp[a, c];


(* maybe will keep it and change

sp[q1,p1] := sp[p1,q1];

sp[q2,p2] := sp[p2,q2];

sp[q2,q1] := sp[q1,q2];

sp[p1,p1] := mb^2;

*)


(* Colour Algebra *)

sunN = Nc;

SUNTSum[a_, b_, c_, c_] := 0

SUNTSum[a_, b_, b_, c_] := CF IndexDelta[a, c]

SUNT /: SUNT[g1_,c3_,c4_] SUNT[g1_,c5_,c1_] SUNT[g2_,c1_,c3_] SUNT[g2_,c4_,c5_] := - 1/2 CF

SUNT /: SUNF[g3_,g1_,g2_] SUNT[g1_,c4_,c3_] SUNT[g2_,c3_,c1_] SUNT[g3_,c1_,c4_] := I/2 CF CA Nc

SUNT /: SUNF[g3_,g2_,g1_] SUNT[g1_,c4_,c3_] SUNT[g2_,c3_,c1_] SUNT[g3_,c1_,c4_] := - I/2 CF CA Nc
  
SUNT /: SUNT[a_, b_, c_] SUNT[a_, c_, d_] := CF IndexDelta[b, d]

SUNT /: SUNT[g1_, c1_, c2_] SUNT[g2_, c2_, c1_] := 1/2 IndexDelta[g1, g2]

SUNT /: IndexDelta[i_,j_] SUNT[a___, i_, j_] := SUNT[a,i,i] 

SUNT[a_, a_, b_, c_] := CF IndexDelta[b, c]

SUNT[a_, b_, c_, c_] := 1/2 IndexDelta[a, b]

SUNF[a_, b_, c_, c_] := 0

SUNF[a_, b_, c_, b_] := CA IndexDelta[a, c]

SUNF[a_, b_, b_, c_] := - CA IndexDelta[a, c]

SUNF /: SUNF[g1_, g2_, g3_] SUNF[g1_, g2_, g4_] := CA IndexDelta[g3, g4]

SUNF /: SUNF[g1_, g2_, g3_] SUNF[g2_, g1_, g4_] := - CA IndexDelta[g3, g4]

IndexDelta[a_Gluon, b_Gluon] := IndexDelta[b, a] /; a[[1]] > b[[1]]

IndexDelta /: IndexDelta[a_, b_] SUNT[b_, c___] := SUNT[a, c]

IndexDelta /: IndexDelta[i_,j_] SUNT[a___, i_, k_] := SUNT[a,j,k]

IndexDelta /: IndexDelta[i_,j_] SUNT[a___, k_, j_] := SUNT[a,k,i]

IndexDelta /: IndexDelta[g1_, g2_] SUNF[g2_, g3_, g4_] := SUNF[g1, g3, g4]

IndexDelta /: IndexDelta[a_, b_] IndexDelta[c_, b_] := IndexDelta[a,c]

IndexDelta /: IndexDelta[a_, b_] IndexDelta[b_, c_] := IndexDelta[a,c]

IndexDelta /: Power[IndexDelta[a_Colour, b_Colour], 2] := Nc

IndexDelta /: Power[IndexDelta[a_Gluon, b_Gluon], 2] := 2 CF Nc

IndexDelta[a_Colour, a_Colour] := Nc

IndexDelta[a_Gluon, a_Gluon] := 2 CF Nc


Off[General::spell]

Off[General::spell1]

(* quite general settings *)

SubsRules = { 
              MC -> mc, MB -> mb, MT -> mt, MZ -> mZ, CW -> cw, SW -> sw 
	    };

(* problem specific settings *)

SubsRules = { 
              MC -> mc, MB -> mb, MT -> mt, MZ -> mZ, CW -> cw, SW -> sw 
	    };




(* fermion line number for DiracTrace is 6 - change for bigger value if needed *)


DiracTrace[a___] := Dot[Sequence @@ ({a} /. {gamma[b_] -> gamma[6, b]})]


gamma[a_, b_Plus] := gamma[a, #]& /@ b

gamma[a_, Times[b_Integer, c_Symbol]] := b gamma[a, c]


(* check it later *)

gamma[b_Plus] := gamma[#]& /@ b

gamma[Times[b_Integer, c_Symbol]] := b gamma[c]



Unprotect[Dot];

Dot[a___, b_Plus, c___] := Dot[a, #, c]& /@ b

Dot[a___, Times[b_Integer, c_], d___] := b Dot[a, c, d]


Protect[Dot];

Amp = Amp /. SubsRules;

FormWrite[a_List, b_String] := 
  Block[{Dlist = Length[a], fh = OpenWrite[b], SubsL = {I -> i_, 
    FourVector[p_, ind_] :> p[ind], D -> d, Sqrt[2] -> sqrt2}}, 
    WriteString[fh, "\n\n"];
    Do[fline = 0; dloc = a[[i]]; exloc = Factor[(dloc[[3]])]/. SubsL;
      WriteString[fh, "*--#[ " <> dloc[[1]] <> ":" <> "\n\n"]; Write[fh, exloc]; 
      WriteString[fh, "\n\n*--#] " <> dloc[[1]] <> ":" <> "\n\n"], {i, Dlist}]; 
    Close[fh];]

FormWrite[Amp, "forminput"]

Put[Amp, "NLOcheck"];


Quit[]
