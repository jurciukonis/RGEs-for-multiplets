(* ---------------------------------------------------------------------- *) 
(* This model file was automatically created by SARAH version4.15.3 *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223, 1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306   *) 
(* (c) Florian Staub, Mark Goodsell and Werner Porod, 2020 *) 
(* ---------------------------------------------------------------------- *) 
(* File created at 12:44 on 24.6.2024  *) 
(* ---------------------------------------------------------------------- *) 
 
 
(* ###################### *)
(* All running parameters *)
(* ###################### *)

AllParametersEx = {v, g1, g2, g3, Yu[1, 1], Yu[2, 2], Yu[3, 3], \[Kappa]1, \[Kappa]3, 
 \[Kappa]4, \[Kappa]2, \[Kappa]7, \[Kappa]6, \[Kappa]5}


(* ###################### *)
(*   All Beta Functions   *)
(* ###################### *)

AllEquations = {Derivative[1][v][t] == 
  (Log[10]*((3*(3 + Xi)*(g1[t]^2 + 5*g2[t]^2)*v[t])/20 - 
     3*v[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][g1][t] == ((41 + 16*Y^2)*g1[t]^3*Log[10])/(160*Pi^2), 
 Derivative[1][g2][t] == (65*g2[t]^3*Log[10])/(96*Pi^2), 
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
     12*\[Kappa]1[t]^2 + 16*\[Kappa]3[t]^2 + 16*\[Kappa]3[t]*\[Kappa]4[t] + 
     (40*\[Kappa]4[t]^2)/7 + 12*\[Kappa]1[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + 
       Yu[3, 3][t]^2) - 12*(Yu[1, 1][t]^4 + Yu[2, 2][t]^4 + Yu[3, 3][t]^4)))/
   (16*Pi^2), Derivative[1][\[Kappa]3][t] == 
  (Log[10]*((27*Y^2*g1[t]^4)/25 + (189*g2[t]^4)/4 - 
     (9*g1[t]^2*\[Kappa]3[t])/10 - (18*Y^2*g1[t]^2*\[Kappa]3[t])/5 + 
     6*\[Kappa]1[t]*\[Kappa]3[t] + 18*\[Kappa]2[t]*\[Kappa]3[t] + 
     4*\[Kappa]3[t]^2 - (9*g2[t]^2*(7*Y*g1[t]^2 + 55*\[Kappa]3[t]))/5 + 
     2*\[Kappa]1[t]*\[Kappa]4[t] + 8*\[Kappa]2[t]*\[Kappa]4[t] + 
     (2*\[Kappa]4[t]^2)/7 + (144*\[Kappa]3[t]*\[Kappa]5[t])/7 + 
     (228*\[Kappa]4[t]*\[Kappa]5[t])/49 + 16*\[Kappa]3[t]*\[Kappa]6[t] + 
     (104*\[Kappa]4[t]*\[Kappa]6[t])/49 + (72*\[Kappa]3[t]*\[Kappa]7[t])/5 + 
     (48*\[Kappa]4[t]*\[Kappa]7[t])/35 + 6*\[Kappa]3[t]*
      (Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/(16*Pi^2), 
 Derivative[1][\[Kappa]4][t] == 
  (Log[10]*(-99*g2[t]^2*\[Kappa]4[t] + 2*\[Kappa]1[t]*\[Kappa]4[t] + 
     2*\[Kappa]2[t]*\[Kappa]4[t] + 8*\[Kappa]3[t]*\[Kappa]4[t] + 
     4*\[Kappa]4[t]^2 + (9*g1[t]^2*(28*Y*g2[t]^2 - \[Kappa]4[t] - 
        4*Y^2*\[Kappa]4[t]))/10 + (552*\[Kappa]4[t]*\[Kappa]5[t])/49 + 
     (576*\[Kappa]4[t]*\[Kappa]6[t])/49 + (408*\[Kappa]4[t]*\[Kappa]7[t])/
      35 + 6*\[Kappa]4[t]*(Yu[1, 1][t]^2 + Yu[2, 2][t]^2 + Yu[3, 3][t]^2)))/
   (16*Pi^2), Derivative[1][\[Kappa]2][t] == 
  (Log[10]*((108*Y^4*g1[t]^4)/25 + (7497*g2[t]^4)/4 - 
     (36*Y^2*g1[t]^2*\[Kappa]2[t])/5 + 24*\[Kappa]2[t]^2 - 
     (63*g2[t]^2*(14*Y^2*g1[t]^2 + 15*\[Kappa]2[t]))/5 + 4*\[Kappa]3[t]^2 + 
     4*\[Kappa]3[t]*\[Kappa]4[t] + (288*\[Kappa]2[t]*\[Kappa]5[t])/7 + 
     (472*\[Kappa]5[t]^2)/49 + 32*\[Kappa]2[t]*\[Kappa]6[t] + 
     (416*\[Kappa]5[t]*\[Kappa]6[t])/49 + (472*\[Kappa]6[t]^2)/441 + 
     (144*\[Kappa]2[t]*\[Kappa]7[t])/5 + (192*\[Kappa]5[t]*\[Kappa]7[t])/35 + 
     (192*\[Kappa]6[t]*\[Kappa]7[t])/245 + (88*\[Kappa]7[t]^2)/1225))/
   (16*Pi^2), Derivative[1][\[Kappa]7][t] == 
  (Log[10]*((400*\[Kappa]6[t]^2)/63 - (36*Y^2*g1[t]^2*\[Kappa]7[t])/5 - 
     189*g2[t]^2*\[Kappa]7[t] + 12*\[Kappa]2[t]*\[Kappa]7[t] + 
     (992*\[Kappa]6[t]*\[Kappa]7[t])/49 + (2888*\[Kappa]7[t]^2)/245 + 
     (16*\[Kappa]5[t]*(25*\[Kappa]6[t] + 68*\[Kappa]7[t]))/49))/(16*Pi^2), 
 Derivative[1][\[Kappa]6][t] == 
  (Log[10]*(2646*g2[t]^4 - 189*g2[t]^2*\[Kappa]6[t] + 
     (12*(600*\[Kappa]5[t]^2 - 735*Y^2*g1[t]^2*\[Kappa]6[t] + 
        1225*\[Kappa]2[t]*\[Kappa]6[t] + 1250*\[Kappa]6[t]^2 + 
        2100*\[Kappa]6[t]*\[Kappa]7[t] + 1128*\[Kappa]7[t]^2 + 
        100*\[Kappa]5[t]*(16*\[Kappa]6[t] + 3*\[Kappa]7[t])))/1225))/
   (16*Pi^2), Derivative[1][\[Kappa]5][t] == 
  (Log[10]*(-2646*g2[t]^4 + \[Kappa]4[t]^2 + 
     (63*g2[t]^2*(14*Y^2*g1[t]^2 - 15*\[Kappa]5[t]))/5 + 
     (4*(-19845*Y^2*g1[t]^2*\[Kappa]5[t] + 33075*\[Kappa]2[t]*\[Kappa]5[t] + 
        49050*\[Kappa]5[t]^2 + 68400*\[Kappa]5[t]*\[Kappa]6[t] + 
        17600*\[Kappa]6[t]^2 + 64260*\[Kappa]5[t]*\[Kappa]7[t] + 
        24660*\[Kappa]6[t]*\[Kappa]7[t] + 5364*\[Kappa]7[t]^2))/11025))/
   (16*Pi^2)}


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
