v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 20 -200 {}
N -30 -220 70 -220 {lab=#net1}
N 10 -200 70 -200 {lab=IN}
N 50 -180 70 -180 {lab=0}
N 50 -160 70 -160 {lab=#net2}
N 50 -160 50 -100 {lab=#net2}
N 240 -180 280 -180 {lab=OUT}
N -70 -220 -30 -220 {lab=#net1}
N -10 -200 10 -200 {lab=IN}
C {gnd.sym} -10 -140 0 0 {name=l2 lab=0}
C {gnd.sym} 50 -180 0 0 {name=l3 lab=0}
C {gnd.sym} 50 -40 0 0 {name=l4 lab=0}
C {gnd.sym} 70 -140 0 0 {name=l5 lab=0}
C {noconn.sym} 280 -180 2 0 {name=l6}
C {lab_pin.sym} 260 -180 1 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 30 -200 1 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 350 -325 0 0 {name=NGSPICE only_toplevel=true
value="
.param Wp=3.2u Wn=1.6u Ws=6.4u Ls=1u
.control
save all
tran 100n 500u
plot v(in) v(out)
.endc

"}
C {devices/code_shown.sym} 335 -115 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -10 -170 0 0 {name=V2 value="PULSE(-1 1 0 50u 50u 0 100u)" savecurrent=false}
C {vsource.sym} 50 -70 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 2.5u 5u)" savecurrent=false}
C {vsource.sym} -70 -190 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -70 -160 0 0 {name=l1 lab=0}
C {latched comparator/COMPARATOR_SD.sym} 220 -180 0 0 {name=x1}
