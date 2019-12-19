(* ::Package:: *)

Off[General::spell1];
Off[General::spell];
MakeList[x_] := If[Head[x] === Plus, Apply[List, x, {0}], x]
NumCoeff[x_] := Module[{ii},
    x /. Join[Table[Internal[[ii]] -> 1, {ii, 1, Length[Internal]}],
        Table[External[[ii]] -> 1, {ii, 1, Length[External]}]]
    ]
KillInt[x_] := Module[{ii},
    x /. Table[Internal[[ii]] -> 0, {ii, 1, Length[Internal]}]
    ]
SquaresEv[] := Module[{ii, jj, kk},
    DeleteCases[
      Map[(If[KillInt[##] === 0, ##, 0]) &,
        Union[Map[(##/NumCoeff[##]) &,
            Union[Flatten[
                Map[MakeList,
                  Union[DeleteCases[
                      Flatten[
                        Join[Table[
                            Expand[
                              D[Propagators[[jj]], Internal[[ii]]]*
                                External[[kk]]], {ii, 1,
                              Length[Internal]}, {jj, 1,
                              Length[Propagators]}, {kk, 1,
                              Length[External]}],
                          Table[Expand[
                              D[Propagators[[jj]], Internal[[ii]]]*
                                Internal[[kk]]], {ii, 1,
                              Length[Internal]}, {jj, 1,
                              Length[Propagators]}, {kk, 1,
                              Length[Internal]}]]], 0]], {1}]]], {1}]], {1}],
      0]
    ]
ClearIBP[] := Module[{temp},
    Unprotect[Internal, External, Propagators, IBPPrepared, BackMatrix,
      Squares];
    Internal = {};
    External = {};
    Propagators = {};
    Squares = {};
    BackMatrix = {};
    IBPPrepared = False;
    ]
PrepareIBP[] := Module[{M1, V1, FullMatrix},
    If[IBPPrepared, ErrorPrint["Already prepared"]; Return[]];
    Propagators = Map[Expand, Propagators, {1}];
    Squares = SquaresEv[];
    If[Length[Squares] < Length[Propagators],
      ErrorPrint["Linearly dependant propagators. Perform reduction first"];
      Return[]];
    If[Length[Squares] > Length[Propagators],
      ErrorPrint["Not enough propagators. Add irreducible nominators"]; Return[]];
    M1 = Table[
        Coefficient[Propagators[[ii]], Squares[[jj]]], {ii, 1,
          Length[Propagators]}, {jj, 1, Length[Squares]}];
    V1 = Propagators - M1.Squares;
    FullMatrix =
      Append[Table[Append[M1[[ii]], V1[[ii]]], {ii, 1, Length[M1]}],
        Table[If[ii === Length[M1[[1]]] + 1, 1, 0], {ii, 1,
            Length[M1[[1]]] + 1}]];
    BackMatrix = Inverse[FullMatrix];
    IBPPrepared = True;
    MessagePrint["Prepared"];
    Protect[Internal, External, Propagators, IBPPrepared, BackMatrix,
      Squares];
    ]
SquaresCoeffs[x_] := Module[{ii},
    If[Not[IBPPrepared], ErrorPrint["Use IBPPrepare[] first"]; Return[]];
    Table[Coefficient[x, Squares[[ii]]], {ii, 1, Length[Squares]}]
    ]
YRepr[x_] := Module[{temp},
    If[Not[IBPPrepared], ErrorPrint["Use IBPPrepare[] first"]; Return[]];
    If[x==0,Return[0]];
    temp = SquaresCoeffs[x];
    temp = Append[temp, Expand[x - temp.Squares]];
    temp = temp.BackMatrix;
    Sum[temp[[ii]]*Ym[ii], {ii, 1, Length[temp] - 1}] + Last[temp]
    ]
IBP[x_, y_] := Module[{kk},
    If[Not[IBPPrepared], ErrorPrint["Use IBPPrepare[] first"]; Return[]];
    (Expand[
            Sum[If[D[Propagators[[kk]], x] === 0,
                0, -a[kk]YRepr[D[Propagators[[kk]], x]*y]*Y[kk]], {kk, 1,
                Length[Propagators]}]] /.
          Table[Y[kk]*Ym[kk] -> 1, {kk, 1, Length[Propagators]}]) + D[y, x]*d
    ]
IBP2[x_, y_] := Module[{kk,qq},
    If[Not[IBPPrepared], ErrorPrint["Use IBPPrepare[] first"]; Return[]];
    (Expand[
    Sum[a[kk]*a[qq]*YRepr[D[Propagators[[kk]], x]*D[Propagators[[qq]], y]]*Y[kk]*Y[qq],
        {kk, 1,Length[Propagators]}, {qq, 1,Length[Propagators]}]+
    Sum[a[qq]*YRepr[D[Propagators[[qq]], x]*D[Propagators[[qq]], y]]*Y[qq]*Y[qq],
    {qq, 1,Length[Propagators]}]+
    Sum[-a[qq]*D[D[Propagators[[qq]], y],x]*d*Y[qq],
    {qq, 1,Length[Propagators]}]
    ] /.
        Join[  Table[Y[kk]*Ym[kk] -> 1, {kk, 1,
        Length[Propagators]}],
            Table[Y[kk]^2*Ym[kk] -> Y[kk], {kk, 1, Length[Propagators]}]
        ])
]
ClearIBP[];
(*
On[General::spell1];
On[General::spell];
*)
