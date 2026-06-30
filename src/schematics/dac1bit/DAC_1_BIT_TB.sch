v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 190 -230 210 -230 {}
L 4 190 -210 210 -210 {}
L 4 190 -190 210 -190 {}
L 4 380 -190 400 -190 {}
L 4 190 -170 210 -170 {}
L 4 190 -150 210 -150 {}
L 4 320 -240 380 -190 {}
B 5 187.5 -232.5 192.5 -227.5 {name=VDD dir=in}
B 5 187.5 -212.5 192.5 -207.5 {name=VREF+ dir=in}
B 5 187.5 -192.5 192.5 -187.5 {name=VIN dir=in}
B 5 397.5 -192.5 402.5 -187.5 {name=VOUT dir=out}
B 5 187.5 -172.5 192.5 -167.5 {name=VREF- dir=in}
B 5 187.5 -152.5 192.5 -147.5 {name=VSS dir=in}
P 4 5 320 -240 210 -240 210 -140 320 -140 380 -190 {}
T {@DAC 1 BIT} 241.5 -196 0 0 0.3 0.3 {}
T {VDD} 215 -234 0 0 0.2 0.2 {}
T {VREF+} 215 -214 0 0 0.2 0.2 {}
T {VIN} 215 -194 0 0 0.2 0.2 {}
T {VOUT} 375 -194 0 1 0.2 0.2 {}
T {VREF-} 215 -174 0 0 0.2 0.2 {}
T {VSS} 215 -154 0 0 0.2 0.2 {}
N 190 -150 190 -125 {lab=0}
N 140 -170 190 -170 {lab=0}
N 140 -170 140 -160 {lab=0}
N 415 -190 435 -190 {lab=VOUT}
N 110 -190 190 -190 {lab=VIN}
N 75 -210 190 -210 {lab=#net1}
N 45 -230 190 -230 {lab=#net2}
N 75 -210 75 -145 {lab=#net1}
N 110 -190 110 -95 {lab=VIN}
N 400 -190 415 -190 {lab=VOUT}
C {vsource.sym} 45 -200 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 45 -170 0 0 {name=l1 lab=0}
C {vsource.sym} 75 -115 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 110 -65 0 0 {name=V3 value="PULSE(0 3.3 0 1n 1n 0.5u 1u)" savecurrent=false}
C {gnd.sym} 75 -85 0 0 {name=l2 lab=0}
C {gnd.sym} 110 -35 0 0 {name=l3 lab=0}
C {gnd.sym} 140 -160 0 0 {name=l4 lab=0}
C {gnd.sym} 190 -125 0 0 {name=l5 lab=0}
C {noconn.sym} 435 -190 1 0 {name=VOUT}
C {lab_pin.sym} 425 -190 1 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 470 -295 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 1n 5u
plot v(vin) 
plot v(vout)
.endc

"}
C {devices/code_shown.sym} 455 -135 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 115 -190 1 0 {name=p2 sig_type=std_logic lab=VIN}
