v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 130 -220 {}
N 80 -240 180 -240 {lab=VDD}
N 120 -220 180 -220 {lab=IN}
N 160 -200 180 -200 {lab=0}
N 160 -180 180 -180 {lab=#net1}
N 160 -180 160 -120 {lab=#net1}
N 350 -200 390 -200 {lab=OUT}
N 40 -240 80 -240 {lab=VDD}
N 100 -220 120 -220 {lab=IN}
C {gnd.sym} 100 -160 0 0 {name=l2 lab=0}
C {gnd.sym} 160 -200 0 0 {name=l3 lab=0}
C {gnd.sym} 160 -60 0 0 {name=l4 lab=0}
C {gnd.sym} 180 -160 0 0 {name=l5 lab=0}
C {noconn.sym} 390 -200 2 0 {name=l6}
C {lab_pin.sym} 370 -200 1 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 140 -220 1 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 430 -375 0 0 {name=NGSPICE only_toplevel=true
value="
.param Wp=20u Wn=10u Ws=40u Ls=8u
.control
save all
tran 100n 500u
set color0=white
set color1=black
let inst_pwr = -v(vdd) * i(v1)
meas tran avg_power AVG inst_pwr from=0 to=5u
plot v(in) v(out)
.endc

"}
C {devices/code_shown.sym} 445 -135 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 100 -190 0 0 {name=V2 value="PULSE(-1 1 0 50u 50u 0 100u)" savecurrent=false}
C {vsource.sym} 160 -90 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 2.5u 5u)" savecurrent=false}
C {vsource.sym} 40 -210 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 40 -180 0 0 {name=l1 lab=0}
C {COMPARATOR_SD.sym} 150 -60 0 0 {name=x1}
C {lab_pin.sym} 100 -240 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {capa.sym} 370 -170 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 370 -140 0 0 {name=l7 lab=0}
