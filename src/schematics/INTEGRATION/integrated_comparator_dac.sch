v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 290 -650 {}
N 240 -670 340 -670 {lab=VDD}
N 280 -650 340 -650 {lab=IN}
N 320 -630 340 -630 {lab=#net1}
N 320 -610 340 -610 {lab=#net2}
N 320 -610 320 -550 {lab=#net2}
N 200 -670 240 -670 {lab=VDD}
N 260 -650 280 -650 {lab=IN}
N 510 -830 560 -830 {lab=#net3}
N 510 -830 510 -820 {lab=#net3}
N 480 -850 560 -850 {lab=OUT1}
N 415 -890 560 -890 {lab=#net4}
N 480 -850 480 -755 {lab=OUT1}
N 540 -810 560 -810 {lab=0}
N 540 -810 540 -790 {lab=0}
N 450 -870 560 -870 {lab=#net5}
N 510 -630 540 -630 {lab=OUT1}
N 800 -850 850 -850 {lab=OUT2}
N 340 -590 340 -550 {lab=#net6}
N 340 -550 340 -480 {lab=#net6}
N 290 -630 320 -630 {lab=#net1}
N 290 -630 290 -580 {lab=#net1}
C {devices/code_shown.sym} 615 -435 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} 260 -590 0 0 {name=l2 lab=0}
C {gnd.sym} 320 -490 0 0 {name=l4 lab=0}
C {lab_pin.sym} 300 -650 1 0 {name=p2 sig_type=std_logic lab=IN}
C {vsource.sym} 260 -620 0 0 {name=V2 value="PULSE(-1 1 0 0.5u 0.5u 0 1u)" savecurrent=false}
C {vsource.sym} 320 -520 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 41.666n 83.333n)" savecurrent=false}
C {vsource.sym} 200 -640 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 200 -610 0 0 {name=l1 lab=0}
C {lab_pin.sym} 260 -670 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} 415 -860 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 415 -830 0 0 {name=l7 lab=0}
C {gnd.sym} 540 -790 0 0 {name=l11 lab=0}
C {vsource.sym} 510 -790 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} 450 -810 0 0 {name=l9 lab=0}
C {devices/code_shown.sym} 620 -705 0 0 {name=NGSPICE only_toplevel=true
value="
.param Wp=5u Wn=2.5u Ws=2*Wp Ls=0.3u
.param Wsp=3u Wsn=1.5u Ld=0.35u Wdp=1u Wdn=1u
.control
save all
tran 1u 5u
set color0=white
set color1=black
plot v(IN) v(OUT1) 
plot v(OUT2)
let inst_pwr = -v(vdd) * i(v1)
meas tran avg_power AVG inst_pwr from=0 to=5u
.endc

"}
C {lab_pin.sym} 520 -630 3 0 {name=p1 sig_type=std_logic lab=OUT1}
C {noconn.sym} 540 -630 2 0 {name=l6}
C {lab_pin.sym} 480 -780 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {noconn.sym} 480 -760 2 0 {name=l8}
C {lab_pin.sym} 830 -850 1 0 {name=p5 sig_type=std_logic lab=OUT2}
C {noconn.sym} 850 -850 1 0 {name=l12}
C {vsource.sym} 340 -450 0 0 {name=V6 value=0 savecurrent=false}
C {gnd.sym} 340 -420 0 0 {name=l5 lab=0
value=-3.3}
C {vsource.sym} 290 -550 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} 290 -520 0 0 {name=l3 lab=0}
C {vsource.sym} 450 -840 0 0 {name=V7 value=3.3 savecurrent=false}
C {gnd.sym} 510 -760 0 0 {name=l10 lab=0}
C {dac_1bit/DAC_1_BIT.sym} 550 -790 0 0 {name=x1}
C {latched_comparator/COMPARATOR_SD.sym} 320 -470 0 0 {name=x2}
