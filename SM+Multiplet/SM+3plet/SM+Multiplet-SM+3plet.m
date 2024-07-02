Off[General::spell]

Model`Name = "SM+3plet";
Model`NameLaTeX ="SM + 3plet";
Model`Authors = "D.Jurciukonis";
Model`Date = "2024-06-20";

(* Model build according arXiv:2404.07897 for arbitrary hypercharge Y *)


(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Gauge Groups *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False};
Gauge[[2]]={WB, SU[2], left,        g2,True};
Gauge[[3]]={G,  SU[3], color,       g3,False};


(* Matter Fields *)

FermionFields[[1]] = {q, 3, {uL, dL},     1/6, 2,  3};  
FermionFields[[2]] = {l, 3, {vL, eL},    -1/2, 2,  1};
FermionFields[[3]] = {d, 3, conj[dR],     1/3, 1, -3};
FermionFields[[4]] = {u, 3, conj[uR],    -2/3, 1, -3};
FermionFields[[5]] = {e, 3, conj[eR],       1, 1,  1};


(* multiplet components: SFc, SFd, SFe *)

multiplet = {{-SFd/Sqrt[2], SFc}, {-SFe, SFd/Sqrt[2]}};


(* scalar fields *)

ScalarFields[[1]] = {H, 1, {Hp, H0},   1/2, 2, 1};
ScalarFields[[2]] = {M, 1, multiplet,    Y, 3, 1};


        
(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= {
	{LagHC, {AddHC->True}},
	{LagNoHC,{AddHC->False}}
};


GG1 = conj[H].H;
GG2 = conj[M].M;
GG4 = Delta[lef1, lef4b] Delta[lef2, lef3b] Delta[lef3, lef4] conj[H].H.conj[M].M;
GG5 = Delta[lef1, lef2] Delta[lef1b, lef4b] Delta[lef2b, lef3b] Delta[lef3,lef4] conj[M].M.conj[M].M;


LagNoHC = -(1/2 \[Kappa]1 GG1.GG1 + 1/2 \[Kappa]2 GG2.GG2 + \[Kappa]3 GG1.GG2 + \[Kappa]4 GG4 + \[Kappa]5 GG5);



(* assume only up Yukawa couplings *)
LagHC =  -(Yu u.q.H);

(*LagHC =  -(Yd conj[H].d.q + Ye conj[H].e.l + Yu u.q.H);*)




(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3]},{VP,VZ},ZZ},
  {{VWB[1],VWB[2]},{VWp,conj[VWp]},ZW}
};     
        
        
          	

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {H0, {v, 1/Sqrt[2]}, {Ah, \[ImaginaryI]/Sqrt[2]},{hh, 1/Sqrt[2]}}     };
 

DEFINITION[EWSB][MatterSector]=   
    {{{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}}};  


(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  vL, 0}};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};



