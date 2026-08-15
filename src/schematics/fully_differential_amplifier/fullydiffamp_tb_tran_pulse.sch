v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -10 100 30 {lab=GND}
N 100 -10 130 -10 {lab=GND}
N 512.5 -47.5 512.5 -37.5 {lab=GND}
N 90 -85 130 -85 {lab=VDD}
N 512.5 -117.5 512.5 -107.5 {lab=VDD}
N 170 -12.5 170 25 {lab=vbiasn}
N 170 85 170 95 {lab=GND}
N 231.25 -62.5 265 -62.5 {lab=vop}
N 232.5 -38.75 266.25 -38.75 {lab=vom}
N 202.5 30 320 30 {lab=vbiasp}
N 202.5 -32.5 202.5 30 {lab=vbiasp}
N -330 145 -330 165 {lab=GND}
N -65 65 -65 90 {lab=Vin+}
N -330 25 -330 85 {lab=Vin-}
N -65 -10 -65 65 {lab=Vin+}
N -280 -65 -230 -65 {lab=Vin-}
N -330 -65 -330 25 {lab=Vin-}
N 265 -62.5 342.5 -62.5 {lab=vop}
N -330 -65 -280 -65 {lab=Vin-}
N -65 150 -65 170 {lab=GND}
N 266.25 -38.75 470 -40 {lab=vom}
N -65 -10 -20 -10 {lab=Vin+}
N -230 -65 -195 -65 {lab=Vin-}
N -135 -65 130 -65 {lab=Vin-}
N 70 -30 70 -10 {lab=Vin+}
N 70 -30 130 -30 {lab=Vin+}
N 40 -10 70 -10 {lab=Vin+}
N 320 90 320 100 {lab=GND}
N -195 -65 -135 -65 {lab=Vin-}
N -20.15625 -10 40 -10 {lab=Vin+}
C {gnd.sym} 100 30 0 0 {name=l3 lab=GND}
C {vsource.sym} 512.5 -77.5 0 0 {name=V3 value="dc \{VDDVAL\}" savecurrent=false}
C {gnd.sym} 512.5 -37.5 0 0 {name=l4 lab=GND}
C {vdd.sym} 512.5 -117.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 90 -85 0 0 {name=l6 lab=VDD}
C {vsource.sym} 170 55 0 0 {name=V4 value="dc \{VBIASN_VAL\}" savecurrent=false}
C {vsource.sym} 320 60 0 0 {name=V5 value="dc \{VBIASP_VAL\}" savecurrent=false}
C {gnd.sym} 170 95 0 0 {name=l7 lab=GND}
C {gnd.sym} 320 100 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} -1075.9375 -721.25 0 0 {name=NGSPICE only_toplevel=true
value="
*PARAMETERS
* =====================================================
.param VDDVAL=3.3
.param VCM=1.65
.param VBIASN_VAL=0.65
.param VBIASP_VAL=2.5
.param CL=30f
.param Wp1=10u Wp2=1u  Wp3=0.5u 
.param Wn1=10u Wn2=10u Wn3=5u   Wn4=0.5u
.param Lp1=5u  Lp2=2u  Lp3=5u
.param Ln1=5u  Ln2=2u  Ln3=0.35u   Ln4=15u
.param Gcm = 10u
.option reltol=1e-4 abstol=1e-12 vntol=1e-6 temp=27

* LOAD, LEAKAGE, CMFB
* =====================================================
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T
Bcm_sense vcm_sns 0 V=\{ (v(Vop)+v(Vom))/2 \}
Gcmfb_p  Vop 0  vcm_sns vcm_ref  \{Gcm\}
Gcmfb_m  Vom 0  vcm_sns vcm_ref  \{Gcm\}
Vcm_ref  vcm_ref 0  DC \{VCM\}

* SIMULATION
* =====================================================
.control
save all
set color0=white

* OP ANALYSIS (DC Bias & Sizing Validation)
echo ===== DC OPERATING POINT =====
op
ac dec 100 1 100Meg
let vid=v(Vin+)-v(Vin-)
let vod=v(Vop)-v(Vom)
let av= vod/vid
plot db(av)
show all

* Kalkulasi Variabel Makro
let vocm = (v(Vop)+v(Vom))/2
let vod = v(Vop)-v(Vom)


* TRANSIENT ANALYSIS
echo ===== TRANSIENT =====
tran 100n 3m
let vout_diff_tran = v(Vop)-v(Vom)
plot v(Vin-) v(Vin+)
plot v(Vin+)-v(Vin-)
plot vout_diff_tran
plot v(Vop) v(Vom)
let inst_pwr = -3.3 * i(V3)
meas tran avg_power AVG inst_pwr from=0 to=3m

* --- swing & final value ---
meas tran vout_max MAX vout_diff_tran
meas tran vout_min MIN vout_diff_tran
let vout_swing = vout_max - vout_min
meas tran vfinal FIND vout_diff_tran AT=2.4u

* --- slew rate (10%-90% pada transisi naik pertama) ---
let v10 = vout_min + 0.1*vout_swing
let v90 = vout_min + 0.9*vout_swing
meas tran t10 WHEN vout_diff_tran=v10 RISE=1
meas tran t90 WHEN vout_diff_tran=v90 RISE=1

let slew_rate = vout_swing/(t90-t10)
* --- settling time ke dalam 1% dari nilai akhir ---
let vset_hi = vfinal + 0.01*vout_swing
meas tran tset WHEN vout_diff_tran=vset_hi RISE=1
print vout_swing slew_rate tset
write ota_tran.raw v(Vop) v(Vom) vout_diff_tran
.endc
"}
C {lab_wire.sym} 250 -62.5 0 1 {name=p1 sig_type=std_logic lab=vop}
C {lab_wire.sym} 250 -38.75 0 1 {name=p2 sig_type=std_logic lab=vom}
C {lab_wire.sym} 202.5 2.5 0 1 {name=p3 sig_type=std_logic lab=vbiasp}
C {lab_wire.sym} 170 17.5 0 1 {name=p4 sig_type=std_logic lab=vbiasn}
C {gnd.sym} -65 170 0 0 {name=l11 lab=GND}
C {vsource.sym} -330 115 0 0 {name=V7 value="PULSE(1.65002 1.64998 0 1n 1n 250u 500u)" savecurrent=false}
C {gnd.sym} -330 165 0 0 {name=l12 lab=GND
value="PULSE(20u -20u 0 1n 1n 100u 200u)"}
C {vsource.sym} -65 120 0 0 {name=V6 value="PULSE(1.64998 1.65002 0 1n 1n 250u 500u)" savecurrent=false}
C {fully_differential_amplifier/fullydiffamp.sym} 190 40 0 0 {name=x1}
C {lab_pin.sym} -330 70 0 0 {name=p5 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -65 80 0 0 {name=p6 sig_type=std_logic lab=Vin+}
C {code_shown.sym} -490 -470 0 0 {name=MODELS only_toplevel=false value=" 
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
"}
C {noconn.sym} 342.5 -62.5 3 0 {name=l1}
C {noconn.sym} 470 -40 1 0 {name=l2}
