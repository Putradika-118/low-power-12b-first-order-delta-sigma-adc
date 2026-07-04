v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -380 160 -240 {lab=#net1}
N 120 -240 160 -240 {lab=#net1}
N 160 -240 240 -240 {lab=#net1}
N 300 -240 340 -240 {lab=#net2}
N 340 -380 340 -240 {lab=#net2}
N 340 -240 380 -240 {lab=#net2}
N 440 -240 480 -240 {lab=Vout+}
N 460 -240 460 -120 {lab=Vout+}
N 300 -120 460 -120 {lab=Vout+}
N 40 -120 240 -120 {lab=Vin+}
N 40 -240 40 -120 {lab=Vin+}
N 40 -240 60 -240 {lab=Vin+}
N 10 -240 40 -240 {lab=Vin+}
N 90 -300 90 -280 {lab=clk1}
N 60 -300 90 -300 {lab=clk1}
N 60 -410 120 -410 {lab=clk2}
N 410 -300 410 -280 {lab=clk2}
N 410 -300 440 -300 {lab=clk2}
N 380 -410 440 -410 {lab=clk1}
N 340 -470 340 -440 {lab=0}
N 160 -470 160 -440 {lab=0}
N 160 140 160 280 {lab=#net3}
N 120 140 160 140 {lab=#net3}
N 160 140 240 140 {lab=#net3}
N 300 140 340 140 {lab=#net4}
N 340 140 340 280 {lab=#net4}
N 340 140 380 140 {lab=#net4}
N 440 140 480 140 {lab=Vout-}
N 460 20 460 140 {lab=Vout-}
N 300 20 460 20 {lab=Vout-}
N 40 20 240 20 {lab=Vin-}
N 40 20 40 140 {lab=Vin-}
N 40 140 60 140 {lab=Vin-}
N 10 140 40 140 {lab=Vin-}
N 90 180 90 200 {lab=clk1}
N 60 200 90 200 {lab=clk1}
N 60 310 120 310 {lab=clk2}
N 410 180 410 200 {lab=clk2}
N 410 200 440 200 {lab=clk2}
N 380 310 440 310 {lab=clk1}
N 340 340 340 370 {lab=0}
N 160 340 160 370 {lab=0}
N 160 -410 170 -410 {lab=VSS}
N 330 -410 340 -410 {lab=VSS}
N 90 -240 90 -230 {lab=VSS}
N 410 -240 410 -230 {lab=VSS}
N 90 130 90 140 {lab=VSS}
N 410 130 410 140 {lab=VSS}
N 160 310 170 310 {lab=VSS}
N 330 310 340 310 {lab=VSS}
N -640 -440 -640 -400 {lab=VDD}
N -640 -340 -640 -320 {lab=0}
N -520 -440 -520 -400 {lab=VSS}
N -520 -340 -520 -320 {lab=0}
N -400 -440 -400 -400 {lab=Vbiasn}
N -400 -340 -400 -320 {lab=0}
N -280 -440 -280 -400 {lab=Vbiasp}
N -280 -340 -280 -320 {lab=0}
N -640 -160 -640 -120 {lab=#net5}
N -640 -60 -640 -40 {lab=0}
N -520 -160 -520 -120 {lab=#net6}
N -520 -60 -520 -40 {lab=0}
N -400 -160 -400 -120 {lab=#net7}
N -400 -60 -400 -40 {lab=0}
N -280 -160 -280 -120 {lab=#net8}
N -280 -60 -280 -40 {lab=0}
C {symbols/nfet_03v3.sym} 140 -410 2 1 {name=M1
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 360 -410 2 0 {name=M2
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 90 -260 3 1 {name=M3
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 410 -260 3 1 {name=M4
L=0.52u
W=13u
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
C {capa.sym} 270 -240 1 1 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 270 -120 1 1 {name=C2
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 10 -240 0 0 {name=p3 lab=Vin+}
C {gnd.sym} 160 -470 2 0 {name=l1 lab=0}
C {gnd.sym} 340 -470 2 0 {name=l2 lab=0}
C {lab_pin.sym} 440 -410 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 -300 0 0 {name=p2 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 -410 0 0 {name=p4 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 440 -300 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 140 310 0 0 {name=M5
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 360 310 0 1 {name=M6
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 90 160 3 0 {name=M7
L=0.52u
W=13u
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
C {symbols/nfet_03v3.sym} 410 160 3 0 {name=M8
L=0.52u
W=13u
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
C {capa.sym} 270 140 1 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 270 20 1 0 {name=C4
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 10 140 2 1 {name=p6 lab=Vin-}
C {gnd.sym} 160 370 0 1 {name=l3 lab=0}
C {gnd.sym} 340 370 0 1 {name=l4 lab=0}
C {lab_pin.sym} 440 310 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 200 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 310 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 440 200 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {opin.sym} 480 -240 0 0 {name=p11 lab=Vout+}
C {opin.sym} 480 140 0 0 {name=p12 lab=Vout-}
C {lab_pin.sym} 170 -410 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -410 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -230 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 -230 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 130 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 130 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 310 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 310 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {vsource.sym} -640 -370 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -640 -320 0 0 {name=l5 lab=0}
C {vsource.sym} -520 -370 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -520 -320 0 0 {name=l6 lab=0}
C {vsource.sym} -400 -370 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -400 -320 0 0 {name=l7 lab=0}
C {vsource.sym} -280 -370 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -280 -320 0 0 {name=l8 lab=0}
C {vsource.sym} -640 -90 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} -640 -40 0 0 {name=l9 lab=0}
C {vsource.sym} -520 -90 0 0 {name=V6 value=3.3 savecurrent=false}
C {gnd.sym} -520 -40 0 0 {name=l10 lab=0}
C {vsource.sym} -400 -90 0 0 {name=V7 value=3.3 savecurrent=false}
C {gnd.sym} -400 -40 0 0 {name=l11 lab=0}
C {vsource.sym} -280 -90 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} -280 -40 0 0 {name=l12 lab=0}
C {lab_pin.sym} -640 -440 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 -440 1 0 {name=p22 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -400 -440 1 0 {name=p23 sig_type=std_logic lab=Vbiasn
}
C {lab_pin.sym} -280 -440 1 0 {name=p24 sig_type=std_logic lab=Vbiasp
}
C {lab_pin.sym} -640 -160 1 0 {name=p25 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -520 -160 1 0 {name=p26 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -400 -160 1 0 {name=p27 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -280 -160 1 0 {name=p28 sig_type=std_logic lab=clk2}
