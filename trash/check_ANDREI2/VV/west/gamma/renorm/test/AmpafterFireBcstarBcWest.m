(* Created with the Wolfram Language : www.wolfram.com *)
{((-I/12)*CF*(-2 + D)*e*Gstrong^4*(8 - 4*D + 4*D*r - 36*s + 12*D*s - D^2*s + 
     36*r*s - 12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1])/
   ((-3 + D)*m^5*(1 - r)^4*r^2*(4 - s)*s^2) + 
  (((I/6)*CF*(2 - D)*e*Gstrong^4*(2*r - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^2*(r^2 + s - r*s)) - 
    ((I/6)*CF*(2 - D)*e*Gstrong^4*(-2*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/6)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) - ((I/6)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) - ((I/6)*CF*e*Gstrong^4*(8 - 4*D - 16*r + 4*D*r + 
       32*s - 10*D*s + D^2*s - 32*r*s + 10*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) + 
    ((I/6)*CF*e*Gstrong^4*(8 - 4*D + 4*D*r - 36*s + 12*D*s - D^2*s + 36*r*s - 
       12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^4*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/6)*CF*e*Gstrong^4*(32*r^2 + 8*s - 4*D*s - 48*r*s + 12*D*r*s + 
     40*r^2*s - 8*D*r^2*s - 36*s^2 + 12*D*s^2 - D^2*s^2 + 48*r*s^2 - 
     14*D*r*s^2 + D^2*r*s^2 - 12*r^2*s^2 + 2*D*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^3*(4 - s)*s^2) + 
  (((-I/6)*CF*(2 - D)*e*Gstrong^4*(-4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) - 
    ((I/6)*CF*(2 - D)*e*Gstrong^4*(-4*r + s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) - 
    ((I/3)*CF*e*Gstrong^4*(16*r - 4*D*r - 34*s + 11*D*s - D^2*s + 32*r*s - 
       10*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/((-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (-Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) + ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) + ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (4 - 12*r + 16*s - 3*D*s - 16*r*s + 3*D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^4*r^2*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((I/6)*CA*(1 - CA^2)*e*Gstrong^4*(17 - 3*D - 19*r + 3*D*r)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
         Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)^3*r*(4 - s)*s) + 
  (((-I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-1 + r)^2*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) + ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-1 + r)*
      (2*r + 2*r^2 + s - 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s*(r^2 + s - r*s)) + 
    ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(12*r - 4*r^2 - 34*s + 6*D*s + 52*r*s - 
       9*D*r*s - 18*r^2*s + 3*D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^4*r*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(4 - 4*r + 16*s - 3*D*s - 18*r*s + 
     3*D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^2*(4 - s)*s), 
 (((I/3)*CF*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*s^2) - 
    ((I/3)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*(4 - s)*s^2) + (((2*I)/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)*(-1 + r)^4*
      (-4 + s)*s^2) - ((I/6)*CF*(2 - D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CF*(4 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*s^2) - (((4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(1 - r)*(-1 + r)^2*
      (-4 + s)*s^2) + ((I/3)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*(-4 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/6)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*(4 - s)*s^2) + ((I/24)*CA*(1 - CA^2)*(2 - D)*(-2 + D)*e*
      Gstrong^4*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*
      (4 - s)*s) + ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-6 + 2*D + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^4*(-1 + r)*
      (4 - s)*s^2) + ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (16 + 2*s - 3*D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*(4 - s)*s) - ((I/6)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (-1 + r)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(8 - 4*s + D*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)*(4 - s)*s), 
 ((((-2*I)/3)*CA*CF^2*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^2*r^2*
      (4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (46 - 15*D + D^2 - 44*r + 14*D*r - D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)^2*r^3*
      (4 - s)*s) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (224 - 88*D + 8*D^2 - 448*r + 176*D*r - 16*D^2*r - 296*s + 148*D*s - 
       22*D^2*s + D^3*s + 296*r*s - 148*D*r*s + 22*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^2*
      (4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (16*r - 8*D*r - 46*s + 15*D*s - D^2*s + 40*r*s - 12*D*r*s + D^2*r*s)*
      (10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^3*(4 - s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*
      (-1 + r)^3*(4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (46 - 15*D + D^2 - 44*r + 14*D*r - D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^4*(4 - s)*s) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (224 - 88*D + 8*D^2 + 72*s - 60*D*s + 14*D^2*s - D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^2*
      (-1 + r)^2*(4 - s)*s^2) + ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (224 - 88*D + 8*D^2 - 296*s + 148*D*s - 22*D^2*s + D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^2*
      (-1 + r)^2*r*(4 - s)*s^2) + ((I/3)*CA*CF^2*(-4 + D)*(-2 + D)*e*
      Gstrong^4*(1 - r)*(16*r - 8*D*r - 46*s + 15*D*s - D^2*s + 40*r*s - 
       12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^6*(4 - s)*s^2) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(224 - 88*D + 8*D^2 - 448*r + 
       176*D*r - 16*D^2*r - 296*s + 148*D*s - 22*D^2*s + D^3*s + 296*r*s - 
       148*D*r*s + 22*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*(-1 + r)*r*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF^2*(184 - 104*D + 18*D^2 - D^3)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r*(4 - s)*
      s) + (((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(16*r - 8*D*r - 46*s + 
       15*D*s - D^2*s + 40*r*s - 12*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (16*r - 8*D*r - 46*s + 15*D*s - D^2*s + 40*r*s - 12*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r*(4 - s)*
      s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*(224*r^2 - 88*D*r^2 + 8*D^2*r^2 + 
       368*s - 208*D*s + 36*D^2*s - 2*D^3*s - 440*r*s + 268*D*r*s - 
       50*D^2*r*s + 3*D^3*r*s + 72*r^2*s - 60*D*r^2*s + 14*D^2*r^2*s - 
       D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  (((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2*r - s)*
    (16*r - 8*D*r - 46*s + 15*D*s - D^2*s + 40*r*s - 12*D*r*s + D^2*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(-1 + r)^2*(4 - s)*s^2) + 
  ((((-4*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(16*r - 8*D*r - 46*s + 
       15*D*s - D^2*s + 40*r*s - 12*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*(4 - s)*
      s^2) + ((I/3)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 32*r + 16*D*r + 272*s - 
       132*D*s + 20*D^2*s - D^3*s - 264*r*s + 128*D*r*s - 20*D^2*r*s + 
       D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 312*r + 84*D*r - 4*D^2*r + 304*r^2 - 
     80*D*r^2 + 4*D^2*r^2 + 272*s - 132*D*s + 20*D^2*s - D^3*s - 368*r*s + 
     208*D*r*s - 36*D^2*r*s + 2*D^3*r*s + 96*r^2*s - 76*D*r^2*s + 
     16*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s), 
 ((((2*I)/3)*CF*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^2*
      (4 - s)*s^2) + ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*
      (2 - 4*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*(1 - r)^2*(-1 + r)^2*r^2*(-4 + s)*s^3))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CF*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^3*
      (-1 + r)^2*(4 - s)*s^2) - ((I/12)*CF*(4 - D)*(-2 + D)*e*Gstrong^4*
      (56 - 8*D + 20*s - 12*D*s + D^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*(-1 + r)^2*r*(4 - s)*s^2) + 
    ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*(2 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)^2*(-1 + r)^3*
      r*(-4 + s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*(-1 + 4*r - 4*r^2 - r*s + 
       r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(1 - r)^2*(-1 + r)^2*
      r*(-4 + s)*s^3) + ((I/6)*CF*(4 - D)*e*Gstrong^4*
      (56 - 8*D - 224*r + 32*D*r + 224*r^2 - 32*D*r^2 + 20*s - 12*D*s + 
       D^2*s + 36*r*s + 4*D*r*s - D^2*r*s - 56*r^2*s + 8*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^4*r*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/3)*CF*(4 - D)^2*(12 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^2*r*(4 - s)*s) - 
  ((I/6)*CF*(4 - D)*e*Gstrong^4*(56*r^2 - 8*D*r^2 + 96*s - 32*D*s + 2*D^2*s - 
     116*r*s + 44*D*r*s - 3*D^2*r*s + 20*r^2*s - 12*D*r^2*s + D^2*r^2*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^4*r*(4 - s)*s^2) + 
  ((I/3)*CF*e*Gstrong^4*(32*r - 16*D*r - 100*s + 34*D*s - 2*D^2*s + 80*r*s - 
     24*D*r*s + 2*D^2*r*s - 8*s^2 + 6*D*s^2 - D^2*s^2 + 12*r*s^2 - 
     8*D*r*s^2 + D^2*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*(4 - s)*s^2) - 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 184*s + 60*D*s - 4*D^2*s + 160*r*s - 
     48*D*r*s + 4*D^2*r*s - 80*s^2 + 68*D*s^2 - 16*D^2*s^2 + D^3*s^2 + 
     80*r*s^2 - 68*D*r*s^2 + 16*D^2*r*s^2 - D^3*r*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r*(4 - s)*s^2) + 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 184*s + 60*D*s - 
     4*D^2*s + 32*r*s - 24*D*r*s + 4*D^2*r*s - 80*r^2*s + 56*D*r^2*s - 
     8*D^2*r^2*s - 80*s^2 + 68*D*s^2 - 16*D^2*s^2 + D^3*s^2 + 56*r*s^2 - 
     52*D*r*s^2 + 14*D^2*r*s^2 - D^3*r*s^2 + 24*r^2*s^2 - 16*D*r^2*s^2 + 
     2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s^2), 
 ((-I/12)*CF*(-2 + D)*e*Gstrong^4*(8 - 4*D + 4*D*r + 24*s - 10*D*s + D^2*s - 
     24*r*s + 10*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1])/
   ((-3 + D)*m^5*(1 - r)^4*r^2*(4 - s)*s^2) + 
  (((I/6)*CF*(2 - D)*e*Gstrong^4*(2*r - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^2*(r^2 + s - r*s)) - 
    ((I/6)*CF*(2 - D)*e*Gstrong^4*(-2*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/6)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) - ((I/6)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) + ((I/6)*CF*e*Gstrong^4*(8 - 4*D + 4*D*r + 24*s - 
       10*D*s + D^2*s - 24*r*s + 10*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*r*(4 - s)*s^2) - 
    ((I/6)*CF*e*Gstrong^4*(8 - 4*D - 16*r + 4*D*r - 28*s + 12*D*s - D^2*s + 
       28*r*s - 12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/6)*CF*e*Gstrong^4*(32*r^2 + 8*s - 4*D*s + 32*r*s - 4*D*r*s - 40*r^2*s + 
     8*D*r^2*s + 24*s^2 - 10*D*s^2 + D^2*s^2 - 32*r*s^2 + 12*D*r*s^2 - 
     D^2*r*s^2 + 8*r^2*s^2 - 2*D*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^3*(4 - s)*s^2) + 
  (((-I/6)*CF*(2 - D)*e*Gstrong^4*(-4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) - 
    ((I/6)*CF*(2 - D)*e*Gstrong^4*(-4*r + s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) - 
    ((I/6)*CF*e*Gstrong^4*(8 - 4*D + 16*r - 4*D*r + 24*s - 10*D*s + D^2*s - 
       28*r*s + 12*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2) + 
    ((I/6)*CF*e*Gstrong^4*(8 - 4*D - 16*r + 4*D*r - 28*s + 12*D*s - D^2*s + 
       28*r*s - 12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/((-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (-Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) - ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) - ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (4 - 12*r - 14*s + 3*D*s + 14*r*s - 3*D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^4*r^2*(4 - s)*
      s^2))*IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-1 + r)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) - ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s*
      (r^2 + s - r*s)) + ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
      (12*r - 4*r^2 + 26*s - 6*D*s - 38*r*s + 9*D*r*s + 12*r^2*s - 3*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/6)*CA*(1 - CA^2)*e*Gstrong^4*(13 - 3*D - 11*r + 3*D*r)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
         Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)^3*r*(4 - s)*s) - ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
    (4 - 4*r - 14*s + 3*D*s + 12*r*s - 3*D*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^2*(4 - s)*s), 
 (((I/3)*CF*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*s^2) - 
    ((I/3)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*(4 - s)*s^2) + (((2*I)/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)*(-1 + r)^4*
      (-4 + s)*s^2) - ((I/6)*CF*(2 - D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CF*(4 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*s^2) - (((4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(1 - r)*(-1 + r)^2*
      (-4 + s)*s^2) + ((I/3)*CF*(2 - D)*e*Gstrong^4*(-1 + r)*(-4 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/6)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*(4 - s)*s^2) - ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (-2 + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^2) + ((I/24)*CA*(1 - CA^2)*(2 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*
      (4 - s)*s) + ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (16 - 2*s - D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^3*
      (-1 + r)^2*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] - 
  ((I/6)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)^3*(4 - s)*s) + ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
    (8 - 4*s + D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)*(4 - s)*s), 
 ((((2*I)/3)*CF*(3 - D)*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^2*(4 - s)*s^2) + 
    ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*(2 - 4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)^2*(-1 + r)^2*
      r^2*(-4 + s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CF*(3 - D)*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*(-1 + r)^2*(4 - s)*s^2) - 
    ((I/12)*CF*(-2 + D)*e*Gstrong^4*(24 - 8*D + 40*s - 40*D*s + 12*D^2*s - 
       D^3*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^2*
      (-1 + r)^2*r*(4 - s)*s^2) + ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*
      (2 - 4*r + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)^2*
      (-1 + r)^3*r*(-4 + s)*s^3))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*(-1 + 4*r - 4*r^2 - r*s + 
       r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(1 - r)^2*(-1 + r)^2*
      r*(-4 + s)*s^3) + ((I/6)*CF*e*Gstrong^4*(24 - 8*D - 96*r + 32*D*r + 
       96*r^2 - 32*D*r^2 + 40*s - 40*D*s + 12*D^2*s - D^3*s - 16*r*s + 
       32*D*r*s - 12*D^2*r*s + D^3*r*s - 24*r^2*s + 8*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^4*r*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/3)*CF*(52 - 44*D + 12*D^2 - D^3)*e*Gstrong^4*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
         Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^2*r*(4 - s)*s) - 
  ((I/6)*CF*e*Gstrong^4*(24*r^2 - 8*D*r^2 + 104*s - 88*D*s + 24*D^2*s - 
     2*D^3*s - 144*r*s + 128*D*r*s - 36*D^2*r*s + 3*D^3*r*s + 40*r^2*s - 
     40*D*r^2*s + 12*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^4*r*(4 - s)*s^2) + 
  ((I/3)*CF*e*Gstrong^4*(32*r - 16*D*r - 40*s + 22*D*s - 2*D^2*s + 20*r*s - 
     12*D*r*s + 2*D^2*r*s + 12*s^2 - 8*D*s^2 + D^2*s^2 - 8*r*s^2 + 
     6*D*r*s^2 - D^2*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*(4 - s)*s^2) - 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*s + 36*D*s - 4*D^2*s + 40*r*s - 
     24*D*r*s + 4*D^2*r*s - 40*s^2 + 40*D*s^2 - 12*D^2*s^2 + D^3*s^2 + 
     40*r*s^2 - 40*D*r*s^2 + 12*D^2*r*s^2 - D^3*r*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r*(4 - s)*s^2) + 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 64*s + 36*D*s - 
     4*D^2*s - 48*r*s + 32*D*r*s - 4*D^2*r*s + 80*r^2*s - 56*D*r^2*s + 
     8*D^2*r^2*s - 40*s^2 + 40*D*s^2 - 12*D^2*s^2 + D^3*s^2 + 56*r*s^2 - 
     52*D*r*s^2 + 14*D^2*r*s^2 - D^3*r*s^2 - 16*r^2*s^2 + 12*D*r^2*s^2 - 
     2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s^2), 
 ((((-2*I)/3)*CA*CF^2*(3 - D)*(-2 + D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^2*r^2*
      (4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (16 - 9*D + D^2 - 14*r + 8*D*r - D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(1 - r)^2*r^3*(4 - s)*s) - 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(24 - 8*D - 48*r + 16*D*r - 56*s + 
       40*D*s - 10*D^2*s + D^3*s + 56*r*s - 40*D*r*s + 10*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^2*
      (4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (16*r - 8*D*r - 16*s + 9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
      (10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^3*(4 - s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*(3 - D)*(-2 + D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*
      (-1 + r)^3*(4 - s)*s^2) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (16 - 9*D + D^2 - 14*r + 8*D*r - D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(1 - r)*(-1 + r)^4*(4 - s)*s) - 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(24 - 8*D + 32*s - 32*D*s + 
       10*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*(-1 + r)^2*(4 - s)*s^2) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(24 - 8*D - 56*s + 40*D*s - 
       10*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*(-1 + r)^2*r*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      (16*r - 8*D*r - 16*s + 9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^6*
      (4 - s)*s^2) + ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (24 - 8*D - 48*r + 16*D*r - 56*s + 40*D*s - 10*D^2*s + D^3*s + 56*r*s - 
       40*D*r*s + 10*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*(-1 + r)*r*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF^2*(44 - 36*D + 10*D^2 - D^3)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r*(4 - s)*
      s) + (((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(16*r - 8*D*r - 16*s + 
       9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (16*r - 8*D*r - 16*s + 9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r*(4 - s)*
      s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*(24*r^2 - 8*D*r^2 + 88*s - 72*D*s + 
       20*D^2*s - 2*D^3*s - 120*r*s + 104*D*r*s - 30*D^2*r*s + 3*D^3*r*s + 
       32*r^2*s - 32*D*r^2*s + 10*D^2*r^2*s - D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  (((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2*r - s)*
    (16*r - 8*D*r - 16*s + 9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(-1 + r)^2*(4 - s)*s^2) + 
  ((((-4*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(16*r - 8*D*r - 16*s + 
       9*D*s - D^2*s + 10*r*s - 6*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*(4 - s)*
      s^2) + ((I/3)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 32*r + 16*D*r + 72*s - 
       52*D*s + 12*D^2*s - D^3*s - 64*r*s + 48*D*r*s - 12*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 152*r + 92*D*r - 12*D^2*r + 
     144*r^2 - 88*D*r^2 + 12*D^2*r^2 + 72*s - 52*D*s + 12*D^2*s - D^3*s - 
     88*r*s + 72*D*r*s - 20*D^2*r*s + 2*D^3*r*s + 16*r^2*s - 20*D*r^2*s + 
     8*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s), 
 (((-I/12)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^4*(4 - s)*s^2) + ((I/12)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^4*(4 - s)*s^2) - 
    ((I/12)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^2) + ((I/24)*CF*(-2 + D)*e*Gstrong^4*
      (8 - 4*D*r + 24*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(-1 + r)^2*r^4*
      (4 - s)*s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/12)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^4*(4 - s)*s^2) - ((I/12)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^4*(4 - s)*s^2) + 
    ((I/12)*CF*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^2) - ((I/12)*CF*(2 - D)*e*Gstrong^4*
      (-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/12)*CF*(2 - D)*e*Gstrong^4*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/12)*CF*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) + ((I/12)*CF*(2 - D)*e*Gstrong^4*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CF*e*Gstrong^4*
      (8 + 8*r - 4*D*r - 16*r^2 + 4*D*r^2 + 24*r*s - 10*D*r*s + D^2*r*s + 
       28*r^2*s - 12*D*r^2*s + D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^4*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/12)*CF*(2 - D)*e*Gstrong^4*(4 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2) - 
    ((I/12)*CF*(2 - D)*e*Gstrong^4*(4 - 4*r - 2*s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
    ((I/12)*CF*(2 - D)*e*Gstrong^4*(4 - 4*r - 2*s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s^2) + 
    ((I/6)*CF*e*Gstrong^4*(16 - 4*D - 16*r + 4*D*r - 2*s + D*s + 28*r*s - 
       12*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(1 - r)*(4 - 4*r + 4*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*r^3*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(8 - 4*D*r + 24*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*r^3*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (8 - 12*r + 14*r*s - 3*D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s^2))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) + ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) - ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*
      (8 - 4*r - 4*r^2 + 14*r*s - 3*D*r*s + 12*r^2*s - 3*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^4*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(2 + 11*r - 3*D*r)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)*r^3*(4 - s)*s) + ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*
    (4*r - 2*s - 12*r*s + 3*D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r^2*(4 - s)*s), 
 ((I/24)*CF*(-2 + D)*e*Gstrong^4*(8 - 4*D*r - 36*r*s + 12*D*r*s - D^2*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1])/
   ((-3 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s^2) + 
  (((-I/12)*CF*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/12)*CF*(2 - D)*e*Gstrong^4*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/12)*CF*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) + ((I/12)*CF*(2 - D)*e*Gstrong^4*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CF*e*Gstrong^4*
      (8 + 8*r - 4*D*r - 16*r^2 + 4*D*r^2 - 36*r*s + 12*D*r*s - D^2*r*s - 
       32*r^2*s + 10*D*r^2*s - D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^4*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/12)*CF*(2 - D)*e*Gstrong^4*(4 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2) - 
    ((I/12)*CF*(2 - D)*e*Gstrong^4*(4 - 4*r - 2*s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2) + 
    ((I/6)*CF*e*Gstrong^4*(16 - 4*D - 16*r + 4*D*r - 2*s + D*s - 32*r*s + 
       10*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(1 - r)*(4 - 4*r - 6*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*r^3*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(8 - 4*D*r - 36*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*r^3*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (8 - 12*r - 16*r*s + 3*D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(2 - 19*r + 3*D*r)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)*r^3*(4 - s)*s) + 
  (((-I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r*(4 - s)*s*
      (1 - 2*r + r^2 + r*s)) + ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (4 - 6*r + 2*r^2 - s + 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^2*(4 - s)*s*(1 - 2*r + r^2 + r*s)) - 
    ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(8 - 4*r - 4*r^2 - 16*r*s + 3*D*r*s - 
       18*r^2*s + 3*D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^4*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(4*r - 2*s + 18*r*s - 3*D*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r^2*(4 - s)*s), 
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
 (((I/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3) + ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - s)*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(-1 + r)*r^4*(4 - s)*s^3) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - r - s)*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(-1 + r)*r^4*(4 - s)*s^3) + 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(16 - 28*r + 4*D*r - 4*s - 36*r*s + 
       12*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*(-1 + r)^2*r^3*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3*(1 - 2*r + r^2 + r*s)) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - r - s)*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/3)*CA*CF^2*e*Gstrong^4*(-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^2*(4 - s)*s^2*(1 - 2*r + r^2 + r*s)) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - r - s)*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/6)*CA*CF^2*e*Gstrong^4*
      (16 + 8*r - 4*D*r - 28*r^2 + 4*D*r^2 - 4*s - 44*r*s + 14*D*r*s - 
       D^2*r*s - 36*r^2*s + 12*D*r^2*s - D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*(4 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*s^2) - ((I/3)*CA*CF^2*e*Gstrong^4*(-4 + 4*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^3) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*(4 - 4*r - s + 2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^3) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(16 - 18*r - 4*s - 38*r*s + 13*D*r*s - 
       D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/6)*CA*CF^2*e*Gstrong^4*(32 - 64*r + 32*r^2 - 24*s - 32*r*s + 8*D*r*s + 
     68*r^2*s - 12*D*r^2*s + 4*s^2 + 12*r*s^2 - 2*D*r*s^2 + 24*r^2*s^2 - 
     10*D*r^2*s^2 + D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r^3*(4 - s)*s^2), 
 (((I/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3) + ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(-2 + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(-1 + r)*r^3*(4 - s)*s^3) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (16 - 28*r + 4*D*r - 4*s + 24*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(-1 + r)^2*r^3*
      (4 - s)*s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)*r^3*(4 - s)*s^3*(1 - 2*r + r^2 + r*s)) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - r - s)*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)*r^3*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/3)*CA*CF^2*e*Gstrong^4*(-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^2*(4 - s)*s^2*(1 - 2*r + r^2 + r*s)) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(2 - r - s)*(2 - 2*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^2*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/6)*CA*CF^2*e*Gstrong^4*
      (16 + 8*r - 4*D*r - 28*r^2 + 4*D*r^2 - 4*s + 16*r*s - 8*D*r*s + 
       D^2*r*s + 24*r^2*s - 10*D*r^2*s + D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*e*Gstrong^4*(-4 + 4*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^3*(4 - s)*s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      (4 - 4*r - s + 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)*r^3*(4 - s)*s^3) - ((I/3)*CA*CF^2*e*Gstrong^4*
      (32 - 4*D - 34*r + 4*D*r - 8*s + D*s + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/6)*CA*CF^2*e*Gstrong^4*(32 - 64*r + 32*r^2 - 24*s + 48*r*s - 8*D*r*s - 
     12*r^2*s + 4*D*r^2*s + 4*s^2 - 8*r*s^2 + 2*D*r*s^2 - 16*r^2*s^2 + 
     8*D*r^2*s^2 - D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r^3*(4 - s)*s^2), 
 (((-I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(4*D - 24*r + 8*s - 6*D*s + 
       D^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)^2*
      r^3*(4 - s)*s^2) + ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (5 - D - 4*r + D*r)*(12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 
       2*r*s + D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*
      (-1 + r)^4*r^3*(4 - s)*s) - ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      (10 - 2*D - 20*r + 4*D*r + 10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + 
       D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(4*D - 24*r - 12*s + 8*D*s - 
       D^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)^2*
      r^3*(4 - s)*s^2) - ((I/12)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (-2 + 2*r + s)*(12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + 
       D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)*r^4*(4 - s)*
      s^3) + ((I/12)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (2 - 4*r + 2*r^2 + r*s)*(12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 
       2*r*s + D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^2*r^4*
      (4 - s)*s^3))*IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*r^4*(4 - s)*s^3) + 
    ((I/6)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(2 - 4*r + 2*r^2 - s)*
      (1 - 2*r + r^2 + r*s)*(12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 
       2*r*s + D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^4*
      (4 - s)*s^3) + ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*
      (4*D - 24*r - 8*D*r + 48*r^2 + 4*D*r^2 - 24*r^3 - 12*s + 8*D*s - 
       D^2*s - 20*r*s + 18*D*r*s - 2*D^2*r*s - 32*r^2*s + 6*D*r^2*s - 
       D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/6)*CA*(1 - CA^2)*e*Gstrong^4*(10 - 8*D + D^2 + 6*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s) + ((I/6)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/12)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(-4 + 4*r + s)*
    (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(-1 + r)*r^3*(4 - s)*s) + 
  (((I/6)*CA*(1 - CA^2)*e*Gstrong^4*(2 - 2*D + 14*r - 6*D*r + D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s) + ((I/6)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*
      s^2) + ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(4*D - 24*r - 8*D*r + 48*r^2 + 
       4*D*r^2 - 24*r^3 + 8*s - 6*D*s + D^2*s - 20*r*s + 18*D*r*s - 
       2*D^2*r*s - 52*r^2*s + 20*D*r^2*s - 3*D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/12)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(-2 + 2*r + s)*
      (12 - 6*D - 6*r + 2*D*r + 6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^2*(4 - s)*
      s) - ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(24*r - 20*D*r + 48*r^2 + 4*s - 
       2*D*s - 28*r*s + 16*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(12 - 6*D - 6*r + 2*D*r + 
       6*r^2 - 2*s + D*s - 2*r*s + D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*r^2*(4 - s)*s) - ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*
      (24*r - 4*D*r - 72*r^2 + 4*D*r^2 + 48*r^3 + 4*s - 2*D*s - 4*r*s - 
       4*D*r*s + D^2*r*s + 24*r^2*s - 2*D*r^2*s + D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(8*D - 48*r - 8*D*r + 48*r^2 + 4*s - 
     4*D*s + 8*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s), 
 (((-I/3)*CF*(-2 + D)*e*Gstrong^4*(1 - r)^2*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^4*r^3*
      (-4 + s)*s^2) - ((I/24)*CF*(-2 + D)*e*Gstrong^4*
      (48 - 36*D + 4*D^2 + 24*r - 56*s + 48*D*s - 12*D^2*s + D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^2*(4 - s)*s^2) - ((I/24)*CF*(-2 + D)*e*Gstrong^4*
      (4*D - 72*r + 32*D*r - 4*D^2*r - 8*s + 4*D*s - 48*r*s + 44*D*r*s - 
       12*D^2*r*s + D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)*(-1 + r)^2*r^3*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((I/6)*CF*e*Gstrong^4*(2*D - 12*r - 4*D*r + 24*r^2 + 2*D*r^2 - 12*r^3 - 
     4*s + 2*D*s - 12*r*s + 10*D*r*s - D^2*r*s - 20*r^2*s + 6*D*r^2*s - 
     D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^2) + 
  (((-I/24)*CF*e*Gstrong^4*(-4 + 4*r + s)*(48 - 36*D + 4*D^2 + 24*r + 56*s - 
       48*D*s + 12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^3) - 
    ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 8*s - 12*D*s + 
       8*D^2*s - D^3*s - 24*r*s)*(4 - 4*r - s + 2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*
      s^3) - ((I/12)*CF*e*Gstrong^4*(128 - 96*D + 8*D^2 - 80*r + 132*D*r - 
       12*D^2*r - 120*r^2 - 40*s + 28*D*s - 2*D^2*s + 72*r*s - 76*D*r*s + 
       14*D^2*r*s - D^3*r*s + 24*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 128*r + 64*D*r + 64*r^2 - 32*D*r^2 - 
     48*s + 24*D*s + 144*r*s - 88*D*r*s + 8*D^2*r*s - 48*r^2*s + 28*D*r^2*s - 
     4*D^2*r^2*s + 24*r^3*s + 8*s^2 - 4*D*s^2 - 24*r*s^2 + 16*D*r*s^2 - 
     2*D^2*r*s^2 - 40*r^2*s^2 + 36*D*r^2*s^2 - 10*D^2*r^2*s^2 + D^3*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^3*(4 - s)*s^2) + 
  (((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 8*s - 12*D*s + 
       8*D^2*s - D^3*s - 24*r*s)*(4 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) - ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 56*s - 
       48*D*s + 12*D^2*s - D^3*s)*(4 - 4*r - 2*s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) + ((I/12)*CF*e*Gstrong^4*(80 - 60*D + 4*D^2 - 56*r + 96*D*r - 
       8*D^2*r - 96*r^2 - 56*s + 48*D*s - 12*D^2*s + D^3*s + 160*r*s - 
       132*D*r*s + 28*D^2*r*s - 2*D^3*r*s + 24*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 128*r + 64*D*r + 64*r^2 - 32*D*r^2 - 
     4*D*s + 152*r*s - 88*D*r*s + 12*D^2*r*s - 80*r^2*s + 56*D*r^2*s - 
     8*D^2*r^2*s + 40*r*s^2 - 36*D*r*s^2 + 10*D^2*r*s^2 - D^3*r*s^2 + 
     16*r^2*s^2 - 12*D*r^2*s^2 + 2*D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) + 
  ((((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)^2*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(-1 + r)^2*r^3*
      (-4 + s)*s^2) - ((I/24)*CF*e*Gstrong^4*(-1 + r)*(-4 + s)*
      (48 - 36*D + 4*D^2 + 24*r + 56*s - 48*D*s + 12*D^2*s - D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^3*(4 - s)*
      s^3) + ((I/24)*CF*e*Gstrong^4*(-1 + r)*(-4 + s)*
      (48 - 36*D + 4*D^2 + 24*r + 8*s - 12*D*s + 8*D^2*s - D^3*s - 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^3*(4 - s)*
      s^3) + ((I/6)*CF*e*Gstrong^4*(64 - 48*D + 4*D^2 + 48*r - 20*s + 
       14*D*s - D^2*s - 12*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/6)*CF*e*Gstrong^4*(12 - 9*D + D^2 + 6*r)*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*
      s^3) - ((I/3)*CF*(-2 + D)*e*Gstrong^4*(1 - r)^2*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^4*r^3*
      (-4 + s)*s^2) - ((I/12)*CF*(-2 + D)*e*Gstrong^4*(28 - 4*D - 8*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(-1 + r)^2*r^3*
      (4 - s)*s^2) - ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 
       64*s - 56*D*s + 14*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*s^3) - 
    ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r - 112*s + 92*D*s - 
       18*D^2*s + D^3*s - 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*s^3) - 
    ((I/24)*CF*(-2 + D)*e*Gstrong^4*(4*D - 72*r + 32*D*r - 4*D^2*r - 8*s + 
       4*D*s + 72*r*s - 60*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^3*(4 - s)*s^2) + ((I/24)*CF*(-2 + D)*e*Gstrong^4*
      (112 - 72*D + 8*D^2 - 160*r + 108*D*r - 12*D^2*r - 24*r^2 - 32*s + 
       20*D*s - 2*D^2*s - 32*r*s + 36*D*r*s - 12*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^3*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(12 - 9*D + D^2 + 6*r)*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*
      s^3) + ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 64*s - 
       56*D*s + 14*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*s^3) + 
    ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r - 112*s + 92*D*s - 
       18*D^2*s + D^3*s - 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*r^3*(4 - s)*s^3))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((I/6)*CF*e*Gstrong^4*(2*D - 12*r - 4*D*r + 24*r^2 + 2*D*r^2 - 12*r^3 - 
     4*s + 2*D*s - 12*r*s + 10*D*r*s - D^2*r*s - 20*r^2*s + 6*D*r^2*s - 
     D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^2) + 
  (((-I/24)*CF*e*Gstrong^4*(-4 + 4*r + s)*(48 - 36*D + 4*D^2 + 24*r - 64*s + 
       56*D*s - 14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^3) - 
    ((I/6)*CF*e*Gstrong^4*(12 - 9*D + D^2 + 6*r)*(2 - s)*
      (4 - 4*r - s + 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^3) + 
    ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r + 64*s - 56*D*s + 
       14*D^2*s - D^3*s)*(4 - 4*r - s + 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*s^3) - 
    ((I/6)*CF*e*Gstrong^4*(56 - 34*D + 4*D^2 - 116*r + 70*D*r - 8*D^2*r - 
       12*r^2 - 20*s + 12*D*s - D^2*s + 20*r*s - 12*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*
      s^2) - ((I/12)*CF*e*Gstrong^4*(16 - 28*D + 152*r - 8*D*r + 4*D^2*r - 
       96*r^2 + 4*D*s - 88*r*s + 52*D*r*s - 14*D^2*r*s + D^3*r*s + 24*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^3*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/12)*CF*e*Gstrong^4*(48 - 28*D - 104*r + 72*D*r - 4*D^2*r + 128*r^2 - 
       80*D*r^2 + 8*D^2*r^2 - 8*s + 4*D*s - 24*r*s + 32*D*r*s - 12*D^2*r*s + 
       D^3*r*s - 32*r^2*s + 20*D*r^2*s - 2*D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^3*(4 - s)*s) + 
    ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 128*r + 64*D*r + 64*r^2 - 32*D*r^2 - 
       4*D*s - 120*r*s + 96*D*r*s - 12*D^2*r*s + 240*r^2*s - 164*D*r^2*s + 
       20*D^2*r^2*s + 24*r^3*s - 8*r*s^2 + 20*D*r*s^2 - 10*D^2*r*s^2 + 
       D^3*r*s^2 + 8*r^2*s^2 - 20*D*r^2*s^2 + 10*D^2*r^2*s^2 - D^3*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^3*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r - 112*s + 92*D*s - 
       18*D^2*s + D^3*s - 24*r*s)*(4 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) - ((I/24)*CF*e*Gstrong^4*(48 - 36*D + 4*D^2 + 24*r - 64*s + 
       56*D*s - 14*D^2*s + D^3*s)*(4 - 4*r - 2*s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) + ((I/12)*CF*e*Gstrong^4*(80 - 60*D + 4*D^2 - 56*r + 96*D*r - 
       8*D^2*r - 96*r^2 + 64*s - 56*D*s + 14*D^2*s - D^3*s - 80*r*s + 
       76*D*r*s - 24*D^2*r*s + 2*D^3*r*s + 24*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 128*r + 64*D*r + 64*r^2 - 32*D*r^2 - 
     4*D*s - 8*r*s + 24*D*r*s - 4*D^2*r*s + 80*r^2*s - 56*D*r^2*s + 
     8*D^2*r^2*s - 40*r*s^2 + 40*D*r*s^2 - 12*D^2*r*s^2 + D^3*r*s^2 - 
     24*r^2*s^2 + 16*D*r^2*s^2 - 2*D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) + 
  ((((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)^2*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^3*(-1 + r)^2*r^3*
      (-4 + s)*s^2) - ((I/24)*CF*e*Gstrong^4*(-1 + r)*(-4 + s)*
      (48 - 36*D + 4*D^2 + 24*r - 64*s + 56*D*s - 14*D^2*s + D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^3*(4 - s)*
      s^3) + ((I/24)*CF*e*Gstrong^4*(-1 + r)*(-4 + s)*
      (48 - 36*D + 4*D^2 + 24*r - 112*s + 92*D*s - 18*D^2*s + D^3*s - 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^3*(4 - s)*
      s^3) + ((I/6)*CF*e*Gstrong^4*(64 - 48*D + 4*D^2 + 48*r - 20*s + 
       14*D*s - D^2*s - 12*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/6)*CF*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*r^5*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) - 
    ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*r^5*(-4 + s)*s^2) - ((I/12)*CF*(2 - D)*e*Gstrong^4*
      (-2 + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/3)*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*s^2) + 
    (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*r^3*(-4 + s)*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*(-4 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^2) - ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*
      (-2 + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) - 
    ((I/48)*CA*(1 - CA^2)*(2 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*r^5*(4 - s)*s) - 
    ((I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(16 - 2*s - D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*r^5*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*r^3*(4 - s)*s) - ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(8 - 4*s + D*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r*(4 - s)*s), 
 (((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(2 - D + 20*r - 10*D*r + D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)*r^5*(4 - s)*
      s) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(-4 + D - r)*
      (2 - D + 20*r - 10*D*r + D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(1 - r)*r^5*(4 - s)*s) - 
    ((I/3)*CA*CF^2*(3 - D)*(-2 + D)*e*Gstrong^4*(-8 + 2*D + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*r^4*
      (4 - s)*s^2) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (24 - 8*D + 32*s - 32*D*s + 10*D^2*s - D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*r^4*(4 - s)*
      s^2) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(48 - 16*D - 56*s + 
       40*D*s - 10*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*r^4*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*(3 - D)*(-2 + D)*e*Gstrong^4*(30 - 16*D + 2*D^2 + 10*r - 
       2*D*r - 3*s + D*s - 2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*(-3 + D)*m^5*(1 - r)*r^4*(4 - s)*s^2) + 
    ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(-1 + r)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*r^5*
      (4 - s)*s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(2 - D + 20*r - 10*D*r + D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^2*(4 - s)*s) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (48 - 16*D - 56*s + 40*D*s - 10*D^2*s + D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)*r^3*
      (4 - s)*s^2) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (24 - 8*D - 56*s + 40*D*s - 10*D^2*s + D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)^2*
      r^3*(4 - s)*s^2) + ((I/3)*CA*CF^2*(3 - D)*(-2 + D)*e*Gstrong^4*
      (10 - 2*D - 10*r + 2*D*r - 5*s + D*s + 2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*(-3 + D)*m^5*
      (1 - r)*(-1 + r)^2*r^2*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 6*s + 
       3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*(10 - 2*D - 20*r + 4*D*r + 
       10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^4*(4 - s)*s^3))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^4*(4 - s)*
      s^3) + ((I/6)*CA*CF^2*e*Gstrong^4*(24 - 8*D - 48*r + 16*D*r + 24*r^2 - 
       8*D*r^2 + 56*r*s - 40*D*r*s + 10*D^2*r*s - D^3*r*s + 32*r^2*s - 
       32*D*r^2*s + 10*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(-2 + 2*r + s)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*
      s^2) + ((I/6)*CA*CF^2*e*Gstrong^4*(24 - 12*D - 144*r + 88*D*r - 
       12*D^2*r - 8*s + 4*D*s - 16*r*s + 20*D*r*s - 8*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*(44 - 36*D + 10*D^2 - D^3)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^2*(4 - s)*
      s) + (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 
       6*s + 3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^3*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 6*s + 
     3*D*s - 10*r*s + 6*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r*(4 - s)*s) - 
  ((I/6)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 32*r + 16*D*r - 8*s + 4*D*s - 
     64*r*s + 48*D*r*s - 12*D^2*r*s + D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*r^2*(4 - s)*s), 
 (((-I/3)*CF*(3 - D)*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*r^5*(4 - s)*s^2) + 
    ((I/24)*CF*(-2 + D)*e*Gstrong^4*(24 - 8*D + 40*s - 40*D*s + 12*D^2*s - 
       D^3*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(1 - r)*r^4*
      (4 - s)*s^2) - ((I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
      (2 - 4*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*(-1 + r)^2*r^5*(-4 + s)*s^3))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CF*(3 - D)*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(-1 + r)^2*r^3*(4 - s)*s^2) - 
    ((I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^3*r^4*
      (-4 + s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
      (-1 + 4*r - 4*r^2 - r*s + r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*(-1 + r)^2*r^4*(-4 + s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(24 - 8*D - 96*r + 32*D*r + 96*r^2 - 32*D*r^2 + 
       64*r*s - 48*D*r*s + 12*D^2*r*s - D^3*r*s - 24*r^2*s + 8*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^4*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/6)*CF*(52 - 44*D + 12*D^2 - D^3)*e*Gstrong^4*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)*r^2*(4 - s)*s) + 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 64*r + 32*D*r - 24*s + 12*D*s - 
     40*r*s + 24*D*r*s - 4*D^2*r*s - 40*r*s^2 + 40*D*r*s^2 - 12*D^2*r*s^2 + 
     D^3*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r*(4 - s)*s^2) + 
  ((I/12)*CF*e*Gstrong^4*(24 - 8*D - 48*r + 16*D*r + 24*r^2 - 8*D*r^2 + 
     64*r*s - 48*D*r*s + 12*D^2*r*s - D^3*r*s + 40*r^2*s - 40*D*r^2*s + 
     12*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)*r^4*(4 - s)*s^2) - 
  ((I/6)*CF*e*Gstrong^4*(32 - 16*D - 32*r + 16*D*r - 20*s + 10*D*s - 20*r*s + 
     12*D*r*s - 2*D^2*r*s + 4*s^2 - 2*D*s^2 + 8*r*s^2 - 6*D*r*s^2 + 
     D^2*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*r^2*(4 - s)*s^2) - 
  ((I/12)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 32*s + 12*D*s - 
     112*r*s + 80*D*r*s - 12*D^2*r*s + 80*r^2*s - 56*D*r^2*s + 8*D^2*r^2*s - 
     24*r*s^2 + 28*D*r*s^2 - 10*D^2*r*s^2 + D^3*r*s^2 - 16*r^2*s^2 + 
     12*D*r^2*s^2 - 2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2), 
 (((-I/6)*CF*(-2 + D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-3 + D)*m^5*r^5*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) - 
    ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*r^5*(-4 + s)*s^2) - ((I/12)*CF*(2 - D)*e*Gstrong^4*
      (-2 + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/3)*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*s^2) + 
    (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*r^3*(-4 + s)*s^2) + ((I/6)*CF*(2 - D)*e*Gstrong^4*(-4 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^2) - ((I/48)*CA*(1 - CA^2)*(2 - D)*(-2 + D)*e*
      Gstrong^4*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*r^5*(4 - s)*s) + 
    ((I/24)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*(-6 + 2*D + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*r^5*(4 - s)*s^2) - 
    ((I/48)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(16 + 2*s - 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*r^5*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((I/12)*CA*(1 - CA^2)*(2 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*r^3*(4 - s)*s) - ((I/24)*CA*(1 - CA^2)*e*Gstrong^4*(8 - 4*s + D*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/(m*r*(4 - s)*s), 
 (((-I/3)*CF*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*r^5*(4 - s)*
      s^2) + ((I/24)*CF*(4 - D)*(-2 + D)*e*Gstrong^4*
      (56 - 8*D + 20*s - 12*D*s + D^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)*r^4*(4 - s)*s^2) - 
    ((I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^2*r^5*
      (-4 + s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CF*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)^2*
      r^3*(4 - s)*s^2) - ((I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
      (2 - 4*r + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^3*r^4*
      (-4 + s)*s^3))*IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((I/12)*CF*(4 - D)*e*Gstrong^4*(56 - 8*D - 112*r + 16*D*r + 56*r^2 - 
     8*D*r^2 + 76*r*s - 20*D*r*s + D^2*r*s + 20*r^2*s - 12*D*r^2*s + 
     D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)*r^4*(4 - s)*s^2) - 
  ((I/12)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 232*s + 
     92*D*s - 8*D^2*s + 128*r*s - 88*D*r*s + 12*D^2*r*s - 80*r^2*s + 
     56*D*r^2*s - 8*D^2*r^2*s - 104*r*s^2 + 84*D*r*s^2 - 18*D^2*r*s^2 + 
     D^3*r*s^2 + 24*r^2*s^2 - 16*D*r^2*s^2 + 2*D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) - 
  ((I/6)*CF*(4 - D)^2*(12 - D)*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)*r^2*(4 - s)*s) + 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 64*r + 32*D*r - 24*s + 12*D*s - 
     160*r*s + 48*D*r*s - 4*D^2*r*s - 80*r*s^2 + 68*D*r*s^2 - 16*D^2*r*s^2 + 
     D^3*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r*(4 - s)*s^2) - 
  ((I/6)*CF*e*Gstrong^4*(32 - 16*D - 32*r + 16*D*r - 20*s + 10*D*s - 80*r*s + 
     24*D*r*s - 2*D^2*r*s + 4*s^2 - 2*D*s^2 - 12*r*s^2 + 8*D*r*s^2 - 
     D^2*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*r^2*(4 - s)*s^2) + 
  ((((-2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
      (-1 + 4*r - 4*r^2 - r*s + r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*(-1 + r)^2*r^4*(-4 + s)*s^3) + 
    ((I/12)*CF*(4 - D)*e*Gstrong^4*(56 - 8*D - 224*r + 32*D*r + 224*r^2 - 
       32*D*r^2 + 76*r*s - 20*D*r*s + D^2*r*s - 56*r^2*s + 8*D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^4*(4 - s)*
      s^2))*IntF[1/((m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (-Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/3)*CA*CF^2*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*r^4*(4 - s)*
      s^2) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(2 - D + 44*r - 14*D*r + 
       D^2*r)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*r^5*(4 - s)*
      s) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(224 - 88*D + 8*D^2 + 72*s - 
       60*D*s + 14*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*r^4*(4 - s)*s^2) - 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(448 - 176*D + 16*D^2 - 296*s + 
       148*D*s - 22*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*r^4*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 
       6*s + 3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*r^5*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*CF^2*(4 - D)*(7 - D)*(-2 + D)*e*Gstrong^4*(1 - r)*(-2 + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*(-1 + r)^3*
      r^2*(4 - s)*s^2) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (2 - D + 44*r - 14*D*r + D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r^2*(4 - s)*s) + 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(224 - 88*D + 8*D^2 - 296*s + 
       148*D*s - 22*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(-1 + r)^2*r^3*(4 - s)*s^2) + 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(448 - 176*D + 16*D^2 - 296*s + 
       148*D*s - 22*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(-1 + r)*r^3*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(16 - 8*D - 16*r + 8*D*r - 
       6*s + 3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*(10 - 2*D - 20*r + 4*D*r + 
       10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*CF^2*(184 - 104*D + 18*D^2 - D^3)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^2*(4 - s)*
      s) + (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 6*s + 
     3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*r*(4 - s)*s^2) + 
  ((((-2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(1 - 2*r + r^2 + r*s)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*
      s^3) + ((I/6)*CA*CF^2*e*Gstrong^4*(224 - 88*D + 8*D^2 - 448*r + 
       176*D*r - 16*D^2*r + 224*r^2 - 88*D*r^2 + 8*D^2*r^2 + 296*r*s - 
       148*D*r*s + 22*D^2*r*s - D^3*r*s + 72*r^2*s - 60*D*r^2*s + 
       14*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)*r^3*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(-2 + 2*r + s)*
      (16 - 8*D - 16*r + 8*D*r - 6*s + 3*D*s - 40*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^2*(4 - s)*
      s^2) - ((I/6)*CA*CF^2*e*Gstrong^4*(16 - 8*D - 32*r + 16*D*r - 8*s + 
       4*D*s - 264*r*s + 128*D*r*s - 20*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/6)*CA*CF^2*e*Gstrong^4*(24 - 12*D - 304*r + 80*D*r - 4*D^2*r - 8*s + 
     4*D*s - 96*r*s + 76*D*r*s - 16*D^2*r*s + D^3*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*r^2*(4 - s)*s), 
 ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-2 + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) + ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (12 - 4*D - 28*r + 4*D*r - 20*s + 10*D*s - D^2*s + 24*r*s - 10*D*r*s + 
       D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^3*r^2*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2*r - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3*(r^2 + s - r*s)) + 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-2*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^2*r*(4 - s)*s^3*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2 - s)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3*
      (r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) + (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^2*r*(4 - s)*s^2*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*(2 - s)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) - ((I/3)*CA*CF^2*e*Gstrong^4*(8 - 4*D + 8*r + 4*D*r + 
       16*s - 8*D*s + D^2*s - 20*r*s + 8*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*e*Gstrong^4*(12 - 4*D - 28*r + 4*D*r - 20*s + 10*D*s - 
       D^2*s + 24*r*s - 10*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^2*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  (((2*I)/3)*CA*CF^2*e*Gstrong^4*(4*r - s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m^3*(1 - r)^3*r*(4 - s)*s^3) - 
  ((I/3)*CA*CF^2*e*Gstrong^4*(32*r^2 + 12*s - 4*D*s - 24*r*s - 12*r^2*s + 
     4*D*r^2*s - 20*s^2 + 10*D*s^2 - D^2*s^2 + 40*r*s^2 - 18*D*r*s^2 + 
     2*D^2*r*s^2 - 16*r^2*s^2 + 8*D*r^2*s^2 - D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^3*(4 - s)*s^2) + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*(-4*r - s + 2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2 - 34*r + 4*D*r - 18*s + 9*D*s - D^2*s + 
       26*r*s - 10*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-2 + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) + ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (12 - 4*D - 28*r + 4*D*r + 40*s - 12*D*s + D^2*s - 36*r*s + 12*D*r*s - 
       D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-3 + D)*m^5*(1 - r)^3*r^2*(4 - s)*
      s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2*r - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^3*r*(4 - s)*s^3*(r^2 + s - r*s)) + 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-2*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^2*r*(4 - s)*s^3*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2 - s)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*r*(4 - s)*s^3*
      (r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) + (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^2*r*(4 - s)*s^2*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*(-1 + r)*(2 - s)*
      (-2*r - s + r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^2*
      (r^2 + s - r*s)) + ((I/3)*CA*CF^2*e*Gstrong^4*(12 - 4*D - 28*r + 
       4*D*r + 40*s - 12*D*s + D^2*s - 36*r*s + 12*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^2*r*(4 - s)*s^2) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(8 - 4*D + 8*r + 4*D*r - 44*s + 14*D*s - 
       D^2*s + 40*r*s - 14*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*e*Gstrong^4*(4*r - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^3) + (((2*I)/3)*CA*CF^2*(4 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*s^2) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(1 - s)*(-4*r - s + 2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*r*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*e*Gstrong^4*(2 - 18*r + 42*s - 13*D*s + D^2*s - 
       38*r*s + 13*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CA*CF^2*e*Gstrong^4*(32*r^2 + 12*s - 4*D*s - 104*r*s + 16*D*r*s + 
     68*r^2*s - 12*D*r^2*s + 40*s^2 - 12*D*s^2 + D^2*s^2 - 60*r*s^2 + 
     22*D*r*s^2 - 2*D^2*r*s^2 + 24*r^2*s^2 - 10*D*r^2*s^2 + D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   (m*(1 - r)^3*(4 - s)*s^2), 
 (((-I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(24 - 4*D - 24*r - 8*s + 
       6*D*s - D^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*
      (1 - r)^3*r^3*(4 - s)*s^2) + ((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (24 - 4*D - 24*r - 8*s + 6*D*s - D^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*r^3*(4 - s)*s^2) + 
    ((I/12)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(-1 - 4*r + D*r)*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^4*(4 - s)*s) + ((I/12)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      (10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^2))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/24)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*(24 - 4*D - 24*r + 12*s - 
       8*D*s + D^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-3 + D)*m^5*
      (1 - r)^3*r^2*(4 - s)*s^2) + ((I/6)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (2*r - s)*(12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - 
       D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)*(-1 + r)^3*r*
      (4 - s)*s^3) + ((I/6)*CA*(1 - CA^2)*(-2 + D)*e*Gstrong^4*
      (2*r^2 + s - r*s)*(12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 
       2*r*s - D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^4*r^2*
      (4 - s)*s^3))*IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*(4 - s)*
      s^3) + ((I/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(2*r^2 - s)*
      (r^2 + s - r*s)*(12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - 
       D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*(-1 + r)^3*r^2*
      (4 - s)*s^3) + ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
      (24*r^2 - 4*D*r^2 - 24*r^3 + 64*s - 32*D*s + 4*D^2*s - 84*r*s + 
       30*D*r*s - 4*D^2*r*s + 32*r^2*s - 6*D*r^2*s + D^2*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*(1 - CA^2)*e*Gstrong^4*(16 - 8*D + D^2 - 6*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s) - ((I/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*(-1 + r)^2*r^2*
      (4 - s)*s))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/6)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(4*r - s)*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*(-1 + r)^2*r*
      (4 - s)*s) - ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
      (72 - 20*D - 120*r + 20*D*r + 48*r^2 - 24*s + 14*D*s - D^2*s + 28*r*s - 
       16*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)^2*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*(1 - CA^2)*e*Gstrong^4*(16 - 8*D + D^2 - 14*r + 6*D*r - D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s) + ((I/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*
      s))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CA*(1 - CA^2)*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*
      s^2) + ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(24*r^2 - 4*D*r^2 - 24*r^3 + 
       64*s - 32*D*s + 4*D^2*s - 124*r*s + 58*D*r*s - 8*D^2*r*s + 52*r^2*s - 
       20*D*r^2*s + 3*D^2*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*s^2))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(2*r - s)*
      (12 - 4*D - 6*r - 2*D*r + 6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*
      s) + ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(72 - 20*D - 120*r + 20*D*r + 
       48*r^2 - 24*s + 14*D*s - D^2*s + 28*r*s - 16*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CA*(1 - CA^2)*(-4 + D)*e*Gstrong^4*(12 - 4*D - 6*r - 2*D*r + 
       6*r^2 - 4*s + 2*D*s + 2*r*s - D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*(4 - s)*s) - 
    ((I/6)*CA*(1 - CA^2)*e*Gstrong^4*(24 - 4*D - 24*r - 22*s + 9*D*s - 
       D^2*s + 20*r*s - 6*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)*r*(4 - s)*s) - ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*
      (12 - 36*r + 24*r^2 - 2*s + D*s + 6*r*s - D*r*s - 6*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(1 - r)^2*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((I/12)*CA*(1 - CA^2)*e*Gstrong^4*(72 - 20*D - 24*r + 4*D*r - 48*r^2 - 
     48*s + 22*D*s - 3*D^2*s + 44*r*s - 16*D*r*s + 3*D^2*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s), 
 ((((2*I)/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*(1 - r)^3*r^2*(-4 + s)*s^2) + 
    ((I/12)*CF*(-2 + D)*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 64*s - 
       56*D*s + 14*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*r^3*(4 - s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 136*s + 92*D*s - 
       18*D^2*s + D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 136*s + 92*D*s - 
       18*D^2*s + D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*(-2 + D)*e*Gstrong^4*(72 - 36*D + 4*D^2 - 72*r + 32*D*r - 
       4*D^2*r - 64*s + 56*D*s - 14*D^2*s + D^3*s + 72*r*s - 60*D*r*s + 
       14*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^3*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 136*s + 92*D*s - 
       18*D^2*s + D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 136*s + 92*D*s - 
       18*D^2*s + D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(144 - 72*D + 8*D^2 - 96*r + 32*D*r - 4*D^2*r - 
       72*s + 36*D*s - 4*D^2*s - 24*r*s + 44*D*r*s - 12*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2) + ((I/6)*CF*e*Gstrong^4*(144 - 72*D + 8*D^2 - 240*r + 104*D*r - 
       12*D^2*r + 120*r^2 - 36*D*r^2 + 4*D^2*r^2 - 24*r^3 - 56*r*s + 
       52*D*r*s - 14*D^2*r*s + D^3*r*s + 64*r^2*s - 56*D*r^2*s + 
       14*D^2*r^2*s - D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 64*s - 56*D*s + 
       14*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(4*r - s)*(72 - 36*D + 4*D^2 - 24*r - 64*s + 
       56*D*s - 14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*s^3) + 
    ((I/3)*CF*e*Gstrong^4*(112 - 48*D + 4*D^2 - 48*r - 32*s + 14*D*s - 
       D^2*s + 12*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r*
      (4 - s)*s^2) - ((I/12)*CF*e*Gstrong^4*(-4*r - s + 2*r*s)*
      (72 - 36*D + 4*D^2 - 24*r - 136*s + 92*D*s - 18*D^2*s + D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*
      s^3))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CF*e*Gstrong^4*(28 - 4*D - 8*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(1 - r)^2*(4 - s)*s) - 
    ((I/6)*CF*e*Gstrong^4*(64*r^2 - 32*D*r^2 + 72*s - 36*D*s + 4*D^2*s - 
       168*r*s + 72*D*r*s - 8*D^2*r*s + 72*r^2*s - 12*D*r^2*s + 4*D^2*r^2*s - 
       24*r^3*s + 64*s^2 - 56*D*s^2 + 14*D^2*s^2 - D^3*s^2 - 128*r*s^2 + 
       112*D*r*s^2 - 28*D^2*r*s^2 + 2*D^3*r*s^2 + 72*r^2*s^2 - 60*D*r^2*s^2 + 
       14*D^2*r^2*s^2 - D^3*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*(1 - r)^3*(-4 + s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(-4 + s)*(72 - 36*D + 4*D^2 - 24*r - 64*s + 
       56*D*s - 14*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*(4 - s)*s^3) - 
    ((I/3)*CF*e*Gstrong^4*(112 - 48*D + 4*D^2 - 48*r - 32*s + 14*D*s - 
       D^2*s + 12*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*(4 - s)*
      s^2) + ((I/12)*CF*e*Gstrong^4*(-4 + s)*(72 - 36*D + 4*D^2 - 24*r - 
       136*s + 92*D*s - 18*D^2*s + D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*(4 - s)*
      s^3))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((2*I)/3)*CF*e*Gstrong^4*r*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m*(1 - r)^2*s^2) - ((I/3)*CF*e*Gstrong^4*(20 - 4*D - 32*r + 4*D*r - 
       4*s + D*s + 8*r*s - D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m*(1 - r)^2*(4 - s)*s) + ((I/6)*CF*e*Gstrong^4*
      (72 - 36*D + 4*D^2 - 72*r + 32*D*r - 4*D^2*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s + 72*r*s - 60*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 64*s + 56*D*s - 
       14*D^2*s + D^3*s)*(-4*r + s + r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(-4*r - s + r*s)*(72 - 36*D + 4*D^2 - 24*r - 
       136*s + 92*D*s - 18*D^2*s + D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) - ((I/6)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 248*r + 96*D*r - 
       8*D^2*r + 96*r^2 - 8*s - 20*D*s + 10*D^2*s - D^3*s - 32*r*s + 
       76*D*r*s - 24*D^2*r*s + 2*D^3*r*s - 24*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2))*IntF[1/((-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
        Momentum[k1, D]] - 2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((2*I)/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^5*(1 - r)^3*r^2*(-4 + s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 56*s - 48*D*s + 
       12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 56*s - 48*D*s + 
       12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) + 
    ((I/12)*CF*(-2 + D)*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 56*s + 
       48*D*s - 12*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^2*r^3*(4 - s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 16*s - 12*D*s + 
       8*D^2*s - D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 16*s - 12*D*s + 
       8*D^2*s - D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*(-2 + D)*e*Gstrong^4*(72 - 36*D + 4*D^2 - 72*r + 32*D*r - 
       4*D^2*r + 56*s - 48*D*s + 12*D^2*s - D^3*s - 48*r*s + 44*D*r*s - 
       12*D^2*r*s + D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-3 + D)*m^5*(1 - r)^3*r^3*(4 - s)*s^2))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 56*s - 48*D*s + 
       12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 56*s - 48*D*s + 
       12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 16*s - 12*D*s + 
       8*D^2*s - D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^3*r^2*(4 - s)*s^3) - 
    ((I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 16*s - 12*D*s + 
       8*D^2*s - D^3*s + 24*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(1 - r)^2*(-1 + r)*r^2*(4 - s)*s^3))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/6)*CF*e*Gstrong^4*(144 - 72*D + 8*D^2 - 96*r + 32*D*r - 4*D^2*r - 
       72*s + 36*D*s - 4*D^2*s + 96*r*s - 60*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2) + ((I/6)*CF*e*Gstrong^4*(144 - 72*D + 8*D^2 - 240*r + 104*D*r - 
       12*D^2*r + 120*r^2 - 36*D*r^2 + 4*D^2*r^2 - 24*r^3 + 64*r*s - 
       52*D*r*s + 12*D^2*r*s - D^3*r*s - 56*r^2*s + 48*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/6)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r - 56*s + 48*D*s - 
     12*D^2*s + D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*s^2) + 
  (((-I/3)*CF*e*Gstrong^4*(12 - 4*D - 2*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(1 - r)^2*(4 - s)*s) - 
    ((I/6)*CF*e*Gstrong^4*(64*r^2 - 32*D*r^2 + 72*s - 36*D*s + 4*D^2*s - 
       168*r*s + 72*D*r*s - 8*D^2*r*s + 72*r^2*s - 12*D*r^2*s + 4*D^2*r^2*s - 
       24*r^3*s - 56*s^2 + 48*D*s^2 - 12*D^2*s^2 + D^3*s^2 + 112*r*s^2 - 
       96*D*r*s^2 + 24*D^2*r*s^2 - 2*D^3*r*s^2 - 48*r^2*s^2 + 44*D*r^2*s^2 - 
       12*D^2*r^2*s^2 + D^3*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)^3*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/12)*CF*e*Gstrong^4*(4*r - s)*(72 - 36*D + 4*D^2 - 24*r + 56*s - 
       48*D*s + 12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*s^3) + 
    ((I/3)*CF*e*Gstrong^4*(112 - 48*D + 4*D^2 - 48*r - 32*s + 14*D*s - 
       D^2*s + 12*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r*
      (4 - s)*s^2) - ((I/12)*CF*e*Gstrong^4*(-4*r - s + 2*r*s)*
      (72 - 36*D + 4*D^2 - 24*r - 16*s - 12*D*s + 8*D^2*s - D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*r^2*(4 - s)*
      s^3))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-4 + D)*m^3*(1 - r)^3*(-4 + s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(-4 + s)*(72 - 36*D + 4*D^2 - 24*r + 56*s - 
       48*D*s + 12*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^3*(4 - s)*s^3) - 
    ((I/3)*CF*e*Gstrong^4*(112 - 48*D + 4*D^2 - 48*r - 32*s + 14*D*s - 
       D^2*s + 12*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*(4 - s)*
      s^2) + ((I/12)*CF*e*Gstrong^4*(-4 + s)*(72 - 36*D + 4*D^2 - 24*r - 
       16*s - 12*D*s + 8*D^2*s - D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^3*(4 - s)*
      s^3))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CF*e*Gstrong^4*(20 - 4*D - 8*r + 4*D*r - 6*s + D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(1 - r)^2*(4 - s)*s) + 
    ((I/6)*CF*e*Gstrong^4*(64*r^2 - 32*D*r^2 + 72*s - 36*D*s + 4*D^2*s - 
       72*r*s + 32*D*r*s - 4*D^2*r*s - 48*r^2*s + 24*D*r^2*s + 56*s^2 - 
       48*D*s^2 + 12*D^2*s^2 - D^3*s^2 - 48*r*s^2 + 44*D*r*s^2 - 
       12*D^2*r*s^2 + D^3*r*s^2 + 8*r^2*s^2 - 4*D*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/12)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 - 24*r + 56*s - 48*D*s + 
       12*D^2*s - D^3*s)*(-4*r + s + r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*s^3) + 
    ((I/12)*CF*e*Gstrong^4*(-4*r - s + r*s)*(72 - 36*D + 4*D^2 - 24*r - 
       16*s - 12*D*s + 8*D^2*s - D^3*s + 24*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^3) + ((I/6)*CF*e*Gstrong^4*(144 - 72*D + 8*D^2 - 96*r + 32*D*r - 
       4*D^2*r - 72*s + 36*D*s - 4*D^2*s + 96*r*s - 60*D*r*s + 14*D^2*r*s - 
       D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2) - ((I/6)*CF*e*Gstrong^4*(72 - 36*D + 4*D^2 + 152*r - 64*D*r + 
       4*D^2*r - 96*r^2 + 56*s - 48*D*s + 12*D^2*s - D^3*s - 112*r*s + 
       72*D*r*s - 14*D^2*r*s + D^3*r*s + 24*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)^2*r^2*(4 - s)*
      s^2))*IntF[1/((-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (-Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*(2 - 4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)^2*(-1 + r)^2*
      r^2*(-4 + s)*s^3) - ((I/6)*CF*(-2 + D)*e*Gstrong^4*(-1 - 4*r + D*r)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^4*(4 - s)*s^2) - ((I/6)*CF*(-2 + D)*e*Gstrong^4*
      (10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((2*I)/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*(2 - 4*r + r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1])/
   ((-4 + D)*m^5*(1 - r)^2*(-1 + r)^3*r*(-4 + s)*s^3) + 
  (((-I/3)*CF*(-2 + D)*e*Gstrong^4*(2 - s)*(2 - 4*r - s + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(1 - r)^2*(-1 + r)^2*
      r^2*(-4 + s)*s^3) - ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2*r - s)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)*(-1 + r)^3*r*
      (4 - s)*s^4) - ((I/3)*CF*(-2 + D)*e*Gstrong^4*(2*r^2 + s - r*s)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^4*r^2*(4 - s)*
      s^4))*IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*(4 - s)*
      s^4) - (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2*r^2 - s)*(r^2 + s - r*s)*
      (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
       6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*(-1 + r)^3*r^2*
      (4 - s)*s^4))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 
     34*r*s - 9*D*r*s + D^2*r*s - 6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + 
     D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(1 - r)*(-1 + r)^2*r^2*(4 - s)*s^2) + 
  (((-I/3)*CF*e*Gstrong^4*(2 - 2*D - 4*r + 2*D*r - 2*s + D*s + 2*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(1 - r)^2*r*(4 - s)*s) - 
    ((I/3)*CF*(-4 + D)*e*Gstrong^4*(4*r - s)*(16*r - 8*D*r - 42*s + 16*D*s - 
       D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 6*r^2*s + 4*s^2 - 2*D*s^2 - 
       2*r*s^2 + D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)*(-1 + r)^2*r*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  (((4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*(-1 + 4*r - 4*r^2 - r*s + r^2*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((-4 + D)*m^3*(1 - r)^2*(-1 + r)^2*r*(-4 + s)*s^3) + 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 152*s + 56*D*s - 
     4*D^2*s + 8*r*s + 16*D*r*s - 4*D^2*r*s + 80*r^2*s - 56*D*r^2*s + 
     8*D^2*r^2*s - 64*s^2 + 56*D*s^2 - 14*D^2*s^2 + D^3*s^2 + 64*r*s^2 - 
     56*D*r*s^2 + 14*D^2*r*s^2 - D^3*r*s^2 - 16*r^2*s^2 + 12*D*r^2*s^2 - 
     2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) - 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 256*r^2 + 128*D*r^2 + 256*r^3 - 
     128*D*r^3 - 152*s + 56*D*s - 4*D^2*s + 216*r*s - 76*D*r*s + 4*D^2*r*s + 
     520*r^2*s - 192*D*r^2*s + 16*D^2*r^2*s - 736*r^3*s + 240*D*r^3*s - 
     16*D^2*r^3*s + 96*r^4*s - 64*s^2 + 56*D*s^2 - 14*D^2*s^2 + D^3*s^2 + 
     128*r*s^2 - 112*D*r*s^2 + 28*D^2*r*s^2 - 2*D^3*r*s^2 - 200*r^2*s^2 + 
     104*D*r^2*s^2 - 18*D^2*r^2*s^2 + D^3*r^2*s^2 + 168*r^3*s^2 - 
     52*D*r^3*s^2 + 4*D^2*r^3*s^2 - 24*r^4*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^3*r^2*(4 - s)*s^2) - 
  (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 
     34*r*s - 9*D*r*s + D^2*r*s - 6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + 
     D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*s^2) - 
  (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
    (16*r - 8*D*r - 42*s + 16*D*s - D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 
     6*r^2*s + 4*s^2 - 2*D*s^2 - 2*r*s^2 + D*r*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*s^3) + 
  (((I/3)*CF*(-4 + D)*e*Gstrong^4*(2*r - s)*(16*r - 8*D*r - 42*s + 16*D*s - 
       D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 6*r^2*s + 4*s^2 - 2*D*s^2 - 
       2*r*s^2 + D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*r*(4 - s)*s^2) + 
    ((I/3)*CF*e*Gstrong^4*(32*r^2 - 16*D*r^2 + 4*s - 6*D*s + 2*D^2*s + 
       76*r*s - 24*D*r*s - 116*r^2*s + 42*D*r^2*s - 2*D^2*r^2*s + 12*r^3*s - 
       4*s^2 + 4*D*s^2 - D^2*s^2 - 4*r*s^2 + D^2*r*s^2 + 12*r^2*s^2 - 
       6*D*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 152*s + 56*D*s - 4*D^2*s + 184*r*s - 
     60*D*r*s + 4*D^2*r*s - 72*r^2*s + 24*D*r^2*s - 64*s^2 + 56*D*s^2 - 
     14*D^2*s^2 + D^3*s^2 + 128*r*s^2 - 112*D*r*s^2 + 28*D^2*r*s^2 - 
     2*D^3*r*s^2 - 56*r^2*s^2 + 52*D*r^2*s^2 - 14*D^2*r^2*s^2 + D^3*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) + 
  ((((-2*I)/3)*CF*(-4 + D)*e*Gstrong^4*(16*r - 8*D*r - 42*s + 16*D*s - 
       D^2*s + 34*r*s - 9*D*r*s + D^2*r*s - 6*r^2*s + 4*s^2 - 2*D*s^2 - 
       2*r*s^2 + D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*(4 - s)*s^2) + 
    ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 160*s + 
       68*D*s - 8*D^2*s + 32*r*s - 12*D*r*s + 4*D^2*r*s + 160*r^2*s - 
       60*D*r^2*s + 4*D^2*r^2*s - 24*r^3*s + 200*s^2 - 108*D*s^2 + 
       20*D^2*s^2 - D^3*s^2 - 280*r*s^2 + 160*D*r*s^2 - 34*D^2*r*s^2 + 
       2*D^3*r*s^2 + 80*r^2*s^2 - 52*D*r^2*s^2 + 14*D^2*r^2*s^2 - 
       D^3*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 128*r^2 + 64*D*r^2 - 160*s + 
     68*D*s - 8*D^2*s - 64*r*s + 8*D*r*s + 4*D^2*r*s + 328*r^2*s - 
     104*D*r^2*s + 4*D^2*r^2*s - 48*r^3*s + 200*s^2 - 108*D*s^2 + 
     20*D^2*s^2 - D^3*s^2 - 296*r*s^2 + 172*D*r*s^2 - 36*D^2*r*s^2 + 
     2*D^3*r*s^2 + 88*r^2*s^2 - 60*D*r^2*s^2 + 16*D^2*r^2*s^2 - D^3*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
        Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^3*r*(4 - s)*s^2) + 
  ((I/6)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 152*s + 56*D*s - 
     4*D^2*s + 88*r*s - 40*D*r*s + 4*D^2*r*s - 80*r^2*s + 56*D*r^2*s - 
     8*D^2*r^2*s - 64*s^2 + 56*D*s^2 - 14*D^2*s^2 + D^3*s^2 + 64*r*s^2 - 
     56*D*r*s^2 + 14*D^2*r*s^2 - D^3*r*s^2 + 24*r^2*s^2 - 16*D*r^2*s^2 + 
     2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
        m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s^2) - 
  (((4*I)/3)*CF*(-3 + D)*e*Gstrong^4*(2 - s)*(-1 + 4*r - 4*r^2 - r*s + r^2*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*
    IntF[1/((-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (-Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((-4 + D)*m^3*(1 - r)^2*(-1 + r)^2*r*(-4 + s)*s^3), 
 (((-I/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*r^3*
      (4 - s)*s) + ((I/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*
      (1 - r)*(-1 - 4*r + D*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(-1 - 4*r + D*r)*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(2*r - s)*(168 - 88*D + 12*D^2 - 
       160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 
       168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^3*r*(4 - s)*
      s^3) + ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(2*r^2 + s - r*s)*
      (168 - 88*D + 12*D^2 - 160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^4*r^2*(4 - s)*
      s^3) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*(36 - 17*D + 2*D^2 - 6*r + 
       5*D*r - D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*(10*r^2 - 2*D*r^2 + s + 
       3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r^4*(4 - s)*s^2) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(20 - 14*D + 2*D^2 - 232*r + 
       96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 60*r*s - 26*D*r*s + 
       3*D^2*r*s)*(10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^2) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-168*r^2 + 52*D*r^2 - 4*D^2*r^2 - 672*r^3 + 376*D*r^3 - 68*D^2*r^3 + 
       4*D^3*r^3 - 8*s + 2*D*s + 38*r*s - 8*D*r*s + 200*r^2*s - 110*D*r^2*s + 
       19*D^2*r^2*s - D^3*r^2*s - 20*r^3*s + 9*D*r^3*s - D^2*r^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-7 + D)*(-5 + D)*m^5*
      (-1 + r)^4*r^5*(4 - s)*s^2) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (1 - r)^2*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + 
       D^2*r*s)*(840*r^4 - 428*D*r^4 + 72*D^2*r^4 - 4*D^3*r^4 + 140*r^2*s - 
       48*D*r^2*s + 4*D^2*r^2*s - 280*r^3*s + 96*D*r^3*s - 8*D^2*r^3*s - 
       280*r^4*s + 166*D*r^4*s - 32*D^2*r^4*s + 2*D^3*r^4*s + 8*s^2 - 
       2*D*s^2 - 46*r*s^2 + 10*D*r*s^2 - 162*r^2*s^2 + 102*D*r^2*s^2 - 
       19*D^2*r^2*s^2 + D^3*r^2*s^2 + 220*r^3*s^2 - 119*D*r^3*s^2 + 
       20*D^2*r^3*s^2 - D^3*r^3*s^2 - 20*r^4*s^2 + 9*D*r^4*s^2 - D^2*r^4*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-7 + D)*(-5 + D)*m^5*
      (-1 + r)^6*r^5*(4 - s)*s^3))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      (4 - s)*s) + ((I/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-4 + D)*(-2 + D)*e*
      Gstrong^4*(1 - r)^2*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^5*r*(4 - s)*s) + 
    ((I/3)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      (36 - 17*D + 2*D^2 - 6*r + 5*D*r - D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^6*r*
      (4 - s)*s) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (144 - 68*D + 8*D^2 + 24*s - 28*D*s + 10*D^2*s - D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^4*r^2*(4 - s)*
      s) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(-5 + D + r)*
      (144 - 68*D + 8*D^2 + 24*s - 28*D*s + 10*D^2*s - D^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^3*
      r^2*(4 - s)*s) - ((I/3)*CA*CF^2*(-7 + D)*(-4 + D)*(-2 + D)*e*Gstrong^4*
      (1 - r)^3*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + 
       D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^8*
      (4 - s)*s^2) + ((I/12)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)^3*
      (-14 + 2*D - s)*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 
       11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-7 + D)*m^5*(-1 + r)^8*(4 - s)*s^2) + 
    ((I/12)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)^2*(-14 + 2*D - s)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-7 + D)*m^5*(-1 + r)^7*
      (4 - s)*s^2) - ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^5*r*(4 - s)*s) - 
    ((I/3)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(20 - 14*D + 2*D^2 - 232*r + 
       96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 60*r*s - 26*D*r*s + 
       3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r*
      (4 - s)*s) - ((I/12)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)^2*
      (168 - 88*D + 12*D^2 + 48*r + 4*D*r - 4*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^6*r*
      (4 - s)*s) - ((I/12)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      (168 - 88*D + 12*D^2 - 160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^5*r*
      (4 - s)*s) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (144 - 68*D + 8*D^2 - 80*r + 56*D*r - 8*D^2*r + 24*s - 28*D*s + 
       10*D^2*s - D^3*s - 24*r*s + 28*D*r*s - 10*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r*
      (4 - s)*s) - ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*
      (10 - 2*D - 28*r + 6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 
       2*D*r*s - 4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-5 + D)*m^5*(-1 + r)^5*r*(4 - s)*s))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      (2*r - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^3*r*(4 - s)*
      s^3) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(144 - 68*D + 8*D^2 + 
       24*s - 28*D*s + 10*D^2*s - D^3*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*r^4*(4 - s)*s) + 
    (((2*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*(1 - r)^2*
      (2*r^2 + s - r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(-1 + r)^4*r^2*(4 - s)*s^3) - 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(-1 - 4*r + D*r)*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^2*r^4*(4 - s)*s) + 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(-1 - 4*r + D*r)*
      (168 - 88*D + 12*D^2 - 160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^2*
      r^4*(4 - s)*s) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (144 - 68*D + 8*D^2 - 80*r + 56*D*r - 8*D^2*r + 24*s - 28*D*s + 
       10*D^2*s - D^3*s - 24*r*s + 28*D*r*s - 10*D^2*r*s + D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*r^4*
      (4 - s)*s) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (168 - 88*D + 12*D^2 + 48*r + 4*D*r - 4*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 14*D^2*r*s - D^3*r*s)*
      (10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^2) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (10 - 2*D - 28*r + 6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 
       2*D*r*s - 4*r^2*s + D*r^2*s)*(10*r^2 - 2*D*r^2 + s + 3*r*s - D*r*s - 
       4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-5 + D)*m^5*(-1 + r)^4*r^4*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)^2*(16*r - 8*D*r - 30*s + 
       12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-20*r^4 + 4*D*r^4 - 30*r^2*s + 6*D*r^2*s + 20*r^3*s - 4*D*r^3*s - 
       6*s^2 + D*s^2 + 7*r*s^2 - D*r*s^2 - r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^6*r*(4 - s)*
      s^5) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)^2*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (20*r^4 - 4*D*r^4 - 40*r^2*s + 18*D*r^2*s - 2*D^2*r^2*s - 20*r^3*s + 
       4*D*r^3*s - s^2 - 28*r*s^2 + 11*D*r*s^2 - D^2*r*s^2 + 29*r^2*s^2 - 
       11*D*r^2*s^2 + D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^6*r^3*(4 - s)*s^4) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(16*r - 8*D*r - 30*s + 
       12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-40*r^4 + 8*D*r^4 - 68*r^2*s + 12*D*r^2*s + 40*r^3*s - 8*D*r^3*s + 
       16*s^2 - 4*D*s^2 + 22*r*s^2 - 2*D*r*s^2 - 2*r^2*s^2 - 6*s^3 + D*s^3)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^5*r*(4 - s)*
      s^5))*IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((8*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-3 + D)*e*Gstrong^4*(1 - r)^2*
      (r^2 + s - r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*
      (4 - s)*s^3) + (((4*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-3 + D)*e*
      Gstrong^4*(1 - r)*(2*r^2 - s)*(r^2 + s - r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF^2*(-5 + D)*(-3 + D)*e*Gstrong^4*(1 - r)^2*r*
      (r^2 + s - r*s)*(2*r^2 + 2*s - r*s)*(16*r - 8*D*r - 30*s + 12*D*s - 
       D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^6*(4 - s)*s^5) - 
    (((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)^2*(r^2 + s - r*s)*
      (2*r^2 - 5*s + D*s - r*s)*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 
       28*r*s - 11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^6*r*(4 - s)*s^4) - 
    ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(r^2 + s - r*s)*
      (168 - 88*D + 12*D^2 + 48*r + 4*D*r - 4*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*
      s^2) + (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(r^2 + s - r*s)*
      (10 - 2*D - 28*r + 6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 
       2*D*r*s - 4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(-1 + r)^4*r^2*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(r^2 + s - r*s)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-40*r^5 + 8*D*r^5 - 48*r^3*s + 8*D*r^3*s + 20*r^4*s - 4*D*r^4*s + 
       32*r*s^2 - 6*D*r*s^2 + 4*r^2*s^2 - 6*s^3 + D*s^3)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^5*r^2*(4 - s)*
      s^5))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*s - m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-4*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-3 + D)*e*Gstrong^4*(1 - r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^2*(4 - s)*
      s) - ((I/3)*CA*CF^2*(-6 + D)*(-3 + D)*e*Gstrong^4*(1 - r)*(4*r - s)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*
      s^2) - (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^2*(4 - s)*s) + 
    ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(168 - 88*D + 12*D^2 - 160*r + 
       84*D*r - 12*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 168*r*s - 
       96*D*r*s + 18*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^2*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((2*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-4 + D)*e*Gstrong^4*(1 - r)*
      (4*r - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*
      s) + ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-96*r^2 + 16*D*r^2 + 4*s + 40*r*s - 8*D*r*s + 4*r^2*s - 6*s^2 + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^4*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*(-4 + D)*e*Gstrong^4*(1 - r)^2*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*
      s) + (((2*I)/3)*CA*CF^2*(-5 + D)*(-4 + D)*e*Gstrong^4*(1 - r)^2*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^4*(4 - s)*
      s^2) - ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2*r - s)*
      (10 - 2*D - 28*r + 6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 
       2*D*r*s - 4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m*(-1 + r)^2*r^2*(4 - s)*s) + ((I/3)*CA*CF^2*e*Gstrong^4*
      (288 - 136*D + 16*D^2 - 80*r + 56*D*r - 8*D^2*r + 64*r^2 - 12*D*r^2 + 
       24*s - 28*D*s + 10*D^2*s - D^3*s - 192*r*s + 124*D*r*s - 28*D^2*r*s + 
       2*D^3*r*s + 64*r^2*s - 56*D*r^2*s + 14*D^2*r^2*s - D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(4*r - s)*(20 - 14*D + 2*D^2 - 232*r + 
       96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 60*r*s - 26*D*r*s + 
       3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r^2*(4 - s)*
      s) - ((I/3)*CA*CF^2*e*Gstrong^4*(144 - 68*D + 8*D^2 + 144*r - 68*D*r + 
       8*D^2*r - 80*r^2 + 56*D*r^2 - 8*D^2*r^2 - 168*r*s + 96*D*r*s - 
       18*D^2*r*s + D^3*r*s + 64*r^2*s - 56*D*r^2*s + 14*D^2*r^2*s - 
       D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(36 - 17*D + 2*D^2 - 6*r + 5*D*r - 
       D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*s) + 
    (((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)^3*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^6*(4 - s)*
      s^2) + (((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)^2*(5 - D + r)*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^5*r*(4 - s)*
      s^2) + ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)^2*
      (-20*r + 4*D*r + 6*s - D*s)*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 
       28*r*s - 11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^5*r^2*(4 - s)*s^2) - 
    ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(168 - 88*D + 12*D^2 + 48*r + 
       4*D*r - 4*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 64*r*s - 
       56*D*r*s + 14*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*s) - 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(10 - 2*D - 28*r + 
       6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 2*D*r*s - 4*r^2*s + 
       D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(-1 + r)^4*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(36 - 17*D + 2*D^2 - 6*r + 5*D*r - 
       D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*(r^2 + s - r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*
      s^2) + ((I/3)*CA*CF^2*(-6 + D)*(-3 + D)*e*Gstrong^4*(1 - r)^2*(2*r - s)*
      (r^2 + s - r*s)*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 
       11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^6*r^2*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(r^2 + s - r*s)*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^4*r^2*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(r^2 + s - r*s)*
      (168 - 88*D + 12*D^2 - 160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^4*(4 - s)*
      s^3) - ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2*r^2 - s)*(r^2 + s - r*s)*
      (168 - 88*D + 12*D^2 - 160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r^2*(4 - s)*
      s^3))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(36 - 17*D + 2*D^2 - 6*r + 
       5*D*r - D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*(2*r - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*
      s) - ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)^2*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      (-20*r^2 + 4*D*r^2 + 4*s + 20*r*s - 4*D*r*s - 6*s^2 + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^4*r*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-4*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(36 - 17*D + 2*D^2 - 
       6*r + 5*D*r - D^2*r - 32*r^2 + 13*D*r^2 - D^2*r^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*
      s) - (((2*I)/3)*CA*CF^2*(-5 + D)*(-4 + D)*e*Gstrong^4*(1 - r)^3*
      (16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^4*(4 - s)*
      s^2) + (((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)^3*
      (-14 + 2*D + s)*(16*r - 8*D*r - 30*s + 12*D*s - D^2*s + 28*r*s - 
       11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^4*(4 - s)*s^2) + 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)^2*(168 - 88*D + 12*D^2 + 
       48*r + 4*D*r - 4*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 64*r*s - 
       56*D*r*s + 14*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*r*(4 - s)*s) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(288 - 136*D + 16*D^2 - 80*r + 56*D*r - 
       8*D^2*r + 24*s - 28*D*s + 10*D^2*s - D^3*s - 24*r*s + 28*D*r*s - 
       10*D^2*r*s + D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*r^2*(4 - s)*s) - ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*
      (10 - 2*D - 28*r + 6*D*r + 16*r^2 - 4*D*r^2 - 4*s + D*s + 8*r*s - 
       2*D*r*s - 4*r^2*s + D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m*(-1 + r)^2*r^2*(4 - s)))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((4*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*s) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(40 - 8*D - 32*s + 12*D*s - D^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(4 - s)*s) - 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(2*r - s)*
      (20 - 14*D + 2*D^2 - 232*r + 96*D*r - 10*D^2*r - 8*s + 6*D*s - D^2*s + 
       60*r*s - 26*D*r*s + 3*D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*r^2*(4 - s)*s) - 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(168 - 88*D + 12*D^2 - 
       160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 
       168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)^2*
      (-14*r + 2*D*r + 5*s - D*s + r*s)*(16*r - 8*D*r - 30*s + 12*D*s - 
       D^2*s + 28*r*s - 11*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^4*(4 - s)*s^2) - 
    ((I/3)*CA*CF^2*e*Gstrong^4*(288 - 136*D + 16*D^2 - 80*r + 56*D*r - 
       8*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 
       14*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)*r*(4 - s)*s) + ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*
      (1 - r)*(2*r - s)*(168 - 88*D + 12*D^2 + 48*r + 4*D*r - 4*D^2*r - 
       168*s + 96*D*s - 18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 14*D^2*r*s - 
       D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*e*Gstrong^4*(144 - 68*D + 8*D^2 - 80*r + 56*D*r - 
       8*D^2*r + 24*s - 28*D*s + 10*D^2*s - D^3*s + 64*r*s - 56*D*r*s + 
       14*D^2*r*s - D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*r*(4 - s)*s) + ((I/3)*CA*CF^2*e*Gstrong^4*
      (288 - 136*D + 16*D^2 - 80*r + 56*D*r - 8*D^2*r - 168*s + 96*D*s - 
       18*D^2*s + D^3*s + 64*r*s - 56*D*r*s + 14*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r*(4 - s)*s) - 
    ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*(4*r - s)*(168 - 88*D + 12*D^2 - 
       160*r + 84*D*r - 12*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s + 
       168*r*s - 96*D*r*s + 18*D^2*r*s - D^3*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*(m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((-I/3)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r - s + r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1])/
   ((-4 + D)*m^5*(-1 + r)^2*r^5*(-4 + s)*s^3) + 
  (((-I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^3*r^4*
      (-4 + s)*s^3) - ((I/12)*CF*(-2 + D)*e*Gstrong^4*(5 - D - 4*r + D*r)*
      (16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 
       6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^3*(4 - s)*s^2) + ((I/12)*CF*(-2 + D)*e*Gstrong^4*
      (10 - 2*D - 20*r + 4*D*r + 10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + 
       D*r^2*s)*(16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - 
       D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^3))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((-I/6)*CF*(-2 + D)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-4 + D)*m^5*(-1 + r)^3*r^4*
      (-4 + s)*s^3) + ((I/6)*CF*(-2 + D)*e*Gstrong^4*(-2 + 2*r + s)*
      (16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 
       6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)*r^4*(4 - s)*
      s^4) - ((I/6)*CF*(-2 + D)*e*Gstrong^4*(2 - 4*r + 2*r^2 + r*s)*
      (16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 
       6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^2*r^4*(4 - s)*
      s^4))*IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 
       6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*r^4*(4 - s)*s^4) - 
    ((I/3)*CF*(-3 + D)*e*Gstrong^4*(2 - 4*r + 2*r^2 - s)*
      (1 - 2*r + r^2 + r*s)*(16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 
       22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - 
       D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*
      s^4))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CF*(-3 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 
     22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - 
     D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*s^2) + 
  ((I/6)*CF*(-4 + D)*e*Gstrong^4*(-4 + 4*r + s)*(16 - 8*D - 16*r + 8*D*r - 
     14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 
     2*r*s^2 - D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(-1 + r)*r^3*(4 - s)*s^2) + 
  (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
    (-1 + 4*r - 4*r^2 - r*s + r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((-4 + D)*m^3*(-1 + r)^2*r^4*(-4 + s)*s^3) - 
  ((I/12)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 64*s + 16*D*s - 
     168*r*s + 96*D*r*s - 12*D^2*r*s + 80*r^2*s - 56*D*r^2*s + 8*D^2*r^2*s - 
     16*s^2 + 12*D*s^2 - 2*D^2*s^2 - 32*r*s^2 + 32*D*r*s^2 - 10*D^2*r*s^2 + 
     D^3*r*s^2 - 16*r^2*s^2 + 12*D*r^2*s^2 - 2*D^2*r^2*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s^2) + 
  (((-I/6)*CF*e*Gstrong^4*(1 - r)*(76 - 38*D + 4*D^2 + 12*r - 12*s + 8*D*s - 
       D^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^3*(4 - s)*s) + 
    ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 320*r + 160*D*r + 512*r^2 - 
       256*D*r^2 - 256*r^3 + 128*D*r^3 + 96*s - 48*D*s + 8*D^2*s + 136*r*s - 
       32*D*r*s - 12*D^2*r*s - 728*r^2*s + 300*D*r^2*s - 8*D^2*r^2*s + 
       272*r^3*s - 164*D*r^3*s + 8*D^2*r^3*s + 72*r^4*s - 16*s^2 + 12*D*s^2 - 
       2*D^2*s^2 - 64*r*s^2 + 12*D*r*s^2 + 2*D^2*r*s^2 + 88*r^2*s^2 - 
       4*D*r^2*s^2 - 12*D^2*r^2*s^2 + D^3*r^2*s^2 - 48*r^3*s^2 + 
       36*D*r^3*s^2 - 2*D^2*r^3*s^2 - 24*r^4*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)^2*r^3*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CF*(-3 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 
     22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - 
     D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*s^2) + 
  ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 64*r + 32*D*r - 40*s + 20*D*s - 
     40*r*s + 12*D*r*s - 4*D^2*r*s - 72*r^2*s + 24*D*r^2*s + 8*s^2 - 
     4*D*s^2 - 16*r*s^2 + 8*D*r*s^2 - 56*r^2*s^2 + 52*D*r^2*s^2 - 
     14*D^2*r^2*s^2 + D^3*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s^2) + 
  ((I/3)*CF*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
    (16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 
     6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - D*r*s^2)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*s^3) + 
  (((-I/6)*CF*(-4 + D)*e*Gstrong^4*(-2 + 2*r + s)*(16 - 8*D - 16*r + 8*D*r - 
       14*s + 7*D*s - 22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 
       2*r*s^2 - D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)*r^2*(4 - s)*s^2) - 
    ((I/6)*CF*e*Gstrong^4*(32 - 16*D - 32*r + 16*D*r - 24*s + 12*D*s + 
       100*r*s - 50*D*r*s + 4*D^2*r*s + 12*r^2*s + 4*s^2 - 2*D*s^2 - 
       16*r*s^2 + 10*D*r*s^2 - D^2*r*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*r^2*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/3)*CF*(-4 + D)*e*Gstrong^4*(16 - 8*D - 16*r + 8*D*r - 14*s + 7*D*s - 
       22*r*s + 9*D*r*s - D^2*r*s - 6*r^2*s + 2*s^2 - D*s^2 + 2*r*s^2 - 
       D*r*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s^2) - 
    ((I/12)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 + 8*s - 4*D*s - 
       288*r*s + 136*D*r*s - 12*D^2*r*s + 104*r^2*s - 76*D*r^2*s + 
       8*D^2*r^2*s + 24*r^3*s + 120*r*s^2 - 56*D*r*s^2 + 6*D^2*r*s^2 + 
       72*r^2*s^2 - 44*D*r^2*s^2 + 12*D^2*r^2*s^2 - D^3*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^2*(4 - s)*
      s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/6)*CF*e*Gstrong^4*(76 - 38*D + 4*D^2 + 12*r - 12*s + 8*D*s - D^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^3*(4 - s)*s) - 
    ((I/12)*CF*e*Gstrong^4*(64 - 32*D - 192*r + 96*D*r + 128*r^2 - 64*D*r^2 + 
       96*s - 48*D*s + 8*D^2*s + 328*r*s - 128*D*r*s + 4*D^2*r*s - 
       224*r^2*s + 120*D*r^2*s - 8*D^2*r^2*s - 48*r^3*s - 16*s^2 + 12*D*s^2 - 
       2*D^2*s^2 - 96*r*s^2 + 36*D*r*s^2 - 2*D^2*r*s^2 - 80*r^2*s^2 + 
       52*D*r^2*s^2 - 14*D^2*r^2*s^2 + D^3*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^3*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/12)*CF*e*Gstrong^4*(64*r - 32*D*r - 64*r^2 + 32*D*r^2 - 144*s + 
     72*D*s - 8*D^2*s + 72*r*s - 72*D*r*s + 12*D^2*r*s - 80*r^2*s + 
     56*D*r^2*s - 8*D^2*r^2*s + 24*s^2 - 16*D*s^2 + 2*D^2*s^2 - 112*r*s^2 + 
     88*D*r*s^2 - 18*D^2*r*s^2 + D^3*r*s^2 + 24*r^2*s^2 - 16*D*r^2*s^2 + 
     2*D^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
     Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)^2*r*(4 - s)*s^2) - 
  (((2*I)/3)*CF*(-3 + D)*e*Gstrong^4*(1 - r)*(2 - s)*
    (-1 + 4*r - 4*r^2 - r*s + r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
     LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]]*
    IntF[1/((m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*Pair[Momentum[k1, D], Momentum[p4, D]])*
       (-Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((-4 + D)*m^3*(-1 + r)^2*r^4*(-4 + s)*s^3), 
 (((I/3)*CA*CF^2*(-7 + D)*(-4 + D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-5 + D)*m^5*r^5*s^2) + 
    ((I/6)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*r^4*(4 - s)*
      s) - ((I/6)*CA*CF^2*(16 - 3*D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(1 - r)*r^4*(4 - s)*
      s) + ((I/6)*CA*CF^2*(16 - 3*D)*(-2 + D)*e*Gstrong^4*(-4 + D - r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*r^4*
      (4 - s)*s) + ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*
      (2 - D - 68*r + 30*D*r - 3*D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*r^5*(4 - s)*s) + 
    ((I/6)*CA*CF^2*(-7 + D)*(-4 + D)*(-2 + D)*e*Gstrong^4*
      (2 - D - 32*r + 13*D*r - D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*r^5*(4 - s)*s) + 
    ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*r^4*(4 - s)*
      s) - ((I/6)*CA*CF^2*(-4 + D)*(-2 + D)*e*Gstrong^4*(-1 + r)*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*r^5*
      (4 - s)*s))*IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/6)*CA*CF^2*(9 - 2*D)*(4 - D)*(-2 + D)*e*Gstrong^4*(1 - r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r*
      (4 - s)*s) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(5 - D - 4*r + D*r)*
      (2 - D - 68*r + 30*D*r - 3*D^2*r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r^2*(4 - s)*s) + 
    ((I/3)*CA*CF^2*(-2 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)*r^2*(4 - s)*
      (4 - 8*r + 4*r^2 - s)*s) + ((I/3)*CA*CF^2*(-2 + D)*(26 - 10*D + D^2)*e*
      Gstrong^4*(1 - r)*(2 - s)*(-4 + 4*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(-1 + r)*r^3*(4 - s)*(4 - 8*r + 4*r^2 - s)*s^2) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(5 - D - 4*r + D*r)*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^3*(4 - s)*s) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      (10 - 2*D - 20*r + 4*D*r + 10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + 
       D*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^4*(4 - s)*s^2) + ((I/24)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (10 - 2*D - 20*r + 4*D*r + 10*r^2 - 2*D*r^2 + 5*r*s - D*r*s - 4*r^2*s + 
       D*r^2*s)*(16 - 8*D - 48*r + 24*D*r + 16*r^2 - 8*D*r^2 - 104*r*s + 
       40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + 
       D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^2) - ((I/24)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (5 - D - 4*r + D*r)*(8 - 4*D + 224*r - 96*D*r + 12*D^2*r + 16*r^2 - 
       8*D*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*(-5 + D)*m^5*(-1 + r)^4*r^3*(4 - s)*s) + 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)^2*(840 - 428*D + 72*D^2 - 
       4*D^3 - 2352*r + 1232*D*r - 212*D^2*r + 12*D^3*r + 2184*r^2 - 
       1180*D*r^2 + 208*D^2*r^2 - 12*D^3*r^2 - 672*r^3 + 376*D*r^3 - 
       68*D^2*r^3 + 4*D^3*r^3 - 210*s + 107*D*s - 18*D^2*s + D^3*s + 
       378*r*s - 201*D*r*s + 35*D^2*r*s - 2*D^3*r*s - 140*r^2*s + 
       83*D*r^2*s - 16*D^2*r^2*s + D^3*r^2*s - 20*r^3*s + 9*D*r^3*s - 
       D^2*r^3*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-7 + D)*(-5 + D)*m^5*(-1 + r)^6*
      r^3*s^2) + ((I/24)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (2 - D - 32*r + 13*D*r - D^2*r)*(840 - 428*D + 72*D^2 - 4*D^3 - 
       2352*r + 1232*D*r - 212*D^2*r + 12*D^3*r + 2184*r^2 - 1180*D*r^2 + 
       208*D^2*r^2 - 12*D^3*r^2 - 672*r^3 + 376*D*r^3 - 68*D^2*r^3 + 
       4*D^3*r^3 - 210*s + 107*D*s - 18*D^2*s + D^3*s + 378*r*s - 201*D*r*s + 
       35*D^2*r*s - 2*D^3*r*s - 140*r^2*s + 83*D*r^2*s - 16*D^2*r^2*s + 
       D^3*r^2*s - 20*r^3*s + 9*D*r^3*s - D^2*r^3*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-7 + D)*(-5 + D)*m^5*
      (-1 + r)^6*r^3*(4 - s)*s) - ((I/24)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (1 - r)*(16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 11*D*r*s - 
       D^2*r*s)*(840 - 428*D + 72*D^2 - 4*D^3 - 3360*r + 1712*D*r - 
       288*D^2*r + 16*D^3*r + 5040*r^2 - 2568*D*r^2 + 432*D^2*r^2 - 
       24*D^3*r^2 - 3360*r^3 + 1712*D*r^3 - 288*D^2*r^3 + 16*D^3*r^3 + 
       840*r^4 - 428*D*r^4 + 72*D^2*r^4 - 4*D^3*r^4 - 420*s + 214*D*s - 
       36*D^2*s + 2*D^3*s + 1680*r*s - 856*D*r*s + 144*D^2*r*s - 8*D^3*r*s - 
       2380*r^2*s + 1236*D*r^2*s - 212*D^2*r^2*s + 12*D^3*r^2*s + 
       1400*r^3*s - 760*D*r^3*s + 136*D^2*r^3*s - 8*D^3*r^3*s - 280*r^4*s + 
       166*D*r^4*s - 32*D^2*r^4*s + 2*D^3*r^4*s - 210*r*s^2 + 107*D*r*s^2 - 
       18*D^2*r*s^2 + D^3*r*s^2 + 378*r^2*s^2 - 201*D*r^2*s^2 + 
       35*D^2*r^2*s^2 - 2*D^3*r^2*s^2 - 140*r^3*s^2 + 83*D*r^3*s^2 - 
       16*D^2*r^3*s^2 + D^3*r^3*s^2 - 20*r^4*s^2 + 9*D*r^4*s^2 - D^2*r^4*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-7 + D)*(-5 + D)*m^5*
      (-1 + r)^6*r^4*(4 - s)*s^3))*
   IntF[(Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]])^(-1), k1] + 
  (((I/6)*CA*CF^2*(16 - 3*D)*(-2 + D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r*(4 - s)*s) - ((I/6)*CA*CF^2*(-2 + D)*(26 - 10*D + D^2)*e*
      Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r + 2*r^2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^4*r^2*(4 - s)*
      (4 - 8*r + 4*r^2 - s)*s) + ((I/3)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (2 - D - 68*r + 30*D*r - 3*D^2*r)*(-2 + 2*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)*r^3*(4 - s)*
      s^3) - ((I/6)*CA*CF^2*(-2 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(2 - s)*
      (10 - 2*D - 36*r + 8*D*r + 42*r^2 - 10*D*r^2 - 16*r^3 + 4*D*r^3 + 
       4*r*s - D*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*
      (-1 + r)^3*r^2*(4 - s)*(4 - 8*r + 4*r^2 - s)*s) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(5 - D - 4*r + D*r)*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(1 - r)*
      (-1 + r)^2*r^3*(4 - s)*s) + ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*
      (-2 + 2*r + s)*(8 - 4*D + 224*r - 96*D*r + 12*D^2*r + 16*r^2 - 
       8*D*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(-1 + r)*r^4*(4 - s)*s^3) - 
    ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(2 - 4*r + 2*r^2 + r*s)*
      (8 - 4*D + 232*r - 100*D*r + 12*D^2*r - 256*r^2 + 112*D*r^2 - 
       12*D^2*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(-1 + r)^2*r^4*(4 - s)*s^3) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(16 - 8*D - 16*r + 8*D*r - 
       2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*(-20 + 4*D + 80*r - 16*D*r - 
       120*r^2 + 24*D*r^2 + 80*r^3 - 16*D*r^3 - 20*r^4 + 4*D*r^4 - 10*s + 
       2*D*s + 30*r^2*s - 6*D*r^2*s - 20*r^3*s + 4*D*r^3*s - 5*r*s^2 + 
       D*r*s^2 - r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^5*(-1 + r)^2*r^4*(4 - s)*s^5) + 
    ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*(16 - 8*D - 16*r + 8*D*r - 
       2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*(20 - 4*D - 80*r + 16*D*r + 
       120*r^2 - 24*D*r^2 - 80*r^3 + 16*D*r^3 + 20*r^4 - 4*D*r^4 - 60*s + 
       22*D*s - 2*D^2*s + 140*r*s - 48*D*r*s + 4*D^2*r*s - 100*r^2*s + 
       30*D*r^2*s - 2*D^2*r^2*s + 20*r^3*s - 4*D*r^3*s - 30*r*s^2 + 
       11*D*r*s^2 - D^2*r*s^2 + 29*r^2*s^2 - 11*D*r^2*s^2 + D^2*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*(-5 + D)*m^5*(-1 + r)^4*
      r^4*(4 - s)*s^4) - ((I/6)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)^2*
      (-40 + 8*D + 160*r - 32*D*r - 240*r^2 + 48*D*r^2 + 160*r^3 - 32*D*r^3 - 
       40*r^4 + 8*D*r^4 - 28*s + 4*D*s + 16*r*s + 52*r^2*s - 12*D*r^2*s - 
       40*r^3*s + 8*D*r^3*s + 36*s^2 - 6*D*s^2 - 18*r*s^2 + 2*D*r*s^2 - 
       2*r^2*s^2 - 6*s^3 + D*s^3)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(-1 + r)^2*r^4*s^5) - ((I/12)*CA*CF^2*(-2 + D)*e*Gstrong^4*(1 - r)*
      (2 - D - 32*r + 13*D*r - D^2*r)*(-40 + 8*D + 160*r - 32*D*r - 240*r^2 + 
       48*D*r^2 + 160*r^3 - 32*D*r^3 - 40*r^4 + 8*D*r^4 - 28*s + 4*D*s + 
       16*r*s + 52*r^2*s - 12*D*r^2*s - 40*r^3*s + 8*D*r^3*s + 36*s^2 - 
       6*D*s^2 - 18*r*s^2 + 2*D*r*s^2 - 2*r^2*s^2 - 6*s^3 + D*s^3)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^5*(-1 + r)^2*r^4*(4 - s)*
      s^4))*IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2 - D - 68*r + 30*D*r - 3*D^2*r)*
      (2 - 4*r + 2*r^2 - s)*(1 - 2*r + r^2 + r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s^3) - (((2*I)/3)*CA*CF^2*(-5 + D)*(-3 + D)*e*Gstrong^4*(1 - r)*
      (1 - 2*r + r^2 + r*s)*(2 - 4*r + 2*r^2 + s + r*s)*
      (16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*r^4*(4 - s)*s^5) + 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(1 - 2*r + r^2 + r*s)*
      (2 - 4*r + 2*r^2 - 6*s + D*s + r*s)*(16 - 8*D - 16*r + 8*D*r - 2*s + 
       D*s - 28*r*s + 11*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*s^4) - 
    ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2 - 4*r + 2*r^2 - s)*
      (1 - 2*r + r^2 + r*s)*(8 - 4*D + 224*r - 96*D*r + 12*D^2*r + 16*r^2 - 
       8*D*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*s^3) + 
    ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (8 - 4*D + 232*r - 100*D*r + 12*D^2*r - 256*r^2 + 112*D*r^2 - 
       12*D^2*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*r^4*(4 - s)*s^3) + ((I/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*
      (1 - r)^2*(1 - 2*r + r^2 + r*s)*(40 - 8*D - 200*r + 40*D*r + 400*r^2 - 
       80*D*r^2 - 400*r^3 + 80*D*r^3 + 200*r^4 - 40*D*r^4 - 40*r^5 + 
       8*D*r^5 + 28*s - 4*D*s - 64*r*s + 8*D*r*s + 24*r^2*s + 32*r^3*s - 
       8*D*r^3*s - 20*r^4*s + 4*D*r^4*s - 36*s^2 + 6*D*s^2 + 40*r*s^2 - 
       6*D*r*s^2 - 4*r^2*s^2 + 6*s^3 - D*s^3)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(-1 + r)^3*r^4*s^5) + ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*
      (2 - D - 32*r + 13*D*r - D^2*r)*(1 - 2*r + r^2 + r*s)*
      (40 - 8*D - 200*r + 40*D*r + 400*r^2 - 80*D*r^2 - 400*r^3 + 80*D*r^3 + 
       200*r^4 - 40*D*r^4 - 40*r^5 + 8*D*r^5 + 28*s - 4*D*s - 64*r*s + 
       8*D*r*s + 24*r^2*s + 32*r^3*s - 8*D*r^3*s - 20*r^4*s + 4*D*r^4*s - 
       36*s^2 + 6*D*s^2 + 40*r*s^2 - 6*D*r*s^2 - 4*r^2*s^2 + 6*s^3 - D*s^3)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r^4*(4 - s)*
      s^4))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2 - D - 68*r + 30*D*r - 3*D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^2*(4 - s)*
      s) - (((4*I)/3)*CA*CF^2*(-3 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(-1 + r)*
      (2 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*r^2*(4 - s)*
      (4 - 8*r + 4*r^2 - s)*s) + (((2*I)/3)*CA*CF^2*(-3 + D)*
      (26 - 10*D + D^2)*e*Gstrong^4*(1 - r)*(2 - s)*(2 - 4*r + 2*r^2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^2*(4 - s)*
      (4 - 8*r + 4*r^2 - s)*s) + ((I/3)*CA*CF^2*(-6 + D)*(-3 + D)*e*Gstrong^4*
      (1 - r)^2*(-4 + 4*r + s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(-1 + r)^3*r^3*s^2) + ((I/6)*CA*CF^2*(-6 + D)*(-3 + D)*e*Gstrong^4*
      (1 - r)*(2 - D - 32*r + 13*D*r - D^2*r)*(-4 + 4*r + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^3*r^3*(4 - s)*
      s) + (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2 - D - 100*r + 36*D*r - 
       3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(1 - r)*r^3*(4 - s)*s) - 
    ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(8 - 4*D + 224*r - 96*D*r + 
       12*D^2*r + 16*r^2 - 8*D*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 
       48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((2*I)/3)*CA*CF^2*(9 - 2*D)*(4 - D)*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*(4 - s)*s) + 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2 - D - 68*r + 30*D*r - 3*D^2*r)*
      (-4 + 4*r + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^2*(4 - s)*
      s) + ((I/12)*CA*CF^2*(-4 + D)*e*Gstrong^4*(-4 + 4*r + s)*
      (8 - 4*D + 224*r - 96*D*r + 12*D^2*r + 16*r^2 - 8*D*r^2 - 104*r*s + 
       40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + 
       D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^3*(4 - s)*
      s) - ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)^2*
      (-96 + 16*D + 192*r - 32*D*r - 96*r^2 + 16*D*r^2 + 48*s - 8*D*s - 
       48*r*s + 8*D*r*s + 4*r^2*s - 6*s^2 + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*(-1 + r)^2*r^3*s^2) - 
    ((I/12)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(2 - D - 32*r + 13*D*r - 
       D^2*r)*(-96 + 16*D + 192*r - 32*D*r - 96*r^2 + 16*D*r^2 + 48*s - 
       8*D*s - 48*r*s + 8*D*r*s + 4*r^2*s - 6*s^2 + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)^2*r^3*(4 - s)*
      s))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*(26 - 10*D + D^2)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s) - 
    (((2*I)/3)*CA*CF^2*(-4 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s) + 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(-4 + 4*r + s)*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r^3*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-4*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*s^2) - 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(2 - D - 32*r + 13*D*r - D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*r^3*(4 - s)*s) - 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*(-6 + D + r)*
      (16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*
      s^2) + ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - r)*
      (20 - 4*D - 20*r + 4*D*r - 6*s + D*s)*(16 - 8*D - 16*r + 8*D*r - 2*s + 
       D*s - 28*r*s + 11*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^3*r^3*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(16 - 8*D - 48*r + 24*D*r + 16*r^2 - 
       8*D*r^2 - 104*r*s + 40*D*r*s - 4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 
       12*D^2*r^2*s + D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2 - D - 68*r + 30*D*r - 3*D^2*r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r*(4 - s)*s) - 
    (((2*I)/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(-14 + 2*D + s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m*r*s^2) - 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(2 - D - 32*r + 13*D*r - D^2*r)*
      (-14 + 2*D + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  ((((-2*I)/3)*CA*CF^2*(-3 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(1 - r)*(2 - s)*
      (1 - 2*r + r^2 + r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^2*r^3*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*(-6 + D)*(-3 + D)*e*Gstrong^4*(1 - r)*(-2 + 2*r + s)*
      (1 - 2*r + r^2 + r*s)*(16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 
       11*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m^3*(-1 + r)^3*r^4*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(1 - r)*r^4*(4 - s)*
      s^2) + ((I/6)*CA*CF^2*(-3 + D)*e*Gstrong^4*(1 - 2*r + r^2 + r*s)*
      (16 - 8*D - 48*r + 24*D*r + 16*r^2 - 8*D*r^2 - 104*r*s + 40*D*r*s - 
       4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m^3*(-1 + r)^2*r^4*(4 - s)*
      s^2))*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((I/6)*CA*CF^2*e*Gstrong^4*(64 - 12*D - 128*r + 24*D*r - 80*r^2 + 
       56*D*r^2 - 8*D^2*r^2 - 104*s + 40*D*s - 4*D^2*s + 40*r*s + 16*D*r*s - 
       10*D^2*r*s + D^3*r*s + 64*r^2*s - 56*D*r^2*s + 14*D^2*r^2*s - 
       D^3*r^2*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r*(4 - s)*s) - 
    ((I/12)*CA*CF^2*(-4 + D)*e*Gstrong^4*(-2 + 2*r + s)*
      (16 - 8*D - 48*r + 24*D*r + 16*r^2 - 8*D*r^2 - 104*r*s + 40*D*r*s - 
       4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^2*(4 - s)*
      s) + ((I/12)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*
      (16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*
      (-20 + 4*D + 40*r - 8*D*r - 20*r^2 + 4*D*r^2 + 24*s - 4*D*s - 20*r*s + 
       4*D*r*s - 6*s^2 + D*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)^2*r^2*(4 - s)*s^2))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] - 
  ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(-2 + 2*r + s)*
    (2 - D - 100*r + 36*D*r - 3*D^2*r + 26*r*s - 10*D*r*s + D^2*r*s)*
    Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], Momentum[p3, D], 
     Momentum[p4, D]]*IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (Pair[Momentum[k1, D], Momentum[k1, D]] + 
        2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
       (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
        2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1])/
   ((2 - D)*m*(1 - r)*r^2*(4 - s)*s) + 
  (((-I/3)*CA*CF^2*(-5 + D)*(-4 + D)*e*Gstrong^4*(1 - r)*
      (16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 11*D*r*s - D^2*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s^2) - 
    ((I/3)*CA*CF^2*(-4 + D)*e*Gstrong^4*(1 - r)*(14 - 2*D - 14*r + 2*D*r - 
       6*s + D*s + r*s)*(16 - 8*D - 16*r + 8*D*r - 2*s + D*s - 28*r*s + 
       11*D*r*s - D^2*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(-1 + r)*r^2*(4 - s)*s^2) - 
    ((I/6)*CA*CF^2*e*Gstrong^4*(64 - 12*D - 128*r + 24*D*r - 80*r^2 + 
       56*D*r^2 - 8*D^2*r^2 + 128*r*s - 68*D*r*s + 14*D^2*r*s - D^3*r*s + 
       64*r^2*s - 56*D*r^2*s + 14*D^2*r^2*s - D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(1 - r)*r*(4 - s)*s) + 
    ((I/6)*CA*CF^2*(-4 + D)*e*Gstrong^4*(8 - 4*D + 232*r - 100*D*r + 
       12*D^2*r - 256*r^2 + 112*D*r^2 - 12*D^2*r^2 - 104*r*s + 40*D*r*s - 
       4*D^2*r*s - 48*r^2*s + 44*D*r^2*s - 12*D^2*r^2*s + D^3*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1] + 
  (((-I/3)*CA*CF^2*(-4 + D)*(26 - 10*D + D^2)*e*Gstrong^4*(1 - r)*(2 - s)*
      (-2 + 2*r + s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*(-1 + r)*r^2*(4 - s)*
      s) + ((I/6)*CA*CF^2*e*Gstrong^4*(208 - 80*D + 8*D^2 + 80*r - 56*D*r + 
       8*D^2*r - 104*s + 40*D*s - 4*D^2*s - 64*r*s + 56*D*r*s - 14*D^2*r*s + 
       D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((2 - D)*m*r^2*(4 - s)*s) - 
    ((I/6)*CA*CF^2*e*Gstrong^4*(288 - 136*D + 16*D^2 - 144*r + 68*D*r - 
       8*D^2*r - 168*s + 96*D*s - 18*D^2*s + D^3*s - 24*r*s + 28*D*r*s - 
       10*D^2*r*s + D^3*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((2 - D)*m*(1 - r)*r*(4 - s)*s))*
   IntF[1/((Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]])*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])*
      (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^4*(4 - s)*s^2) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
     (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) - 
    (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(-(m^2*r^2) + m^2*s - 2*m^2*r*s + m^2*r^2*s + 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^4*(4 - s)*s^2) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(16*r^2 - 4*s + 8*r*s - 8*r^2*s + D*s^2 - 
       2*D*r*s^2 + D*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^3*(1 - r)^5*(4 - s)*s^3))*
   IntF[1/((m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-(m^2*r^2) + m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) - 
    (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(MT^2 - m^2*s + 2*m^2*r*s - m^2*r^2*s - 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^4*(4 - s)*s^2) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(16*MT^2 - 4*m^2*s - 4*MT^2*s + 8*m^2*r*s - 
       4*m^2*r^2*s + D*m^2*s^2 - 2*D*m^2*r*s^2 + D*m^2*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[1/((MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (MT^2 - m^2*s + 2*m^2*r*s - m^2*r^2*s - Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^4*(4 - s)*s^2) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
     (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^4*(4 - s)*s^2) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
     (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) - 
    (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^
     (-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(-m^2 + 2*m^2*r - m^2*r^2 + m^2*s - 2*m^2*r*s + m^2*r^2*s + 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*(1 - r)^4*(4 - s)*s^2) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      (1 - s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(16 - 8*s + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
      s^3))*IntF[1/((m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], 
        Momentum[k1, D]])*(-m^2 + 2*m^2*r - m^2*r^2 + m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/6)*CA^2*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^4*(4 - s)*s) + ((I/6)*CA^2*CF*e*Gstrong^4*(-1 + r)^2*
     (-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-5*I)/3)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^3*s^2) - ((I/12)*CA^2*CF*e*Gstrong^4*(-1 + r)*
     (8 + s - 2*D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   ((I/6)*CA^2*CF*(3 - 2*D)*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2) - ((I/12)*CA^2*CF*e*Gstrong^4*(-1 + r)*(8 - 11*s + 6*D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
      m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(2*r - s)*(4 + 6*s - D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*(4 - s)*s^3*
      (r^2 + s - r*s)) + ((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2*r - s + r*s)*
      (4 + 4*r - 8*s + D*s + 6*r*s - D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(4 - s)*s^3*(r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-1 + r)*(2*r - s)*(4 + 6*s - D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*(4 - s)*s^2*
      (r^2 + s - r*s)) + ((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*(4 + 4*r - 8*s + D*s + 6*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*
      (4*r^2 + 2*s - D*s - 8*r*s + 2*D*r*s + 6*r^2*s - D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*s^3))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(-(m^2*r^2) + m^2*s - 2*m^2*r*s + m^2*r^2*s + 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(16*r^2 - 4*s + 8*r*s - 8*r^2*s + D*s^2 - 
       2*D*r*s^2 + D*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^3*(1 - r)^5*(4 - s)*s^3))*
   IntF[1/((m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-(m^2*r^2) + m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(MT^2 - m^2*s + 2*m^2*r*s - m^2*r^2*s - 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(16*MT^2 - 4*m^2*s - 4*MT^2*s + 8*m^2*r*s - 
       4*m^2*r^2*s + D*m^2*s^2 - 2*D*m^2*r*s^2 + D*m^2*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[1/((MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (MT^2 - m^2*s + 2*m^2*r*s - m^2*r^2*s - Pair[Momentum[k1, D], 
        Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) + 
   (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(-1 + r)*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*(1 - r)^5*(4 - s)*s^3))*
   IntF[(m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^
     (-1), k1] + 
  ((((-4*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^5*s^3) - (((4*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^4*(-1 + r)*(4 - s)*
      s^3) + (((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^6*(4 - s)*s^2) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*(1 - r)^5*(4 - s)*
      s^3))*IntF[(-m^2 + 2*m^2*r - m^2*r^2 + m^2*s - 2*m^2*r*s + m^2*r^2*s + 
      Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((4*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(-1 + r)^2*(16 - 8*s + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
      s^3))*IntF[1/((m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], 
        Momentum[k1, D]])*(-m^2 + 2*m^2*r - m^2*r^2 + m^2*s - 2*m^2*r*s + 
       m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/6)*CA^2*CF*e*Gstrong^4*(-1 + r)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^4*(4 - s)*s) + ((I/6)*CA^2*CF*e*Gstrong^4*(-1 + r)^2*
     (-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2))*IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*s - 2*m^2*r*s + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] + 2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-5*I)/3)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*(1 - r)^3*s^2) + ((I/6)*CA^2*CF*(3 - 2*D)*e*Gstrong^4*(-1 + r)^2*
     (-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*(1 - r)^5*(4 - s)*
     s^2) - ((I/6)*CA^2*CF*e*Gstrong^4*(-1 + r)*(8 - 5*s + 2*D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - 2*m^2*r*s + 
      m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*Pair[Momentum[k1, D], Momentum[p4, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(2*r - s)*(4 - 4*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*(1 - r)^3*(4 - s)*s^3*
      (r^2 + s - r*s)) + ((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2*r - s + r*s)*
      (4 + 4*r + 2*s - D*s - 4*r*s + D*r*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*(1 - r)^4*(4 - s)*s^3*(r^2 + s - r*s)))*
   IntF[(-(m^2*s) + m^2*r*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-1 + r)*(2*r - s)*(4 - 4*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^3*(4 - s)*s^2*
      (r^2 + s - r*s)) + ((I/6)*CA*CF^2*(2 - D)*e*Gstrong^4*(-1 + r)*
      (-2*r - s + r*s)*(4 + 4*r + 2*s - D*s - 4*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*(4 - s)*s^2*
      (r^2 + s - r*s)) - (((2*I)/3)*CA*CF^2*e*Gstrong^4*
      (4*r^2 + 2*s - D*s + 2*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*(1 - r)^4*s^3))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*(m^2*s - m^2*r*s + 
       Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p3, D]] + 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(-(m^2*r^2) + m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) + ((I/3)*CA*CF*e*Gstrong^4*(16 - 8*s + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^3))*
   IntF[1/((m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-(m^2*r^2) + m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) + (((2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^2) + ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(MT^2 - m^2*r^2*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*
      (16*MT^2 - 4*MT^2*s - 4*m^2*r^2*s + D*m^2*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[1/((MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (MT^2 - m^2*r^2*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^
     (-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^2) - ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(-m^2 + 2*m^2*r - m^2*r^2 + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*(2 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) + ((I/3)*CA*CF*e*Gstrong^4*
      (16 - 32*r + 16*r^2 - 4*s + 8*r*s - 8*r^2*s + D*r^2*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^5*(4 - s)*s^3))*
   IntF[1/((m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-m^2 + 2*m^2*r - m^2*r^2 + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] - 2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/12)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s) - ((I/12)*CA^2*CF*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((5*I)/6)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*s^2) - ((I/12)*CA^2*CF*(3 - 2*D)*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2) - 
   ((I/12)*CA^2*CF*e*Gstrong^4*(8 - 5*s + 2*D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*(4 - 4*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^3*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*(8 - 4*r - 2*s + 4*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^4*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*(4 - 4*s + D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^2*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*(8 - 4*r - 2*s + 4*r*s - D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/3)*CA*CF^2*e*Gstrong^4*
      (4 - 8*r + 4*r^2 + 6*r*s - 2*D*r*s - 4*r^2*s + D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^4*s^3))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
   ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    ((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) + (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) - 
    ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(-(m^2*r^2) + m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) + (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) + 
    ((I/3)*CA*CF*e*Gstrong^4*(16 - 8*s + D*s^2)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^3))*
   IntF[1/((m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-(m^2*r^2) + m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) + (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) + 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) + 
    ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(MT^2 - m^2*r^2*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
    ((I/3)*CA*CF*e*Gstrong^4*(16*MT^2 - 4*MT^2*s - 4*m^2*r^2*s + 
       D*m^2*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, 
        D], Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^5*r^5*(4 - s)*
      s^3))*IntF[1/((MT^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (MT^2 - m^2*r^2*s - Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
   ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    ((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s^2) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
   ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    ((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((-2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    ((I/3)*CA*CF*e*Gstrong^4*(-4 + D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])^
     (-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*s^3) - (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^3) - 
    (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^5*r^5*(4 - s)*s^3) + (((2*I)/3)*CA*CF*e*Gstrong^4*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^5*(4 - s)*s^2) - 
    ((I/3)*CA*CF*e*Gstrong^4*(4 - 4*s + 3*D*s)*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     ((-1 + D)*m^5*r^5*(4 - s)*s^3))*
   IntF[(-m^2 + 2*m^2*r - m^2*r^2 + m^2*r^2*s + Pair[Momentum[k1, D], 
       Momentum[k1, D]] - 2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  ((((2*I)/3)*CA*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
       LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
     (m^3*r^3*(4 - s)*s^2) + (((2*I)/3)*CA*CF*e*Gstrong^4*(1 - s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) + 
    ((I/3)*CA*CF*e*Gstrong^4*(16 - 32*r + 16*r^2 - 4*s + 8*r*s - 8*r^2*s + 
       D*r^2*s^2)*Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^5*(4 - s)*s^3))*
   IntF[1/((m^2 - 2*m^2*r + m^2*r^2 - Pair[Momentum[k1, D], Momentum[k1, D]])*
      (-m^2 + 2*m^2*r - m^2*r^2 + m^2*r^2*s + Pair[Momentum[k1, D], 
        Momentum[k1, D]] - 2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((I/12)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*(4 - s)*s) - ((I/12)*CA^2*CF*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 ((((5*I)/6)*CA^2*CF*e*Gstrong^4*Eps[LorentzIndex[\[Gamma], D], 
      LorentzIndex[\[Psi]1, D], Momentum[p3, D], Momentum[p4, D]])/
    (m^3*r^3*s^2) - ((I/24)*CA^2*CF*e*Gstrong^4*(8 + s - 2*D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2) - 
   ((I/12)*CA^2*CF*(3 - 2*D)*e*Gstrong^4*(-4 + D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/((-1 + D)*m^3*r^3*(4 - s)*s^2) - 
   ((I/24)*CA^2*CF*e*Gstrong^4*(8 - 11*s + 6*D*s)*
     Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
      Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2))*
  IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
     (m^2*r^2*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p4, D]])), k1], 
 (((-I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*(4 + 6*s - D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^3*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*(8 - 4*r - 2*s - 6*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^5*r^4*(4 - s)*s^3*
      (1 - 2*r + r^2 + r*s)))*
   IntF[(m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
      2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
      2*Pair[Momentum[k1, D], Momentum[p4, D]])^(-1), k1] + 
  (((-I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*(-2 + 2*r + s)*(4 + 6*s - D*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^2*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) - ((I/12)*CA*CF^2*(2 - D)*e*Gstrong^4*
      (2 - 2*r + r*s)*(8 - 4*r - 2*s - 6*r*s + D*r*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^3*(4 - s)*s^2*
      (1 - 2*r + r^2 + r*s)) + ((I/3)*CA*CF^2*e*Gstrong^4*
      (4 - 8*r + 4*r^2 - 4*r*s + 6*r^2*s - D*r^2*s)*
      Eps[LorentzIndex[\[Gamma], D], LorentzIndex[\[Psi]1, D], 
       Momentum[p3, D], Momentum[p4, D]])/(m^3*r^4*s^3))*
   IntF[1/(Pair[Momentum[k1, D], Momentum[k1, D]]*
      (m^2*r*s + Pair[Momentum[k1, D], Momentum[k1, D]] - 
       2*r*Pair[Momentum[k1, D], Momentum[p3, D]] - 
       2*Pair[Momentum[k1, D], Momentum[p4, D]])), k1]}
