(* ::Package:: *)

(* ::Section:: *)
(*Helper Function*)


Clear[$FreeQ,$Pattern,$CoefficientList,$Position,$RemoveApart,$ApartIR,$Apart,$ApartUnion,$ApartComplete,$ApartIRComplete,$ApartCached];


$FreeQ[exp_,vars_List]:=And@@(FreeQ[exp,#1]&)/@vars;


$Pattern[exp_,vars_List]:=PolynomialQ[exp,vars]&&(And@@(FreeQ[exp,#^n_Integer]&/@vars));


$CoefficientList[exp_,vars_List]/;$Pattern[exp,vars]:=(Coefficient[exp,#1]&)/@vars;


$Position[exp_List]:=Position[exp,x_/;x=!=0,{1},1,Heads->False][[1,1]];


$RemoveApart[exp_]:=exp/.{$Apart[x_,_]:>x,$ApartIR[x_,___]:>x};
$RemoveApart[exp_,vf_]:=exp/.{$Apart[x_,_]:>x,$ApartIR[x_,___]:>vf[x]};


$ApartIR/:MakeBoxes[$ApartIR[exp_,___],TraditionalForm]:=RowBox[{"\[LeftDoubleBracketingBar]",MakeBoxes[exp,TraditionalForm],"\[RightDoubleBracketingBar]"}];


(* ::Section::Closed:: *)
(*Pre-Apart Code*)


Clear[$$PreApart,$PreApart,$RemovePreApart];


$$PreApart[exp_,p_]:=$PreApart[exp//Factor,p];


$PreApart[c_,p_]/;FreeQ[c,p]:=c;


$PreApart[c_ exp_,p_]/;FreeQ[c,p]:=c $PreApart[exp,p];


$PreApart[c_. d1_^n1_Integer d2_^n2_Integer,p_]/;FreeQ[d1-d2,p]&&And@@Negative[{n1,n2}]:=($$PreApart[c d1^(n1+1) d2^n2,p]-$$PreApart[c d1^n1 d2^(n2+1),p])/(d1-d2);


$PreApart[c_. d1_^n1_Integer d2_^n2_Integer,p_]/;FreeQ[d1+d2,p]&&And@@Negative[{n1,n2}]:=($$PreApart[c d1^(n1+1) d2^n2,p]+$$PreApart[c d1^n1 d2^(n2+1),p])/(d1+d2);


$PreApart[c0_. c_^(n_Integer:1) d1_^n1_Integer d2_^n2_Integer,p_]/;FreeQ[c/(d1-d2),p]&&And@@Negative[{-n,n1,n2}]:=c/(d1-d2) ($$PreApart[c0 c^(n-1) d1^(n1+1) d2^n2,p]-$$PreApart[c0 c^(n-1) d1^n1 d2^(n2+1),p]);


$PreApart[c0_. c_^(n_Integer:1) d1_^n1_Integer d2_^n2_Integer,p_]/;FreeQ[c/(d1+d2),p]&&And@@Negative[{-n,n1,n2}]:=c/(d1+d2) ($$PreApart[c0 c^(n-1) d1^(n1+1) d2^n2,p]+$$PreApart[c0 c^(n-1) d1^n1 d2^(n2+1),p]);


$RemovePreApart[exp_]:=exp/.$PreApart[x_,p_]:>x;
$RemovePreApart[exp_,vf_]:=exp/.$PreApart[x_,p_]:>vf[x];


(* ::Section:: *)
(*Apart Code*)


(* ::Subsection:: *)
(*Core Code*)


$Apart[c_,vars_List]/;$FreeQ[c,vars]=c;
$Apart[Longest[c_.] (exp1_+exp2_),vars_List]:=$Apart[c exp1,vars]+$Apart[c exp2,vars];
$Apart[Longest[c_] exp_,vars_List]/;$FreeQ[c,vars]:=c $Apart[exp,vars];


$Apart[exp_, vars_List]:= Module[{is,ins,tmp,cs,ns,res,p,ip,nsp,expr,i,c,ex,x,y,ps,VF},
  If[MatchQ[c exp, c ps:(_?($Pattern[#, vars]&)^(_Integer:1)..)],
    tmp=VF[c exp]/.VF[c ps:(_^(_Integer : 1)..)]:>{ps};
    is=Table[VF[c ex]/.VF[c x_^(y_Integer:1)]:>x,{ex,tmp}];
    ins=Table[VF[c ex]/.VF[c x_^(y_Integer:1)]:>y,{ex,tmp}];
    If[And@@Table[ex<0,{ex,ins}],
      cs=Transpose[($CoefficientList[#1,vars] &)/@is];
      ns=NullSpace[cs];
      If[Length[ns]<1,tmp=$ApartIR[exp,vars,is,ins];
      tmp=Collect[tmp,_$ApartIR];
      If[$ApartCached,$Apart[exp,vars]=tmp];
      Return[tmp];
      ];
      ns=ns[[1]]//Simplify;
      res=ns.is//Simplify;
      If[res===0,p=$Position[ns];nsp=ns[[p]];ns[[p]]=0; ip=is[[p]];res=-nsp ip//Simplify;];
      tmp=Plus@@Table[$Apart[(ns[[i]] exp is[[i]])/res//Factor,vars], {i,1,Length[is]}];
      tmp=Collect[tmp,_$ApartIR,$ApartCollectFunction];
      If[$ApartCached,$Apart[exp,vars]=tmp];
      Return[tmp];
      ,
      cs=Transpose[($CoefficientList[#1,vars]&)/@is];
      ns=NullSpace[cs];
      If[Length[ns]<1,tmp=$ApartIR[exp, vars,is,ins];
      tmp Collect[tmp,_$ApartIR,$ApartCollectFunction];
      If[$ApartCached,$Apart[exp,vars]=tmp];
      Return[tmp];];
      p=Position[ins,x_/;x>0,{1},1,Heads->False][[1,1]];
      expr=exp/is[[p]];
      ns=ns[[1]]//Simplify;
      res=ns.is//Simplify;
      nsp=ns[[p]]//Simplify;
      If[nsp===0,tmp=$Apart[$RemoveApart[is[[p]] $Apart[expr, vars]],vars];
      tmp=Collect[tmp,_$ApartIR,$ApartCollectFunction];
      If[$ApartCached,$Apart[exp, vars]=tmp];
      Return[tmp];
      ];
      ns[[p]]=0;
      is[[p]]=0;
      tmp=$Apart[(res expr)/nsp//Factor,vars]-Plus@@Table[$Apart[(ns[[i]] is[[i]] expr)/nsp//Factor, vars], {i,1,Length[is]}];
      tmp=Collect[tmp,_$ApartIR,$ApartCollectFunction];
      If[$ApartCached,$Apart[exp, vars]=tmp];
      Return[tmp];
    ];
  ];
  Return[$ApartIR[exp, vars]];
];


(* ::Subsection::Closed:: *)
(*Some Auxiliary Function*)


$ApartUnion[exp_]:=Cases[exp,_$ApartIR,Infinity]//Union;


$ApartIRComplete[exp_$ApartIR,comp_List]:=Module[{tmp,p,cn,i,comps={}},
  tmp=exp/.$ApartIR->List;
  If[Length[tmp[[4]]]>=Length[comp],Return[exp]];
  cn=Length[comp]-Length[tmp[[4]]];
  For[i=0,i<cn,i++,PrependTo[tmp[[4]],0]];
  For[i=0,i<cn,i++,PrependTo[comps,comp]];
  comps=Distribute[comps,List];
  p=Select[comps,(Simplify@Det[($CoefficientList[#,tmp[[2]]]&)/@Join[tmp[[3]],#]]=!=0)&,1];
  tmp[[3]]=Join[p[[1]],tmp[[3]]];
  Return[$ApartIR@@tmp];
];


$ApartComplete[exp_,comp_List]:=exp/.a_$ApartIR:>$ApartIRComplete[a,comp];


(* ::Section:: *)
(*Initial Values*)


$ApartCollectFunction=(#//Together//Factor)&;


$ApartCached=True;
