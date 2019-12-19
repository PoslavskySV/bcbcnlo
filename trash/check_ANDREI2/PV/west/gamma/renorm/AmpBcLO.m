(* Created with the Wolfram Language : www.wolfram.com *)
{MetricTensor[li2, li3]*PropagatorDenominator[p3 + p4 - qc, MC]*
  PropagatorDenominator[p3 + qb - qc, 0]*
  $LineA1[(-I/2)*Gstrong*DiracMatrix[li3] . (1 - DiracMatrix[5])*
     SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li3] . 
      (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]]*
  $LineA2[((-I/3)*e*DiracMatrix[li1] . (1 - DiracMatrix[5]) - 
     (I/3)*e*DiracMatrix[li1] . (1 + DiracMatrix[5])) . 
    (MC + DiracSlash[-p3 - p4 + qc]) . 
    ((-I/2)*Gstrong*DiracMatrix[li2] . (1 - DiracMatrix[5])*
      SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li2] . 
       (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]])], 
 MetricTensor[li2, li3]*PropagatorDenominator[-p3 - qb, MC]*
  PropagatorDenominator[p3 + qb - qc, 0]*
  $LineA1[(-I/2)*Gstrong*DiracMatrix[li3] . (1 - DiracMatrix[5])*
     SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li3] . 
      (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]]*
  $LineA2[((-I/2)*Gstrong*DiracMatrix[li2] . (1 - DiracMatrix[5])*
      SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li2] . 
       (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]) . 
    (MC + DiracSlash[p3 + qb]) . 
    ((-I/3)*e*DiracMatrix[li1] . (1 - DiracMatrix[5]) - 
     (I/3)*e*DiracMatrix[li1] . (1 + DiracMatrix[5]))], 
 MetricTensor[li2, li3]*PropagatorDenominator[p3 + p4 - qb, MB]*
  PropagatorDenominator[-p4 + qb - qc, 0]*
  $LineA1[((I/6)*e*DiracMatrix[li1] . (1 - DiracMatrix[5]) + 
     (I/6)*e*DiracMatrix[li1] . (1 + DiracMatrix[5])) . 
    (MB + DiracSlash[-p3 - p4 + qb]) . 
    ((-I/2)*Gstrong*DiracMatrix[li3] . (1 - DiracMatrix[5])*
      SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li3] . 
       (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]])]*
  $LineA2[(-I/2)*Gstrong*DiracMatrix[li2] . (1 - DiracMatrix[5])*
     SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li2] . 
      (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]], 
 MetricTensor[li2, li3]*PropagatorDenominator[-p4 - qc, MB]*
  PropagatorDenominator[-p4 + qb - qc, 0]*
  $LineA1[((-I/2)*Gstrong*DiracMatrix[li3] . (1 - DiracMatrix[5])*
      SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li3] . 
       (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]) . 
    (MB + DiracSlash[p4 + qc]) . 
    ((I/6)*e*DiracMatrix[li1] . (1 - DiracMatrix[5]) + 
     (I/6)*e*DiracMatrix[li1] . (1 + DiracMatrix[5]))]*
  $LineA2[(-I/2)*Gstrong*DiracMatrix[li2] . (1 - DiracMatrix[5])*
     SUNT[Index[Gluon, 6]] - (I/2)*Gstrong*DiracMatrix[li2] . 
      (1 + DiracMatrix[5])*SUNT[Index[Gluon, 6]]]}
