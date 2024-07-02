(* ---------------------------------------------------------------------- *) 
(* This model file was automatically created by SARAH version4.15.3 *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223, 1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306   *) 
(* (c) Florian Staub, Mark Goodsell and Werner Porod, 2020 *) 
(* ---------------------------------------------------------------------- *) 
(* File created at 19:04 on 21.6.2024  *) 
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
 Derivative[1][g1][t] == ((41 + 10*Y^2)*g1[t]^3*Log[10])/(160*Pi^2), 
 Derivative[1][g2][t] == (g2[t]^3*Log[10])/(96*Pi^2), 
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
     12*\[Kappa]1[t]^2 + 10*\[Kappa]3[t]^2 + 10*\[Kappa]3[t]*\[Kappa]4[t] + 
     (15*\[Kappa]4[t]^2)/4 + 12*\[Kappa]1[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
       Yu[3, 3][t]^2) - 12*(Yu[1, 1][t]^4 + Yu[2, 2][t]^4 + Yu[3, 3][t]^4)))/
   (16*Pi^2), Derivative[1][\[Kappa]3][t] == 
  (Log[10]*((27*Y^2*g1[t]^4)/25 + 18*g2[t]^4 - (9*g1[t]^2*\[Kappa]3[t])/10 - 
     (18*Y^2*g1[t]^2*\[Kappa]3[t])/5 + 6*\[Kappa]1[t]*\[Kappa]3[t] + 
     12*\[Kappa]2[t]*\[Kappa]3[t] + 4*\[Kappa]3[t]^2 - 
     (9*g2[t]^2*(8*Y*g1[t]^2 + 45*\[Kappa]3[t]))/10 + 
     2*\[Kappa]1[t]*\[Kappa]4[t] + 5*\[Kappa]2[t]*\[Kappa]4[t] + 
     \[Kappa]4[t]^2/2 + 15*\[Kappa]3[t]*\[Kappa]5[t] + 
     (11*\[Kappa]4[t]*\[Kappa]5[t])/4 + (40*\[Kappa]3[t]*\[Kappa]6[t])/3 + 
     (5*\[Kappa]4[t]*\[Kappa]6[t])/3 + 6*\[Kappa]3[t]*
      (Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][\[Kappa]4][t] == 
  (Log[10]*((9*g1[t]^2*(16*Y*g2[t]^2 - \[Kappa]4[t] - 4*Y^2*\[Kappa]4[t]))/
      10 + (\[Kappa]4[t]*(-81*g2[t]^2 + 4*\[Kappa]1[t] + 4*\[Kappa]2[t] + 
        16*\[Kappa]3[t] + 8*\[Kappa]4[t] + 19*\[Kappa]5[t] + 
        20*\[Kappa]6[t]))/2 + 6*\[Kappa]4[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
       Yu[3, 3][t]^2)))/(16*Pi^2), Derivative[1][\[Kappa]2][t] == 
  (Log[10]*((108*Y^4*g1[t]^4)/25 + 216*g2[t]^4 - 
     (36*Y^2*g1[t]^2*\[Kappa]2[t])/5 + 18*\[Kappa]2[t]^2 - 
     (72*g2[t]^2*(4*Y^2*g1[t]^2 + 5*\[Kappa]2[t]))/5 + 4*\[Kappa]3[t]^2 + 
     4*\[Kappa]3[t]*\[Kappa]4[t] + 30*\[Kappa]2[t]*\[Kappa]5[t] + 
     (13*\[Kappa]5[t]^2)/2 + (80*\[Kappa]2[t]*\[Kappa]6[t])/3 + 
     (20*\[Kappa]5[t]*\[Kappa]6[t])/3 + (4*\[Kappa]6[t]^2)/3))/(16*Pi^2), 
 Derivative[1][\[Kappa]6][t] == 
  (Log[10]*(216*g2[t]^4 + (9*\[Kappa]5[t]^2)/2 - 72*g2[t]^2*\[Kappa]6[t] + 
     18*\[Kappa]5[t]*\[Kappa]6[t] + 
     (2*\[Kappa]6[t]*(-54*Y^2*g1[t]^2 + 90*\[Kappa]2[t] + 85*\[Kappa]6[t]))/
      15))/(16*Pi^2), Derivative[1][\[Kappa]5][t] == 
  (Log[10]*(-216*g2[t]^4 + \[Kappa]4[t]^2 + 
     (72*g2[t]^2*(4*Y^2*g1[t]^2 - 5*\[Kappa]5[t]))/5 - 
     (36*Y^2*g1[t]^2*\[Kappa]5[t])/5 + 12*\[Kappa]2[t]*\[Kappa]5[t] + 
     (35*\[Kappa]5[t]^2)/2 + 28*\[Kappa]5[t]*\[Kappa]6[t] + 
     (112*\[Kappa]6[t]^2)/9))/(16*Pi^2)}


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
