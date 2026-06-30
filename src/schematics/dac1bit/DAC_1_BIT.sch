v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -240 160 -60 {lab=VREF+}
N 220 -240 220 -60 {lab=VOUT}
N 160 90 160 270 {lab=VREF-}
N 220 90 220 270 {lab=VOUT}
N 190 -20 190 50 {lab=#net1}
N 40 -130 40 140 {lab=#net1}
N 40 10 190 10 {lab=#net1}
N -60 -160 0 -160 {lab=VIN}
N -60 170 0 170 {lab=VIN}
N -60 -160 -60 170 {lab=VIN}
N 190 -300 190 -280 {lab=VIN}
N -60 -300 190 -300 {lab=VIN}
N -60 -300 -60 -160 {lab=VIN}
N -60 170 -60 320 {lab=VIN}
N -60 320 190 320 {lab=VIN}
N 190 310 190 320 {lab=VIN}
N 220 -150 300 -150 {lab=VOUT}
N 220 170 290 170 {lab=VOUT}
N 300 -150 300 170 {lab=VOUT}
N 290 170 300 170 {lab=VOUT}
N -120 0 -60 0 {lab=VIN}
N 140 -160 160 -160 {lab=VREF+}
N 150 170 160 170 {lab=VREF-}
N 300 10 320 10 {lab=VOUT}
N 40 200 40 230 {lab=VSS}
N 40 -210 40 -190 {lab=VDD}
N 40 170 60 170 {lab=VSS}
N 60 170 60 220 {lab=VSS}
N 40 220 60 220 {lab=VSS}
N 40 -160 50 -160 {lab=VDD}
N 50 -200 50 -160 {lab=VDD}
N 40 -200 50 -200 {lab=VDD}
N 190 -240 190 -200 {lab=VDD}
N 190 -100 190 -60 {lab=VSS}
N 190 230 190 270 {lab=VSS}
N 190 90 190 140 {lab=VDD}
C {symbols/nfet_03v3.sym} 190 -40 1 1 {name=M1
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 190 -260 3 1 {name=M2
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 190 290 1 1 {name=M3
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 190 70 3 1 {name=M4
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 20 -160 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 20 170 0 0 {name=M6
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} -120 0 0 0 {name=p1 lab=VIN}
C {ipin.sym} 140 -160 0 0 {name=p2 lab=VREF+}
C {ipin.sym} 150 170 0 0 {name=p3 lab=VREF-}
C {opin.sym} 320 10 0 0 {name=p4 lab=VOUT}
C {ipin.sym} 40 -210 1 0 {name=p5 lab=VDD}
C {ipin.sym} 40 230 3 0 {name=p6 lab=VSS}
C {lab_pin.sym} 190 -200 3 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 190 -100 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 230 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 140 3 0 {name=p10 sig_type=std_logic lab=VDD}
