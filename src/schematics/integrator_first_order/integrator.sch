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
N 440 -240 480 -240 {lab=VOUTP_INT}
N 40 -240 60 -240 {lab=Vin+}
N 10 -240 40 -240 {lab=Vin+}
N 90 -300 90 -280 {lab=clk1}
N 60 -300 90 -300 {lab=clk1}
N 60 -410 120 -410 {lab=clk2}
N 410 -300 410 -280 {lab=clk2}
N 410 -300 440 -300 {lab=clk2}
N 380 -410 440 -410 {lab=clk1}
N 340 -470 340 -440 {lab=VSS}
N 160 -470 160 -440 {lab=OUT_DAC_PLUS}
N 160 140 160 280 {lab=#net3}
N 120 140 160 140 {lab=#net3}
N 160 140 240 140 {lab=#net3}
N 300 140 340 140 {lab=#net4}
N 340 140 340 280 {lab=#net4}
N 340 140 380 140 {lab=#net4}
N 440 140 480 140 {lab=VOUTM_INT}
N 40 140 60 140 {lab=Vin-}
N 10 140 40 140 {lab=Vin-}
N 90 180 90 200 {lab=clk1}
N 60 200 90 200 {lab=clk1}
N 60 310 120 310 {lab=clk2}
N 410 180 410 200 {lab=clk2}
N 410 200 440 200 {lab=clk2}
N 380 310 440 310 {lab=clk1}
N 340 340 340 370 {lab=VSS}
N 160 340 160 370 {lab=OUT_DAC_MIN}
N 160 -410 170 -410 {lab=VSS}
N 330 -410 340 -410 {lab=VSS}
N 90 -240 90 -230 {lab=VSS}
N 410 -240 410 -230 {lab=VSS}
N 90 130 90 140 {lab=VSS}
N 410 130 410 140 {lab=VSS}
N 160 310 170 310 {lab=VSS}
N 330 310 340 310 {lab=VSS}
N 741.25 -236.25 792.5 -236.25 {lab=OUT_DAC_PLUS}
N 740 216.25 790 216.25 {lab=OUT_DAC_MIN}
C {symbols/nfet_03v3.sym} 140 -410 2 1 {name=M1
L=0.3u
W=1u
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
L=0.3u
W=1u
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
L=0.3u
W=1u
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
L=0.3u
W=1u
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
C {ipin.sym} 10 -240 0 0 {name=p3 lab=Vin+}
C {lab_pin.sym} 440 -410 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 440 -300 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 140 310 0 0 {name=M5
L=0.3u
W=1u
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
L=0.3u
W=1u
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
L=0.3u
W=1u
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
L=0.3u
W=1u
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
C {ipin.sym} 10 140 2 1 {name=p6 lab=Vin-}
C {lab_pin.sym} 440 310 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 200 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 60 310 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 440 200 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 170 -410 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -410 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -230 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 -230 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 130 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 130 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 310 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 310 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -470 1 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 370 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 370 3 0 {name=p29 sig_type=std_logic lab=OUT_DAC_MIN}
C {lab_pin.sym} 160 -470 1 0 {name=p30 sig_type=std_logic lab=OUT_DAC_PLUS}
C {lab_pin.sym} 480 -240 2 0 {name=p11 sig_type=std_logic lab=VOUTP_INT}
C {lab_pin.sym} 480 140 2 0 {name=p12 sig_type=std_logic lab=VOUTM_INT}
C {ipin.sym} 60 -300 0 0 {name=p2 lab=clk1}
C {ipin.sym} 60 -410 0 0 {name=p4 lab=clk2}
C {noconn.sym} 792.5 -236.25 1 0 {name=l15}
C {lab_pin.sym} 770.625 -236.25 1 0 {name=p40 sig_type=std_logic lab=OUT_DAC_PLUS}
C {lab_pin.sym} 770 216.25 1 0 {name=p37 sig_type=std_logic lab=OUT_DAC_MIN}
C {noconn.sym} 790 216.25 1 0 {name=l19}
C {symbols/cap_mim_2f0fF.sym} 270 -240 3 0 {name=C1
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 270 140 3 0 {name=C3
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
