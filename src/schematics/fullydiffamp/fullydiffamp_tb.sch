v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 -45 70 -45 {lab=#net1}
N -80 -10 70 -10 {lab=#net2}
N -210 15 -210 25 {lab=GND}
N -80 50 -80 65 {lab=GND}
N 40 10 40 50 {lab=GND}
N 40 10 70 10 {lab=GND}
N -107.5 -87.5 -107.5 -77.5 {lab=GND}
N 30 -65 70 -65 {lab=VDD}
N -107.5 -157.5 -107.5 -147.5 {lab=VDD}
N 110 7.5 110 45 {lab=#net3}
N 180 112.5 180 120 {lab=GND}
N 180 110 180 112.5 {lab=GND}
N 110 105 110 115 {lab=GND}
N 171.25 -42.5 205 -42.5 {lab=#net4}
N 172.5 -18.75 206.25 -18.75 {lab=#net5}
N 142.5 50 180 50 {lab=#net6}
N 142.5 -12.5 142.5 50 {lab=#net6}
C {vsource.sym} -210 -15 0 0 {name=V1 value="dc \{VCM\} ac 0.5 180" savecurrent=false}
C {gnd.sym} -210 25 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 20 0 0 {name=V2 value="dc \{VCM\} ac 0.5 0" savecurrent=false}
C {gnd.sym} -80 65 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 50 0 0 {name=l3 lab=GND}
C {vsource.sym} -107.5 -117.5 0 0 {name=V3 value="dc \{VDDVAL\}" savecurrent=false}
C {gnd.sym} -107.5 -77.5 0 0 {name=l4 lab=GND}
C {vdd.sym} -107.5 -157.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 30 -65 0 0 {name=l6 lab=VDD}
C {vsource.sym} 110 75 0 0 {name=V4 value="dc \{VBIASN_VAL\}" savecurrent=false}
C {vsource.sym} 180 80 0 0 {name=V5 value="dc \{VBIASP_VAL\}" savecurrent=false}
C {gnd.sym} 110 115 0 0 {name=l7 lab=GND}
C {gnd.sym} 180 120 0 0 {name=l8 lab=GND}
C {noconn.sym} 205 -42.5 0 1 {name=l9}
C {noconn.sym} 206.25 -18.75 0 1 {name=l10}
C {A52/fullydiffamp.sym} 130 60 0 0 {name=x1}
C {devices/code_shown.sym} -685 95 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1570 -755 0 0 {name=NGSPICE only_toplevel=true
value="
.param VDDVAL=3.3
.param VCM=1.65
.param VBIASN_VAL=0.89
.param VBIASP_VAL=2.30
.param CL=0.5p
.param GCMFB=1m

.option savecurrents
.option reltol=1e-4
.option abstol=1e-12
.option vntol=1e-6
.option temp=27

* Output load capacitors
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}

* Weak leakage path for convergence
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T

* Ideal common-mode feedback helper
* Pakai ini kalau diff amp belum punya real CMFB.
* Nanti untuk final design, ideal CMFB ini sebaiknya diganti real CMFB.
Bcmop Vop 0 I = \{GCMFB * (((v(Vop) + v(Vom))/2) - VCM)\}
Bcmom Vom 0 I = \{GCMFB * (((v(Vop) + v(Vom))/2) - VCM)\}

.control
save all

op

echo ================================
echo DC Operating Point Summary
echo ================================

print v(VDD)
print v(Vp) v(Vm)
print v(Vbiasn) v(Vbiasp)
print v(Vop) v(Vom)

let vocm = (v(Vop)+v(Vom))/2
let vod  = v(Vop)-v(Vom)

print vocm
print vod

echo ================================
echo Supply Current and Power
echo ================================

print i(V3)

let pwr = -v(VDD)*i(V3)
print pwr

echo ================================
echo Device Operating Point
echo Use show all to inspect gm, gds, vds, vdsat
echo ================================

show all

.endc

"}
