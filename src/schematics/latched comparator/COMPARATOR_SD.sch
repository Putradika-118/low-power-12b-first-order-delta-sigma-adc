v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 140 -40 {}
N 90 -30 210 -30 {lab=#net1}
N 0 -30 0 -0 {lab=#net1}
N 0 -30 90 -30 {lab=#net1}
N 100 -50 100 -30 {lab=#net1}
N 100 140 130 140 {lab=#net2}
N 90 140 100 140 {lab=#net2}
N -0 60 -0 90 {lab=#net3}
N 100 -170 100 -110 {lab=VDD}
N 40 -170 100 -170 {lab=VDD}
N 110 140 110 200 {lab=#net2}
N 110 200 110 240 {lab=#net2}
N 90 250 110 250 {lab=#net2}
N 110 240 110 250 {lab=#net2}
N 110 250 140 250 {lab=#net2}
N -0 90 0 110 {lab=#net3}
N 130 140 170 140 {lab=#net2}
N 40 140 90 140 {lab=#net2}
N 10 250 30 250 {lab=VDD}
N 0 170 -0 420 {lab=#net4}
N 0 420 80 420 {lab=#net4}
N 140 420 220 420 {lab=VOUT}
N 170 140 180 140 {lab=#net2}
N 220 60 220 110 {lab=#net5}
N 220 -30 220 -0 {lab=#net1}
N 210 -30 220 -30 {lab=#net1}
N 220 170 220 420 {lab=VOUT}
N 200 250 210 250 {lab=VSS}
N 60 290 60 330 {lab=CLK}
N 60 330 160 330 {lab=CLK}
N 160 330 170 330 {lab=CLK}
N 170 290 170 330 {lab=CLK}
N 110 330 110 380 {lab=CLK}
N -100 330 60 330 {lab=CLK}
N -100 280 -100 330 {lab=CLK}
N -120 280 -100 280 {lab=CLK}
N 170 330 320 330 {lab=CLK}
N 320 290 320 330 {lab=CLK}
N 320 280 320 290 {lab=CLK}
N 320 280 360 280 {lab=CLK}
N 60 420 60 490 {lab=#net4}
N 170 420 170 470 {lab=VOUT}
N -90 470 170 470 {lab=VOUT}
N -90 430 -90 470 {lab=VOUT}
N -90 420 -90 430 {lab=VOUT}
N -120 420 -90 420 {lab=VOUT}
N -90 140 -90 420 {lab=VOUT}
N -120 140 -90 140 {lab=VOUT}
N 60 490 310 490 {lab=#net4}
N 310 420 310 490 {lab=#net4}
N 310 420 360 420 {lab=#net4}
N 310 140 310 420 {lab=#net4}
N 310 140 360 140 {lab=#net4}
N 400 170 400 250 {lab=#net6}
N 400 310 400 390 {lab=VOUT}
N -160 310 -160 390 {lab=#net4}
N -160 170 -160 250 {lab=#net7}
N -160 350 -40 350 {lab=#net4}
N -40 350 -40 420 {lab=#net4}
N -40 420 -0 420 {lab=#net4}
N 260 360 400 360 {lab=VOUT}
N 260 360 260 420 {lab=VOUT}
N 220 420 260 420 {lab=VOUT}
N 100 -170 390 -170 {lab=VDD}
N 390 -170 400 -170 {lab=VDD}
N 400 -170 400 110 {lab=VDD}
N -160 -170 -160 110 {lab=VDD}
N -160 -170 40 -170 {lab=VDD}
N -60 30 -40 30 {lab=VIN_C}
N 260 30 280 30 {lab=VREF_C}
N -100 210 -100 280 {lab=CLK}
N -250 210 -100 210 {lab=CLK}
N -160 450 -160 530 {lab=VSS}
N -160 530 400 530 {lab=VSS}
N 400 450 400 530 {lab=VSS}
N 110 530 110 550 {lab=VSS}
N 100 -200 100 -170 {lab=VDD}
N 110 550 110 560 {lab=VSS}
N 0 30 30 30 {lab=VDD}
N 190 30 220 30 {lab=VDD}
N -20 140 -0 140 {lab=VDD}
N 220 140 240 140 {lab=VDD}
N 60 230 60 250 {lab=VDD}
N 170 230 170 250 {lab=VSS}
N 110 420 110 440 {lab=VSS}
N -180 140 -160 140 {lab=VDD}
N -180 280 -160 280 {lab=VDD}
N -180 420 -160 420 {lab=VSS}
N 400 280 420 280 {lab=VDD}
N 400 140 420 140 {lab=VDD}
N 400 420 420 420 {lab=VSS}
N 100 -80 120 -80 {lab=VDD}
N 120 -140 120 -80 {lab=VDD}
N 100 -140 120 -140 {lab=VDD}
N 0 -80 60 -80 {lab=#net8}
N -50 -80 0 -80 {lab=#net8}
C {symbols/pfet_03v3.sym} -20 30 0 0 {name=M1
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} 240 30 0 1 {name=M2
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} 200 140 0 0 {name=M3
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} 20 140 0 1 {name=M4
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} 60 270 3 0 {name=M6
L=Ls
W=Wp
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
C {symbols/nfet_03v3.sym} 170 270 3 0 {name=M7
L=Ls
W=Wn
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
C {lab_pin.sym} 210 250 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 20 250 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 110 400 3 1 {name=M8
L=Ls
W=Wn
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
C {symbols/pfet_03v3.sym} -140 140 0 1 {name=M9
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} -140 280 0 1 {name=M10
L=Ls
W=Wp
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
C {symbols/nfet_03v3.sym} -140 420 0 1 {name=M11
L=Ls
W=Wn
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
C {symbols/pfet_03v3.sym} 380 140 0 0 {name=M12
L=Ls
W=Wp
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
C {symbols/pfet_03v3.sym} 380 280 0 0 {name=M13
L=Ls
W=Wp
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
C {symbols/nfet_03v3.sym} 380 420 0 0 {name=M14
L=Ls
W=Wn
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
C {ipin.sym} -60 30 0 0 {name=p1 lab=VIN_C}
C {ipin.sym} 280 30 2 0 {name=p2 lab=VREF_C}
C {ipin.sym} -250 210 0 0 {name=p3 lab=CLK}
C {opin.sym} 400 360 0 0 {name=p4 lab=VOUT}
C {ipin.sym} 100 -200 1 0 {name=p5 lab=VDD}
C {ipin.sym} 110 560 3 0 {name=p6 lab=VSS}
C {lab_pin.sym} 60 230 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 140 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 140 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 140 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 140 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 190 30 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 30 30 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 280 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 280 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 420 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 440 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -180 420 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 230 1 0 {name=p22 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 80 -80 0 0 {name=M5
L=Ls
W=Ws
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
C {lab_pin.sym} -30 -80 3 0 {name=p16 sig_type=std_logic lab=VSS}
