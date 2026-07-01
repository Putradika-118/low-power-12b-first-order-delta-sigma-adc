v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -170 190 -170 {lab=0}
N 140 -170 140 -160 {lab=0}
N 110 -190 190 -190 {lab=VIN}
N 75 -210 190 -210 {lab=#net1}
N 45 -230 190 -230 {lab=#net2}
N 75 -210 75 -145 {lab=#net1}
N 110 -190 110 -95 {lab=VIN}
N 170 -150 190 -150 {lab=0}
N 170 -150 170 -130 {lab=0}
N 440 -190 480 -190 {lab=OUT}
C {vsource.sym} 45 -200 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 45 -170 0 0 {name=l1 lab=0}
C {vsource.sym} 75 -115 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 110 -65 0 0 {name=V3 value="PULSE(0 3.3 0 1n 1n 0.5u 1u)" savecurrent=false}
C {gnd.sym} 75 -85 0 0 {name=l2 lab=0}
C {gnd.sym} 110 -35 0 0 {name=l3 lab=0}
C {gnd.sym} 140 -160 0 0 {name=l4 lab=0}
C {noconn.sym} 475 -190 1 0 {name=VOUT}
C {devices/code_shown.sym} 620 -285 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 1n 5u
plot v(vin) v(out)
.endc

"}
C {devices/code_shown.sym} 605 -75 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 115 -190 1 0 {name=p2 sig_type=std_logic lab=VIN}
C {gnd.sym} 170 -130 0 0 {name=l5 lab=0}
C {lab_pin.sym} 455 -190 1 0 {name=p1 sig_type=std_logic lab=OUT}
C {DAC_1_BIT.sym} 340 -190 0 0 {name=x1}
