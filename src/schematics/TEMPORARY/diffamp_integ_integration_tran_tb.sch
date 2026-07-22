v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -990 180 -850 {lab=#net1}
N 140 -850 180 -850 {lab=#net1}
N 180 -850 260 -850 {lab=#net1}
N 320 -850 360 -850 {lab=#net2}
N 360 -990 360 -850 {lab=#net2}
N 360 -850 400 -850 {lab=#net2}
N 460 -850 500 -850 {lab=Vm}
N 60 -850 80 -850 {lab=Vin+}
N 30 -850 60 -850 {lab=Vin+}
N 430 -910 430 -890 {lab=clk2}
N 430 -910 460 -910 {lab=clk2}
N 400 -1020 460 -1020 {lab=clk1}
N 360 -1080 360 -1050 {lab=VSS}
N 180 -1080 180 -1050 {lab=VCM}
N 180 -470 180 -330 {lab=#net3}
N 140 -470 180 -470 {lab=#net3}
N 180 -470 260 -470 {lab=#net3}
N 320 -470 360 -470 {lab=#net4}
N 360 -470 360 -330 {lab=#net4}
N 360 -470 400 -470 {lab=#net4}
N 460 -470 500 -470 {lab=Vp}
N 60 -470 80 -470 {lab=Vin-}
N 30 -470 60 -470 {lab=Vin-}
N 110 -430 110 -410 {lab=clk1}
N 80 -410 110 -410 {lab=clk1}
N 80 -300 140 -300 {lab=clk2}
N 430 -430 430 -410 {lab=clk2}
N 430 -410 460 -410 {lab=clk2}
N 400 -300 460 -300 {lab=clk1}
N 360 -270 360 -240 {lab=VSS}
N 180 -270 180 -240 {lab=VCM}
N 180 -1020 190 -1020 {lab=VSS}
N 350 -1020 360 -1020 {lab=VSS}
N 110 -850 110 -840 {lab=VSS}
N 430 -850 430 -840 {lab=VSS}
N 110 -480 110 -470 {lab=VSS}
N 430 -480 430 -470 {lab=VSS}
N 180 -300 190 -300 {lab=VSS}
N 350 -300 360 -300 {lab=VSS}
N 500 -850 700 -850 {lab=Vm}
N 500 -470 720 -470 {lab=Vp}
N 510 -850 510 -680 {lab=Vm}
N 510 -680 670 -680 {lab=Vm}
N 510 -640 510 -470 {lab=Vp}
N 510 -640 670 -640 {lab=Vp}
N 670 -645 670 -640 {lab=Vp}
N 760 -850 830 -850 {lab=Vop}
N 780 -470 840 -470 {lab=Vom}
N 772.5 -653.75 840 -653.75 {lab=Vom}
N 771.25 -677.5 838.75 -677.5 {lab=Vop}
N 830 -850 840 -850 {lab=Vop}
N 838.75 -677.5 840 -677.5 {lab=Vop}
N 840 -677.5 990 -677.5 {lab=Vop}
N 840 -653.75 990 -653.75 {lab=Vom}
N 840 -850 840 -677.5 {lab=Vop}
N 840 -653.75 840 -470 {lab=Vom}
N 742.5 -647.5 750 -647.5 {lab=Vbiasp}
N 750 -647.5 750 -600 {lab=Vbiasp}
N 710 -627.5 710 -600 {lab=Vbiasn}
N -1020 -990 -1020 -950 {lab=VDD}
N -1020 -890 -1020 -870 {lab=0}
N -800 -990 -800 -950 {lab=VSS}
N -800 -890 -800 -870 {lab=0}
N -580 -990 -580 -950 {lab=Vbiasn}
N -580 -890 -580 -870 {lab=0}
N -320 -990 -320 -950 {lab=Vbiasp}
N -320 -890 -320 -870 {lab=0}
N -1020 -710 -1020 -670 {lab=Vin+}
N -1020 -610 -1020 -590 {lab=0}
N -800 -710 -800 -670 {lab=Vin-}
N -800 -610 -800 -590 {lab=0}
N -580 -710 -580 -670 {lab=clk1}
N -580 -610 -580 -590 {lab=0}
N -320 -710 -320 -670 {lab=clk2}
N -320 -610 -320 -590 {lab=0}
N -1020 -460 -1020 -420 {lab=VCM}
N -1020 -360 -1020 -340 {lab=0}
C {symbols/nfet_03v3.sym} 160 -1020 2 1 {name=M1
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 380 -1020 2 0 {name=M2
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 110 -870 3 1 {name=M3
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 430 -870 3 1 {name=M4
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {capa.sym} 290 -850 1 1 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 30 -850 0 0 {name=p3 lab=Vin+}
C {lab_pin.sym} 460 -1020 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 460 -910 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 160 -300 0 0 {name=M5
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 380 -300 0 1 {name=M6
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 110 -450 3 0 {name=M7
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 430 -450 3 0 {name=M8
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {capa.sym} 290 -470 1 0 {name=C3
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 30 -470 2 1 {name=p6 lab=Vin-}
C {lab_pin.sym} 460 -300 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 80 -410 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 80 -300 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 460 -410 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 190 -1020 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -1020 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -840 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 430 -840 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -480 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 430 -480 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 -300 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -300 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {capa.sym} 730 -850 3 0 {name=C5
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 750 -470 3 0 {name=C6
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 990 -677.5 0 0 {name=p11 lab=Vop}
C {opin.sym} 990 -653.75 2 1 {name=p12 lab=Vom}
C {lab_pin.sym} 670 -625 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -700 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -240 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -1080 1 0 {name=p39 sig_type=std_logic lab=VSS}
C {ipin.sym} 110 -890 3 1 {name=p41 lab=clk1}
C {ipin.sym} 140 -1020 2 1 {name=p2 lab=clk2}
C {ipin.sym} 710 -600 1 1 {name=p4 lab=Vbiasn}
C {ipin.sym} 750 -600 1 1 {name=p42 lab=Vbiasp}
C {/foss/designs/low-power-12b-first-order-delta-sigma-adc/src/schematics/FULLY DIFFERENTIAL AMPLIFIER/fullydiffamp.sym} 730 -575 0 0 {name=x1}
C {vsource.sym} -1020 -920 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -1020 -870 0 0 {name=l5 lab=0}
C {vsource.sym} -800 -920 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -800 -870 0 0 {name=l6 lab=0}
C {vsource.sym} -580 -920 0 0 {name=V3 value=0.65 savecurrent=false}
C {gnd.sym} -580 -870 0 0 {name=l7 lab=0}
C {vsource.sym} -320 -920 0 0 {name=V4 value=2.5 savecurrent=false}
C {gnd.sym} -320 -870 0 0 {name=l8 lab=0}
C {vsource.sym} -1020 -640 0 0 {name=V5 value="PULSE(-0.25 0.25 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -1020 -590 0 0 {name=l9 lab=0}
C {vsource.sym} -800 -640 0 0 {name=V6 value="PULSE(0.25 -0.25 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -800 -590 0 0 {name=l10 lab=0}
C {vsource.sym} -580 -640 0 0 {name=V7 value="PULSE(0 3.3 0 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -580 -590 0 0 {name=l11 lab=0}
C {vsource.sym} -320 -640 0 0 {name=V8 value="PULSE(0 3.3 40.69n 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -320 -590 0 0 {name=l12 lab=0}
C {lab_pin.sym} -1020 -990 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -800 -990 1 0 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -580 -990 1 0 {name=p27 sig_type=std_logic lab=Vbiasn
}
C {lab_pin.sym} -320 -990 1 0 {name=p28 sig_type=std_logic lab=Vbiasp
}
C {lab_pin.sym} -1020 -710 1 0 {name=p29 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -800 -710 1 0 {name=p30 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -580 -710 1 0 {name=p31 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -320 -710 1 0 {name=p32 sig_type=std_logic lab=clk2}
C {devices/code_shown.sym} 1441.25 -1103.75 0 0 {name=NGSPICE only_toplevel=true
value="
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

.param CL=0.5p
.param Wp=12u
.param Wn=6u
.param Kall=1.28u
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T

* dummy load supaya tiap node punya DC path ke ground
Rd1 clk1  0 1meg
Rd2 clk2  0 1meg

.control
set color0=white
set color1=black
tran 2n 100u
let vicm_ota = (v(Vp)+v(Vm))/2
let vid_ota  = v(Vp)-v(Vm)
* --- window ala paper ---
plot v(clk1) v(clk2)          $ window 1: non-overlapping clocks
plot v(Vin+) v(Vin-)          $ window 2: input diferensial
plot v(Vop) v(Vom)            $ window 3: output OTA (single-ended)
plot v(Vop)-v(Vom)            $ window 4: output integrator (diferensial) -> segitiga
plot v(Vp) v(Vm)
plot vicm_ota
plot vid_ota
.endc
.end
"}
C {lab_pin.sym} 580 -680 1 0 {name=p33 sig_type=std_logic lab=Vm}
C {lab_pin.sym} 580 -640 3 0 {name=p34 sig_type=std_logic lab=Vp}
C {vsource.sym} -1020 -390 0 0 {name=V9 value=1.65 savecurrent=false}
C {gnd.sym} -1020 -340 0 0 {name=l1 lab=0}
C {lab_pin.sym} -1020 -460 1 0 {name=p35 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 180 -1080 1 0 {name=p36 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 180 -240 3 0 {name=p21 sig_type=std_logic lab=VCM}
