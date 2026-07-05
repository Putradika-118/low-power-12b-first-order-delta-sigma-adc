v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -590 360 -410 {lab=VREF+}
N 420 -590 420 -410 {lab=VOUT}
N 360 -260 360 -80 {lab=VREF-}
N 420 -260 420 -80 {lab=VOUT}
N 390 -370 390 -300 {lab=#net1}
N 240 -480 240 -210 {lab=#net1}
N 240 -340 390 -340 {lab=#net1}
N 140 -510 200 -510 {lab=VIN}
N 140 -180 200 -180 {lab=VIN}
N 140 -510 140 -180 {lab=VIN}
N 390 -650 390 -630 {lab=VIN}
N 140 -650 390 -650 {lab=VIN}
N 140 -650 140 -510 {lab=VIN}
N 140 -180 140 -30 {lab=VIN}
N 140 -30 390 -30 {lab=VIN}
N 390 -40 390 -30 {lab=VIN}
N 420 -500 500 -500 {lab=VOUT}
N 420 -180 490 -180 {lab=VOUT}
N 500 -500 500 -180 {lab=VOUT}
N 490 -180 500 -180 {lab=VOUT}
N 80 -350 140 -350 {lab=VIN}
N 340 -510 360 -510 {lab=VREF+}
N 350 -180 360 -180 {lab=VREF-}
N 500 -340 520 -340 {lab=VOUT}
N 240 -150 240 -120 {lab=VSS}
N 240 -560 240 -540 {lab=VDD}
N 240 -180 260 -180 {lab=VSS}
N 260 -180 260 -130 {lab=VSS}
N 240 -130 260 -130 {lab=VSS}
N 240 -510 250 -510 {lab=VDD}
N 250 -550 250 -510 {lab=VDD}
N 240 -550 250 -550 {lab=VDD}
N 390 -590 390 -550 {lab=VDD}
N 390 -450 390 -410 {lab=VSS}
N 390 -120 390 -80 {lab=VSS}
N 390 -260 390 -210 {lab=VDD}
C {symbols/nfet_03v3.sym} 390 -390 1 1 {name=M1
L=0.3u
W=6u
nf=2
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
C {symbols/pfet_03v3.sym} 390 -610 3 1 {name=M2
L=0.3u
W=6u
nf=2
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
C {symbols/nfet_03v3.sym} 390 -60 1 1 {name=M3
L=0.3u
W=6u
nf=2
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
C {symbols/pfet_03v3.sym} 390 -280 3 1 {name=M4
L=0.3u
W=6u
nf=2
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
C {symbols/pfet_03v3.sym} 220 -510 0 0 {name=M5
L=0.3u
W=3u
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
C {symbols/nfet_03v3.sym} 220 -180 0 0 {name=M6
L=0.3u
W=3u
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
C {ipin.sym} 80 -350 0 0 {name=p1 lab=VIN}
C {ipin.sym} 340 -510 0 0 {name=p2 lab=VREF+}
C {ipin.sym} 350 -180 0 0 {name=p3 lab=VREF-}
C {opin.sym} 520 -340 0 0 {name=p4 lab=VOUT}
C {ipin.sym} 240 -560 1 0 {name=p5 lab=VDD}
C {ipin.sym} 240 -120 3 0 {name=p6 lab=VSS}
C {lab_pin.sym} 390 -550 3 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -450 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -120 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -210 3 0 {name=p10 sig_type=std_logic lab=VDD}
