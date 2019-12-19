(* Scalar products and Levi-Civita *)
sp[x_List, y_List] := Dot[x, DiagonalMatrix[{1, -1, -1, -1}], y];
sp[x_List] := sp[x, x];
Eps[a_List, b_List, c_List, d_List] := -Dot[LeviCivitaTensor[4], a, b, c, d];


Random4Vector[mass_] := Module[{tmp},
  tmp = Table[10 RandomReal[], {i, 1, 4}];
  While[sp[tmp] < 0, tmp[[1]] = 2 Abs[tmp[[1]]]];
  Return[tmp mass / Sqrt[sp[tmp]]];
];

RotateEuler[ phi_, theta_, ksi_, answ_List] := Module[
  { sp = Sin[phi],
    st = Sin[theta],
    sk = Sin[ksi],
    cp = Cos[phi],
    ct = Cos[theta],
    ck = Cos[ksi],
    x, y, z, res},

  res = answ;
  res[[2]] = (ck * ct * cp - sk * sp) * answ[[2]] + (-sk * ct * cp - ck * sp) * answ[[3]] + st * cp * answ[[4]];
  res[[3]] = (ck * ct * sp + sk * cp) * answ[[2]] + (-sk * ct * sp + ck * cp) * answ[[3]] + st * sp * answ[[4]];
  res[[4]] = -ck * st * answ[[2]] + sk * st * answ[[3]] + ct * answ[[4]];
  Return[res];
];

ApplyBoostTo[bx_, by_, bz_, answ_List] := Module[
  {
    bxx = bx * bx, byy = by * by, bzz = bz * bz,
    b2, gamma, gb2, gb2xy, gb2xz, gb2yz, gbx, gby, gbz, e2, px2, py2,
    pz2
  },

  b2 = bxx + byy + bzz;
  If[b2 == 0., Return[answ]];
  gamma = 1.0 / Sqrt[1 - b2];
  gb2 = (gamma - 1.0) / b2;
  gb2xy = gb2 * bx * by;
  gb2xz = gb2 * bx * bz;
  gb2yz = gb2 * by * bz;
  gbx = gamma * bx;
  gby = gamma * by;
  gbz = gamma * bz;
  e2 = answ[[1]];
  px2 = answ[[2]];
  py2 = answ[[3]];
  pz2 = answ[[4]];
  Return[{gamma * e2 + gbx * px2 + gby * py2 + gbz * pz2,
    gbx * e2 + gb2 * bxx * px2 + px2 + gb2xy * py2 + gb2xz * pz2,
    gby * e2 + gb2 * byy * py2 + py2 + gb2xy * px2 + gb2yz * pz2,
    gbz * e2 + gb2 * bzz * pz2 + pz2 + gb2yz * py2 + gb2xz * px2
  }];
];

ApplyBoostTo[boost_List, answ_List] := Module[{
  bx = boost[[2]] / boost[[1]],
  by = boost[[3]] / boost[[1]],
  bz = boost[[4]] / boost[[1]]},
  Return@ApplyBoostTo[bx, by, bz, answ];
];

RandomGammaPolarization[state_Integer, momentum_List] := Module[
  {tmpEps1, tmpEps2, px, py, pz, phi, theta},

  tmpEps1 = {0, -1 / Sqrt[2], -I / Sqrt[2], 0};
  tmpEps2 = {0, 1 / Sqrt[2], -I / Sqrt[2], 0};

  px = momentum[[2]];
  py = momentum[[3]];
  pz = momentum[[4]];

  phi = ArcTan[px, py];
  theta = ArcCos[pz / Sqrt[px * px + py * py + pz * pz]];
  tmpEps1 = RotateEuler[phi, theta, -phi, tmpEps1];
  tmpEps2 = RotateEuler[phi, theta, -phi, tmpEps2];
  If[state == 0, Return[tmpEps1]];
  If[state == 1, Return[tmpEps2]];
  Throw["Error: unknown polarization"];
];

RandomGammaPolarization[mom_List] := Module[{tmp = RandomReal[]},
  tmp RandomGammaPolarization[0, mom] + Sqrt[1 - tmp^2]  RandomGammaPolarization[1, mom]
];

RandomPolarization[state_Integer, momentum_List] := Module[{i, answ},
  answ = {0, 0, 0, 0};
  answ[[state]] = 1;
  Return[ApplyBoostTo[momentum, answ]];
];

RandomPolarization[mom_List] := Module[{tmp, i, cfs},
  tmp = 0;
  cfs = {RandomReal[], RandomReal[], 0};
  cfs[[3]] = Sqrt[10 - cfs[[1]]^2 - cfs[[2]]^2];
  cfs = cfs / Sqrt[Total[cfs cfs]];
  For[i = 2, i <= 4, ++i,
    tmp = tmp + cfs[[i - 1]] * RandomPolarization[i, mom]];
  Return[tmp];
];
