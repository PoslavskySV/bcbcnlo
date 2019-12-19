$Kiselev[id_] := Module[{v, a, mQ, mq, M, eQ, res, alphaEm = e^2 / (4 \[Pi])},
  v = Sqrt[1 - 4 (MB + MC)^2 / s];
  mQ = MB; mq = MC; M = MC + MB;
  eQ = -1 / 3; eq = 2 / 3;
  a = mQ / M (1 - eq / eQ (mq / mQ)^4) / (1 - eq / eQ (mq / mQ)^3);

  Switch[id,
    "PP", res = ((\[Pi]^3) alphaS^2 alphaEm^2) / (3^6 4 mq^6) mQ^2 / M^2 fBc^4 (1 - v^2)^3 v^3 (1 - cos^2) (3 eQ (mq / mQ - (1 - v^2) / 2) - 3 eq (1 - (1 - v^2) mq / (2 mQ)) mq^3 / mQ^3)^2;,
    "PV", res = ((\[Pi]^3) alphaS^2 alphaEm^2) / (3^6 16 mq^6)fBc^2 fBc^2 (1 - v^2)^4 v^3 (3 eQ + 3 eq mq^3 / mQ^3)^2 (1 + cos^2); (* (1 + cos^2) corrected *)    ,
    "VV", res = ((\[Pi]^3) alphaS^2 alphaEm^2) / (3^6 8 mq^6)fBc^4 (1 - v^2)^3 v^3 (3 eQ - 3 eq mq^3 / mQ^3)^2 (2 (1 - v^2) + (1 - cos^2) ((1 + v^2) (1 - a)^2 + a^2 / 2 (1 - v^2) (1 - 3 v^2)));
  ];
  Return[res];
];

$Kiselev[id_, $s_, $cos_] := $Kiselev[id] /. {s -> $s, cos -> $cos}