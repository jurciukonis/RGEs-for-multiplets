(* ---------------------------------------------------------------------- *) 
(* This model file was automatically created by SARAH version4.15.3 *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223, 1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306   *) 
(* (c) Florian Staub, Mark Goodsell and Werner Porod, 2020 *) 
(* ---------------------------------------------------------------------- *) 
(* File created at 23:00 on 19.6.2024  *) 
(* ---------------------------------------------------------------------- *) 
 
 
(* ###################### *)
(* All running parameters *)
(* ###################### *)

AllParametersEx = {v, g1, g2, g3, Yu[1, 1], Yu[2, 2], Yu[3, 3], \[Kappa]1, \[Kappa]3, 
 \[Kappa]4, \[Kappa]2, \[Kappa]6, \[Kappa]5}


(* ###################### *)
(*   All Beta Functions   *)
(* ###################### *)

AllEquations = {Derivative[1][v][t] == 
  (Log[10]*((3*(3 + Xi)*(g1[t]^2 + 5*g2[t]^2)*v[t])/20 - 
     3*v[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][g1][t] == ((41 + 12*Y^2)*g1[t]^3*Log[10])/(160*Pi^2), 
 Derivative[1][g2][t] == (g2[t]^3*Log[10])/(6*Pi^2), 
 Derivative[1][g3][t] == (-7*g3[t]^3*Log[10])/(16*Pi^2), 
 Derivative[1][Yu[1, 1]][t] == 
  (Log[10]*((3*Yu[1, 1][t]^3)/2 + Yu[1, 1][t]*((-17*g1[t]^2)/20 - 
       (9*g2[t]^2)/4 - 8*g3[t]^2 + 3*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
         Yu[3, 3][t]^2))))/(16*Pi^2), Derivative[1][Yu[2, 2]][t] == 
  (Log[10]*((3*Yu[2, 2][t]^3)/2 + Yu[2, 2][t]*((-17*g1[t]^2)/20 - 
       (9*g2[t]^2)/4 - 8*g3[t]^2 + 3*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
         Yu[3, 3][t]^2))))/(16*Pi^2), Derivative[1][Yu[3, 3]][t] == 
  (Log[10]*((3*Yu[3, 3][t]^3)/2 + Yu[3, 3][t]*((-17*g1[t]^2)/20 - 
       (9*g2[t]^2)/4 - 8*g3[t]^2 + 3*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
         Yu[3, 3][t]^2))))/(16*Pi^2), Derivative[1][\[Kappa]1][t] == 
  (Log[10]*((27*g1[t]^4)/100 + (9*g1[t]^2*g2[t]^2)/10 + (9*g2[t]^4)/4 - 
     (9*g1[t]^2*\[Kappa]1[t])/5 - 9*g2[t]^2*\[Kappa]1[t] + 
     12*\[Kappa]1[t]^2 + 12*\[Kappa]3[t]^2 + 12*\[Kappa]3[t]*\[Kappa]4[t] + 
     (22*\[Kappa]4[t]^2)/5 + 12*\[Kappa]1[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
       Yu[3, 3][t]^2) - 12*(Yu[1, 1][t]^4 + Yu[2, 2][t]^4 + Yu[3, 3][t]^4)))/
   (16*Pi^2), Derivative[1][\[Kappa]3][t] == 
  (Log[10]*((27*Y^2*g1[t]^4)/25 + (105*g2[t]^4)/4 - 
     (9*g1[t]^2*\[Kappa]3[t])/10 - (18*Y^2*g1[t]^2*\[Kappa]3[t])/5 + 
     6*\[Kappa]1[t]*\[Kappa]3[t] + 14*\[Kappa]2[t]*\[Kappa]3[t] + 
     4*\[Kappa]3[t]^2 - 3*g2[t]^2*(3*Y*g1[t]^2 + 19*\[Kappa]3[t]) + 
     2*\[Kappa]1[t]*\[Kappa]4[t] + 6*\[Kappa]2[t]*\[Kappa]4[t] + 
     (2*\[Kappa]4[t]^2)/5 + (84*\[Kappa]3[t]*\[Kappa]5[t])/5 + 
     (84*\[Kappa]4[t]*\[Kappa]5[t])/25 + 14*\[Kappa]3[t]*\[Kappa]6[t] + 
     (42*\[Kappa]4[t]*\[Kappa]6[t])/25 + 6*\[Kappa]3[t]*
      (Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][\[Kappa]4][t] == 
  (Log[10]*(-57*g2[t]^2*\[Kappa]4[t] + 2*\[Kappa]1[t]*\[Kappa]4[t] + 
     2*\[Kappa]2[t]*\[Kappa]4[t] + 8*\[Kappa]3[t]*\[Kappa]4[t] + 
     4*\[Kappa]4[t]^2 + (9*g1[t]^2*(20*Y*g2[t]^2 - \[Kappa]4[t] - 
        4*Y^2*\[Kappa]4[t]))/10 + (252*\[Kappa]4[t]*\[Kappa]5[t])/25 + 
     (266*\[Kappa]4[t]*\[Kappa]6[t])/25 + 6*\[Kappa]4[t]*
      (Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][\[Kappa]2][t] == 
  (Log[10]*((2025*g2[t]^4)/4 - 15*g2[t]^2*(6*Y^2*g1[t]^2 + 7*\[Kappa]2[t]) + 
     (2*(54*Y^4*g1[t]^4 - 90*Y^2*g1[t]^2*\[Kappa]2[t] + 250*\[Kappa]2[t]^2 + 
        50*\[Kappa]3[t]^2 + 50*\[Kappa]3[t]*\[Kappa]4[t] + 
        92*\[Kappa]5[t]^2 + 84*\[Kappa]5[t]*\[Kappa]6[t] + 9*\[Kappa]6[t]^2 + 
        70*\[Kappa]2[t]*(6*\[Kappa]5[t] + 5*\[Kappa]6[t])))/25))/(16*Pi^2), 
 Derivative[1][\[Kappa]6][t] == 
  (Log[10]*(600*g2[t]^4 - 105*g2[t]^2*\[Kappa]6[t] + 
     (2*(64*\[Kappa]5[t]^2 + 288*\[Kappa]5[t]*\[Kappa]6[t] + 
        5*\[Kappa]6[t]*(-18*Y^2*g1[t]^2 + 30*\[Kappa]2[t] + 
          41*\[Kappa]6[t])))/25))/(16*Pi^2), Derivative[1][\[Kappa]5][t] == 
  (Log[10]*(-600*g2[t]^4 + 15*g2[t]^2*(6*Y^2*g1[t]^2 - 7*\[Kappa]5[t]) + 
     (25*\[Kappa]4[t]^2 - 180*Y^2*g1[t]^2*\[Kappa]5[t] + 
       300*\[Kappa]2[t]*\[Kappa]5[t] + 436*\[Kappa]5[t]^2 + 
       596*\[Kappa]5[t]*\[Kappa]6[t] + 198*\[Kappa]6[t]^2)/25))/(16*Pi^2)}


(* ###################### *)
(*  Function to run RGEs  *)
(* ###################### *)

Options[RunRGEs]={TwoLoop->True}; 
RunRGEs[input_,start_,finish_,opt___]:=RunRGEsFunc[input,start,finish,TwoLoop/.{opt}/.Options[RunRGEs]]; 
RunRGEsFunc[input_,start_,finish_,twoloop_]:=Block[{init}, 
If[twoloop=!=False,coeff2L=1;,coeff2L=0;]; 
init={}; 
For[i=1,i<=Length[AllParametersEx], 
init=Join[init,{AllParametersEx[[i]][start]==(AllParametersEx[[i]] /. input /. (AllParametersEx[[i]]->0))}]; 
i++;]; 
equations=Join[AllEquations/. inc2L->coeff2L /. Xi->0,init]; 
sol=NDSolve[equations,AllParametersEx,{t,start,finish}]; 
Return[sol]; 
]; 
