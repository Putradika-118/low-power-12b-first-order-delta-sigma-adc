v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -580 160 -580 {lab=#net1}
N 90 -640 90 -580 {lab=#net1}
N 50 -640 90 -640 {lab=#net1}
N 50 -640 50 -610 {lab=#net1}
N 50 -550 50 -470 {lab=VSS}
N 380 -590 380 -560 {lab=#net2}
N 380 -500 380 -450 {lab=VSS}
N 450 -760 450 -690 {lab=#net3}
N 310 -760 310 -690 {lab=#net4}
N 370 -730 450 -730 {lab=#net3}
N 370 -790 370 -730 {lab=#net3}
N 350 -790 370 -790 {lab=#net3}
N 390 -790 410 -790 {lab=#net4}
N 390 -790 390 -740 {lab=#net4}
N 310 -740 390 -740 {lab=#net4}
N 50 -670 50 -640 {lab=#net1}
N 160 -740 310 -740 {lab=#net4}
N 90 -730 90 -700 {lab=#net4}
N 90 -740 160 -740 {lab=#net4}
N 90 -740 90 -730 {lab=#net4}
N 90 -790 90 -740 {lab=#net4}
N 90 -790 110 -790 {lab=#net4}
N 150 -760 150 -740 {lab=#net4}
N 50 -820 50 -730 {lab=VDD}
N 450 -870 450 -820 {lab=VDD}
N 310 -870 310 -820 {lab=VDD}
N 150 -870 150 -820 {lab=VDD}
N 50 -870 50 -820 {lab=VDD}
N 450 -730 600 -730 {lab=#net3}
N 600 -760 600 -730 {lab=#net3}
N 640 -790 660 -790 {lab=#net3}
N 660 -790 660 -730 {lab=#net3}
N 600 -730 660 -730 {lab=#net3}
N 600 -870 600 -820 {lab=VDD}
N 710 -870 710 -730 {lab=VDD}
N 660 -700 670 -700 {lab=#net3}
N 660 -730 660 -700 {lab=#net3}
N 710 -670 710 -610 {lab=#net5}
N 710 -550 710 -450 {lab=VSS}
N 50 -450 700 -450 {lab=VSS}
N 700 -450 710 -450 {lab=VSS}
N 160 -580 670 -580 {lab=#net1}
N 310 -630 310 -610 {lab=#net2}
N 310 -610 380 -610 {lab=#net2}
N 380 -610 380 -590 {lab=#net2}
N 380 -610 450 -610 {lab=#net2}
N 450 -630 450 -610 {lab=#net2}
N 50 -870 710 -870 {lab=VDD}
N 380 -900 380 -870 {lab=VDD}
N 380 -450 380 -420 {lab=VSS}
N 870 -670 870 -610 {lab=VOUTF}
N 780 -700 830 -700 {lab=#net5}
N 780 -700 780 -580 {lab=#net5}
N 780 -580 830 -580 {lab=#net5}
N 710 -640 780 -640 {lab=#net5}
N 870 -550 870 -440 {lab=FLOOR}
N 870 -870 870 -730 {lab=VDD}
N 710 -870 870 -870 {lab=VDD}
N 290 -530 340 -530 {lab=VBIAS}
N 250 -660 270 -660 {lab=VIN}
N 490 -660 510 -660 {lab=VREF}
N 870 -640 980 -640 {lab=VOUTF}
N 950 -640 950 -580 {lab=VOUTF}
N 950 -520 950 -440 {lab=FLOOR}
N 870 -440 950 -440 {lab=FLOOR}
N 910 -440 910 -420 {lab=FLOOR}
N 980 -640 1020 -640 {lab=VOUTF}
N 50 -470 50 -450 {lab=VSS}
C {symbols/nfet_03v3.sym} 70 -580 0 1 {name=M14
L=3u
W=3u
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
C {symbols/nfet_03v3.sym} 360 -530 0 0 {name=M1
L=3u
W=3u
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
C {symbols/nfet_03v3.sym} 290 -660 0 0 {name=M2
L=3u
W=3u
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
C {symbols/nfet_03v3.sym} 470 -660 0 1 {name=M3
L=3u
W=3u
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
C {symbols/pfet_03v3.sym} 330 -790 0 1 {name=M12
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 430 -790 0 0 {name=M11
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 70 -700 0 1 {name=M4
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 130 -790 0 0 {name=M5
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 620 -790 0 1 {name=M6
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 690 -700 0 0 {name=M7
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 690 -580 0 0 {name=M8
L=3u
W=3u
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
C {iopin.sym} 380 -900 2 0 {name=p9 lab=VDD}
C {iopin.sym} 380 -420 1 0 {name=p15 lab=VSS}
C {symbols/pfet_03v3.sym} 850 -700 0 0 {name=M9
L=3u
W=36u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 850 -580 0 0 {name=M10
L=3u
W=3u
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
C {iopin.sym} 910 -420 1 0 {name=p1 lab=FLOOR}
C {iopin.sym} 290 -530 0 1 {name=p2 lab=VBIAS}
C {iopin.sym} 250 -660 0 1 {name=p3 lab=VIN}
C {iopin.sym} 510 -660 2 1 {name=p4 lab=VREF}
C {symbols/cap_mim_1f0fF.sym} 950 -550 0 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} 20 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {iopin.sym} 1020 -640 0 0 {name=p5 lab=VOUTF}
