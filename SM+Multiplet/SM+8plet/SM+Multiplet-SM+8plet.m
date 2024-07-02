Off[General::spell]

Model`Name = "SM+8plet";
Model`NameLaTeX ="SM + 8plet";
Model`Authors = "D.Jurciukonis";
Model`Date = "2024-06-20";

(* Model build according arXiv:2404.07897 for arbitrary hypercharge Y *)

(* IMPORTANT: for the octet or larger multiplets the function TestDim[] in the package file young.m should be modified.
The options in function AddRow[] should be: AddRow[4 N,1,height,{},dim,dyn,N],
i.e. the maximal number of boxes in the row should be increased to 4*N !!!  *)


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


(* multiplet components: SFc, SFd, SFe, SFf, SFg, SFh, SFi, SFj *)

(* definition of octet I *)
ClearAll[multt];
multt[a__]:=multt[Sequence@@(Sort[{a}])]/;!SameQ[Sort[{a}], {a}];
multRepList = {
   multt[1, 1, 1, 1, 1, 1, 1] :> SFc,
   multt[1, 1, 1, 1, 1, 1, 2] :> SFd/Sqrt[7],
   multt[1, 1, 1, 1, 1, 2, 2] :> SFe/Sqrt[21],
   multt[1, 1, 1, 1, 2, 2, 2] :> SFf/Sqrt[35],
   multt[1, 1, 1, 2, 2, 2, 2] :> SFg/Sqrt[35],
   multt[1, 1, 2, 2, 2, 2, 2] :> SFh/Sqrt[21],
   multt[1, 2, 2, 2, 2, 2, 2] :> SFi/Sqrt[7],
   multt[2, 2, 2, 2, 2, 2, 2] :> SFj};
multiplet = (Table[multt[a, b, c, d, e, f, g], {a, 2}, {b, 2}, {c, 2}, {d, 2}, {e, 2},
            {f, 2}, {g, 2}])/.multRepList;


(* definition of octet II *)
(*
multiplet = Table[0, {2}, {2}, {2}, {2}, {2}, {2}, {2}];
Do[nnnnn2 = Count[{lef1, lef1b, lef1c, lef1d, lef1e, lef1f, lef1g}, 2];
  If[nnnnn2 == 0, elem = SFc];
  If[nnnnn2 == 1, elem = SFd/Sqrt[7]];
  If[nnnnn2 == 2, elem = SFe/Sqrt[21]];
  If[nnnnn2 == 3, elem = SFf/Sqrt[35]];
  If[nnnnn2 == 4, elem = SFg/Sqrt[35]];
  If[nnnnn2 == 5, elem = SFh/Sqrt[21]];
  If[nnnnn2 == 6, elem = SFi/Sqrt[7]];
  If[nnnnn2 == 7, elem = SFj];
  multiplet[[lef1, lef1b, lef1c, lef1d, lef1e, lef1f, lef1g]] =
   elem;, {lef1, 1, 2}, {lef1b, 1, 2}, {lef1c, 1, 2}, {lef1d, 1,
   2}, {lef1e, 1, 2}, {lef1f, 1, 2}, {lef1g, 1, 2}];
*)


(* scalar fields *)

ScalarFields[[1]] = {H, 1, {Hp, H0},   1/2, 2, 1};
ScalarFields[[2]] = {M, 1, multiplet,    Y, 8, 1};


        
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

GG4 = Delta[lef1, lef2] Delta[lef2b, lef4b] Delta[lef2c, lef4c] Delta[
    lef2d, lef4d] Delta[lef2e, lef4e] Delta[lef2f, lef4f] Delta[lef2g,
     lef4g] Delta[lef3, lef4] conj[H].M.H.conj[M];

GG5 = Delta[lef1, lef2] Delta[lef1b, lef2b] Delta[lef1c, lef2c] Delta[
    lef1d, lef2d] Delta[lef1e, lef2e] Delta[lef1f, lef2f] Delta[lef1g,
     lef4g] Delta[lef2g, lef3g] Delta[lef3, lef4] Delta[lef3b,
    lef4b] Delta[lef3c, lef4c] Delta[lef3d, lef4d] Delta[lef3e,
    lef4e] Delta[lef3f, lef4f] conj[M].M.conj[M].M;

GG6 = Delta[lef1, lef2] Delta[lef1b, lef2b] Delta[lef1c, lef2c] Delta[
    lef1d, lef2d] Delta[lef1e, lef2e] Delta[lef1f, lef4f] Delta[lef1g,
     lef4g] Delta[lef2f, lef3f] Delta[lef2g, lef3g] Delta[lef3,
    lef4] Delta[lef3b, lef4b] Delta[lef3c, lef4c] Delta[lef3d,
    lef4d] Delta[lef3e, lef4e] conj[M].M.conj[M].M;

GG7 = Delta[lef1, lef2] Delta[lef1b, lef2b] Delta[lef1c, lef2c] Delta[
    lef1d, lef2d] Delta[lef1e, lef4e] Delta[lef1f, lef4f] Delta[lef1g,
     lef4g] Delta[lef2e, lef3e] Delta[lef2f, lef3f] Delta[lef2g,
    lef3g] Delta[lef3, lef4] Delta[lef3b, lef4b] Delta[lef3c,
    lef4c] Delta[lef3d, lef4d] conj[M].M.conj[M].M;


LagNoHC = -(1/2 \[Kappa]1 GG1.GG1 + 1/2 \[Kappa]2 GG2.GG2 + \[Kappa]3 GG1.GG2 + \[Kappa]4 GG4 + \
            \[Kappa]5 GG5 + \[Kappa]6 GG6 + \[Kappa]7 GG7);


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



