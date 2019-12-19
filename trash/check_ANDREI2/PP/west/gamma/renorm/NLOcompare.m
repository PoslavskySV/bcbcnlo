
SetDirectory[NotebookDirectory[]];


SetOptions[$FrontEnd, 
  CommonDefaultFormatTypes -> {"Output" -> TraditionalForm}];
  
PrependTo[$Path, "/home/andrei/Work/physics/B-physics/BcBcNLO/calc/pkg/FCFA/FC91/FeynCalc"];

$LoadFeynArts = True;
<< FeynCalc`;

PrependTo[$Path,"/home/andrei/Work/physics/B-physics/BcBcNLO/calc/pkg"];


<< X`;


CF = 4/3; CA = 3;

NumericQ[r] = True;

PackageXSubs = {LDot[p3, p3] -> m^2, LDot[p4, p4] -> m^2, 
     LDot[p3, p4] -> s/2 - m^2, mc -> r m, mb -> (1 - r) m};

toABC = {pvA[a_, b_] :> A[b], pvB[a_, b_, c___] :> B[c], pvC[a_, b_, c_, d___] :> C[d], pvC0[a__] :> C[a]};

topvABC = {A[a_] :> pvA[0, a], B[a__] :> pvB[0, 0, a], C[a__] :> pvC[0, 0, 0, a]};

factor = (Exp[EulerGamma] 1/(4 Pi ))^(-eps);

ff = Gamma[1 - 2 eps]/(Gamma[1 - eps]^2 Gamma[1 + eps] (4 Pi)^eps I/(16 Pi^2));

invff = 1/ff;

Normal[Series[FullSimplify[1/factor invff], {eps, 0, 1}]];

norm = Expand[
  Normal[Series[
     FullSimplify[1/factor invff], {eps, 0, 2}]]/(I/(16 Pi^2))];

Fb = (((1 - r)^2 m^2)/ mmu)^(-eps);

Fc = ((r^2 m^2)/ mmu)^(-eps);

Fb = Plus @@ 
  Factor[List @@ 
     Normal[Series[Fb, {eps, 0, 1}]] /. {Log[(m^2 (1 - r)^2)/mmu] -> 
      Log[m^2/mmu] + 2 Log[1 - r]}];
      

Fc = Plus @@ 
  Factor[List @@ 
     Normal[Series[Fc, {eps, 0, 1}]] /. {Log[(m^2 r^2)/mmu] -> 
      Log[m^2/mmu] + 2 Log[r]}];
            
                 
A0[m_] := 
 m^2 + m^2/eps + eps*m^2 + (eps*m^2*Pi^2)/6 + m^2*Log[mmu/m^2] + 
  eps*m^2*Log[mmu/m^2] + (eps*m^2*Log[mmu/m^2]^2)/2;
  
 
F21[z_] := (1 - eps)/(
  2 (1 - 2 eps) z) (1 + z - (1 - z)^(1 - 2 eps) - 
    2 (1 - z)^(1 - 2 eps)
      eps (eps PolyLog[1, 1, z] + 
       Hui eps^2 Sum[(-2)^(j - k) PolyLog[k, 3 - k], {k, 1, 2}]));
       

B0polylog[s_, m1_, m2_] := 
 Block[{x, y, lam}, 
  If[m1 != 0 && m2 != 0, x = m1^2/s; y = m2^2/s; 
   lam = Sqrt[(1 - x - y)^2 - 4 x y];  
   mmu^eps (I Pi^(2 - eps))/(2 Pi)^(
    4 - 2 eps) (-s)^-eps ((Gamma[1 - eps]^2 Gamma[eps])/
       Gamma[2 - 2 eps] lam^(1 - 2 eps) - 
      Gamma[-1 + eps] 1/
       2 (1 + x - y - lam) (-x)^-eps F21[(1 + x - y - lam)^2/(4 x)] -
      Gamma[-1 + eps] 1/
       2 (1 - x + y - lam) (-y)^-eps F21[(1 - x + y - lam)^2/(4 y)]), 
   If[m1 == 0 && m2 != 0, 
    mmu^eps (I Pi^(2 - eps))/(2 Pi)^(4 - 2 eps) m2^(-2 eps)
      Gamma[1 + eps]/(eps (1 - eps)) F21[s/m2^2], 
    If[m1 != 0 && m2 == 0, 
     mmu^eps (I Pi^(2 - eps))/(2 Pi)^(4 - 2 eps) m1^(-2 eps)
       Gamma[1 + eps]/(eps (1 - eps)) F21[s/m1^2], 
     If[m1 == 0 && m2 == 0, 
      mmu^eps (I Pi^(2 - eps))/(2 Pi)^(4 - 2 eps) (-s)^-eps (
       Gamma[1 - eps]^2 Gamma[eps])/Gamma[2 - 2 eps]]]]]];
       


$ChangeDimension[exp_] := ChangeDimension[exp, D];

ScalarProduct[p3, p3] = m^2;
ScalarProduct[p4, p4] = m^2;


ScalarProduct[p3, p4] = ms/2 - m^2; 

ms = s m^2;

MC = r*m;
MB = (1 - r)*m;

MT = mt;

SpBcstar = 
  1/(2 Sqrt[2] ) (GS[p3] - MC - MB).GA[\[Psi]1] // $ChangeDimension;
  

 SpBc = -I/(48 Sqrt[2])
     LCD[lc0, lc1, lc2, lc3] (GS[p4] - MC - MB).GAD[lc0, lc1, lc2, lc3] // $ChangeDimension;
       

PreFactor = (I \[Pi]^(2 - \[Epsilon]))/(
   Gamma[1 - \[Epsilon]] (2 \[Pi])^(4 - 2 \[Epsilon]))  1/SUNN (R\[Psi] R\[Eta] (MC + MB))/(4 \[Pi] 2 MC MB);
   







   
IntFCollect[exp_] := Collect[exp, _IntF];


IntFUnique[exp_IntF] := Module[
   {tmp, tmp1, tmp2, tmp3, tmp4},
   tmp1 = exp;
   tmp2 = tmp1 /. IntF[x_, k_] :> IntF[x /. {k -> -k}, k];
   tmp3 = exp /. IntF[x_, k_] :> IntF[x /. {p3 -> p4, p4 -> p3}, k];
   tmp4 = tmp3 /. IntF[x_, k_] :> IntF[x /. {k -> -k}, k];
   tmp = Sort[{tmp1, tmp2, tmp3, tmp4}];
   tmp = Sort[{tmp1, tmp2, tmp3, tmp4}];
   Return[tmp[[1]]];
   ];
IntFUnique[exp_] := exp /. {iexp_IntF :> IntFUnique[iexp]};


IntFFactor[exp_] := 
  exp /. {IntF[x_, k_] :> IntF[x // Factor, k]} /. IntF[-x_, k_] :> -IntF[x, k];


IntFtoABC[props_, intmom_] := 
 Block[{momenta, masses, i, momentum, norm, normprops, normprop, mass,
    args, ABC, sign},
  momenta = {};
  masses = {};
  
  normprops = {};
  
  sign = 1;
  
  For[i = 1, i <= Length[props], i++,
   normprop = Expand[props[[i]]/Coefficient[props[[i]], intmom^2]];
   normprops = Append[normprops, normprop];
   sign = sign*Sign[Coefficient[props[[i]], intmom^2]]
   ];
  
  (*
  Print["normprops = "];
  Print[normprops];
  *)
  
  For[i = 1, i <= Length[props], i++,
    momentum = D[props[[i]], intmom];
   momentum = Expand[momentum/Coefficient[momentum, intmom]];
   momenta = Append[momenta, momentum];
   ];
  
  For[i = 1, i <= Length[props], i++,
   mass = 
    Sqrt[-(normprops[[i]] /. {intmom -> 0}) + (momenta[[i]] - 
         intmom)^2];
   mass = 
    Simplify[(ExpandAll[mass] /. {p3^2 -> m^2, p4^2 -> m^2, 
         p3 p4 -> s/2 - m^2}) /. {Sqrt[m^2] -> m, 
       Sqrt[r^2 m^2] -> r m, Sqrt[m^2*(-1 + r)^2] -> (1 - r) m, 
       Sqrt[mt^2] -> mt}];
   masses = Append[masses, mass];
   ];
  
  (*
  Print["masses = "];
  Print[masses];
  *)
  
  momenta = 
   Expand[(momenta /. 
       Solve[momenta[[1]] == qnew, intmom][[1]]) /. {qnew -> 
       intmom}];
  
  (*
  Print["momenta = "];
  Print[momenta];
  *)
  
  args = {1};
  For[i = 1, i <= Length[momenta], i++,
   If[i == 1, args = Append[args, momenta[[i]]];,
     args = Append[args, Expand[momenta[[i]] - intmom]];
     ];
   ];
  
  args = Append[args, masses];
  args = Flatten[args];
  
  (*
  Print["args = "];
  Print[args]; 
  *)
  
  ABC = (LoopIntegrate @@ args) /. PackageXSubs // ExpandAll;
  
  Simplify[ABC*sign]
  ];
  
  
  
  
MyDiagrPlot[n_] := Module[{amp},
   Print[Text[
     Style["Diagram  b,cbar->Bc(p3)  bbar,c->Bc(p4):", 
      FontSize -> Large, FontColor -> Blue]]]; 
   Paint[DiagramExtract[Diagr, n], ColumnsXRows -> {2, 2}];
   (*Print[Text[Style["Amplitude before Apart:",FontSize\[Rule]Large,
   FontColor\[Rule]Blue]]];
   Print[AmpbeforeApart[[n]]];*)
   
   Print[Text[
     Style["Amplitude after Fire (without PreFactor):", 
      FontSize -> Large, FontColor -> Blue]]];
   amp = AmpafterFire[[n]] /. {Momentum[k_, D] -> Momentum[k]};
   amp = Collect[
     Series[(SUNSimplify[Simplify[amp/SUNN]] // IntFFactor // 
            IntFCollect) /. {D -> 4 - 2 \[Epsilon], 
           s -> s/m^2}, {\[Epsilon], 0, 1}] // Normal // IntFFactor //
       IntFCollect, \[Epsilon]];
   amp
];
   
   
   
DiaMathRes[n_] := Module[{amp,subs1,subs2},
   amp = AmpafterFire[[n]] /. {Momentum[k_, D] -> Momentum[k], LorentzIndex[ind_,D] -> LorentzIndex[ind]};
   amp = Normal[Series[amp /. {D -> 4 - 2 \[Epsilon]},{\[Epsilon], 0, 1}]];
   
   Print["stage 1: ", DateString[]];
   
   subs1 = {LorentzIndex[pol1] -> Momentum[pol1], LorentzIndex[pol2] -> Momentum[pol2]};
   subs2 = {SP[pol1, p3] -> 0, SP[pol2, p4] -> 0} // FCI;   
   
   amp = Expand[Expand[amp /. {Bc1 -> pol1, Bc2 -> pol2}] /.subs1] /.subs2; 
   
   
   Print["stage 2: ", DateString[]];
   
   (*
    Print["amp = \n"];
    Print[amp];
   *)
   
   amp = Collect[
     Expand[(SUNSimplify[amp/SUNN] // IntFFactor // 
            IntFCollect) /. {s -> s/m^2}]  // IntFFactor //
       IntFCollect, \[Epsilon]];
       
   (*
   Print["amp = \n"];
   Print[amp]; 
   *)
   
   Print["stage 3: ", DateString[]];
   
   subs3 = Expand[{SP[pol1, pol2] -> pol1pol2, SP[p3, pol2] -> pol2P1, 
    SP[p4, pol1] -> pol1P2, FV[p3, \[Gamma]] -> P1[mu], 
    FV[p4, \[Gamma]] -> P2[mu], FV[pol1, \[Gamma]] -> pol1[mu], 
    FV[pol2, \[Gamma]] -> pol2[mu]} // FCI];
    
   amp = amp /.subs3; 
      
   amp
];
     

DiaCompare[mathnum_, formnum_, mcval_, mbval_, mtval_, sval_] := Module[{mathres, formres, kinsubs, diffres},

 mathres = DiaMathRes[mathnum];

 mathres = 
  mathres /. {IntF[a_/b_ /c_/d_ , k1] -> Sign[a]*IntF[{b, c, d}, k1], 
      IntF[1/b_ /c_/d_ , k1] -> IntF[{b, c, d}, k1], 
      IntF[a_/b_/c_, k1] -> Sign[a]*IntF[{b, c}, k1], 
      IntF[1/b_/c_, k1] -> IntF[{b, c}, k1], 
      IntF[a_/b_, k1] -> Sign[a] IntF[{b}, k1], 
      IntF[1/a_, k1] -> IntF[{a}, k1]} /. {Pair[
       LorentzIndex[\[Gamma]], Momentum[k_]] :> FV[k, mu], 
     Momentum[k_] -> k} /. {Pair[a_, b_] -> a b};
   
  Print["stage 4: ", DateString[]]; 
     
  mathres = 
  Collect[mathres/I/s/(16 Pi^2) /. {IntF[a_, b_] :> 
       IntFtoABC[a, b]}, {pvA[___], pvB[___], pvC[___]}, 
    Factor[Simplify[#]] &] /. {e -> 1, Subscript[C, F] -> CF, 
    Subscript[C, A] -> CA, Gstrong -> 1, 
    Sqrt[m^2] -> m, Sqrt[m^2 r^4] -> m r^2, Sqrt[m^2 r^2] -> m r, 
    Sqrt[m^2*(-1 + r)^2] -> (1 - r) m, Sqrt[mt^2] -> mt};   
     

  mathres = (I*mathres) /. {pol1[mu] -> AA[3], P1[mu] -> AA[5], P2[mu] -> AA[7], pol2[mu] -> AA[9]}; 

  mathres = Collect[Expand[mathres /. toABC], {A[___], B[___], C[___]}];
  
  (*
  Print["mathres = \n"];
  Print[mathres];
  *)
  
  Print["stage 5: ", DateString[]]; 
  
  formres = 
  Collect[Expand[
    Coefficient[renormAmp, X[formnum]] /. {AA[1] -> 1, AS -> 1/(4 Pi),
       AL -> 1/(4 Pi), pi -> Pi, eps -> \[Epsilon]}], {A[___], B[___],
     C[___]}];
  
  (*
  Print["formres = \n"];
  Print[formres];
  *)
  
  kinsubs = {m -> mcval+mbval, r -> mcval/(mcval+mbval), mt -> mtval, s -> sval};



  diffres = Expand[Expand[(M mathres - F formres) /. {\[Epsilon] -> eps}]/.kinsubs];

  (*
  Print["diffres = \n"];
  Print[diffres];
  *)

  Print["stage 6: ", DateString[]]; 

  diffres = 
   Normal[Series[
    diffres /. {A[m_] :> A0[m], 
     B[s_, 0., 0.] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, 0, 0] , {eps, 0, 1}]]], 
     B[s_, m_, 0.] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, m, 0] , {eps, 0, 1}]]], 
     B[s_, 0., m_] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, 0, m] , {eps, 0, 1}]]], 
     B[s_, m1_, m2_] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, m1, m2] , {eps, 0, 
          1}]]], log[a_] :>  Log[a]}, {eps, 0, 1}]];

   Print["stage 7: ", DateString[]]; 
  
  
   diffres = LoopRefine[Expand[diffres] /. topvABC];
   
   diffres = Chop[Normal[Series[diffres, {eps, 0, 0}]]];

   Chop[Expand[diffres /. {F -> 1, M -> 1}], 10^(-17)]
];




DiaCompareList[dianumlist_, mcval_, mbval_, mtval_, sval_] := Module[{res, i},

 res = 0;
 
 For[i = 1, i <= Length[dianumlist], i++, 
    
    Print["Checking diagrams with numbers ", dianumlist[[i]][[1]], " and ", dianumlist[[i]][[2]]];
 
    (*
     Print[dianumlist[[i]][[1]]];
     Print[dianumlist[[i]][[2]]];
    *)
    
    res = res + DiaCompare[dianumlist[[i]][[1]],dianumlist[[i]][[2]],mcval,mbval,mtval,sval]*X[dianumlist[[i]][[2]]];
 ];

  res

];



DiaCompareCheck[mathnum_, formnum_, mcval_, mbval_, mtval_, sval_] := Module[{mathres, formres, kinsubs, diffres},

 mathres = DiaMathRes[mathnum];

 mathres = 
  mathres /. {IntF[a_/b_ /c_/d_ , k1] -> Sign[a]*IntF[{b, c, d}, k1], 
      IntF[1/b_ /c_/d_ , k1] -> IntF[{b, c, d}, k1], 
      IntF[a_/b_/c_, k1] -> Sign[a]*IntF[{b, c}, k1], 
      IntF[1/b_/c_, k1] -> IntF[{b, c}, k1], 
      IntF[a_/b_, k1] -> Sign[a] IntF[{b}, k1], 
      IntF[1/a_, k1] -> IntF[{a}, k1]} /. {Pair[
       LorentzIndex[\[Gamma]], Momentum[k_]] :> FV[k, mu], 
     Momentum[k_] -> k} /. {Pair[a_, b_] -> a b};
   
  Print["stage 4: ", DateString[]]; 
     
  mathres = 
  Collect[mathres/I/s/(16 Pi^2) /. {IntF[a_, b_] :> 
       IntFtoABC[a, b]}, {pvA[___], pvB[___], pvC[___]}, 
    Factor[Simplify[#]] &] /. {e -> 1, Subscript[C, F] -> CF, 
    Subscript[C, A] -> CA, Gstrong -> 1, 
    Sqrt[m^2] -> m, Sqrt[m^2 r^4] -> m r^2, Sqrt[m^2 r^2] -> m r, 
    Sqrt[m^2*(-1 + r)^2] -> (1 - r) m, Sqrt[mt^2] -> mt};   
     
  mathres = (I*mathres) /. {pol1[mu] -> AA[3], P1[mu] -> AA[5], P2[mu] -> AA[7], pol2[mu] -> AA[9]};   

  mathres = Collect[Expand[mathres /. toABC], {A[___], B[___], C[___]}];
  
  (*
   Print["mathres = \n"];
   Print[mathres];
  *)

  Print["stage 5: ", DateString[]]; 
  
  formres = 
  Collect[Expand[
    Coefficient[renormAmp, X[formnum]] /. {AS -> 1/(4 Pi),
       AL -> 1/(4 Pi), pi -> Pi, eps -> \[Epsilon]}], {A[___], B[___],
     C[___]}];
  
  (*
   Print["formres = \n"];
   Print[formres];
  *)
  
  kinsubs = {m -> mcval+mbval, r -> mcval/(mcval+mbval), mt -> mtval, s -> sval};



  diffres = Expand[Expand[(M mathres - F formres) /. {\[Epsilon] -> eps}]/.kinsubs];

  (*
   Print["diffres = \n"];
   Print[diffres];
  *)
  
  Print["stage 6: ", DateString[]]; 

  diffres = 
   Normal[Series[
    diffres /. {A[m_] :> A0[m], 
     B[s_, 0., 0.] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, 0, 0] , {eps, 0, 1}]]], 
     B[s_, m_, 0.] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, m, 0] , {eps, 0, 1}]]], 
     B[s_, 0., m_] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, 0, m] , {eps, 0, 1}]]], 
     B[s_, m1_, m2_] :> 
      N[Normal[
        Series[ff B0polylog[s + 10^(-20)*I, m1, m2] , {eps, 0, 
          1}]]], log[a_] :>  Log[a]}, {eps, 0, 1}]];

   Print["stage 7: ", DateString[]]; 
  
   diffres = LoopRefine[Expand[diffres] /. topvABC];


   
   diffres = Chop[Normal[Series[diffres, {eps, 0, 0}]]];

   Print["mathres = \n"];
   Print[Expand[Expand[mathres /. {\[Epsilon] -> eps}]/.kinsubs]];
   
   Print["formres = \n"];
   Print[Expand[Expand[formres /. {\[Epsilon] -> eps}]/.kinsubs]]; 

   Chop[Expand[diffres /. {F -> 1, M -> 1}], 10^(-17)]
];
