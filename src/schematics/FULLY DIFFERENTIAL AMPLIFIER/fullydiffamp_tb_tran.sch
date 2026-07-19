v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -45 210 -45 {lab=vop}
N 60 -10 210 -10 {lab=vom}
N 180 10 180 50 {lab=GND}
N 180 10 210 10 {lab=GND}
N 32.5 -87.5 32.5 -77.5 {lab=GND}
N 170 -65 210 -65 {lab=VDD}
N 32.5 -157.5 32.5 -147.5 {lab=VDD}
N 250 7.5 250 45 {lab=vbiasn}
N 350 110 400 110 {lab=GND}
N 250 105 250 115 {lab=GND}
N 311.25 -42.5 345 -42.5 {lab=vop}
N 312.5 -18.75 346.25 -18.75 {lab=vom}
N 282.5 50 400 50 {lab=vbiasp}
N 282.5 -12.5 282.5 50 {lab=vbiasp}
N 590 105 590 115 {lab=GND}
N 590 260 590 275 {lab=GND}
N 60 175 60 185 {lab=GND}
N -200 165 -200 185 {lab=GND}
N 60 -10 60 -5 {lab=vom}
N 60 -5 60 25 {lab=vom}
N 60 85 60 115 {lab=vom}
N -200 45 -200 105 {lab=vop}
N 60 25 60 85 {lab=vom}
N -150 -45 -70 -45 {lab=vop}
N -200 -45 -150 -45 {lab=vop}
N -200 -45 -200 45 {lab=vop}
N 346.25 -18.75 540 -20 {lab=vom}
N 540 -20 540 265 {lab=vom}
N 40 265 540 265 {lab=vom}
N 40 -10 40 265 {lab=vom}
N 40 -10 60 -10 {lab=vom}
N 345 -42.5 422.5 -42.5 {lab=vop}
N 422.5 -112.5 422.5 -42.5 {lab=vop}
N 135 -112.5 422.5 -112.5 {lab=vop}
N 135 -112.5 135 -45 {lab=vop}
C {gnd.sym} 180 50 0 0 {name=l3 lab=GND}
C {vsource.sym} 32.5 -117.5 0 0 {name=V3 value="dc \{VDDVAL\}" savecurrent=false}
C {gnd.sym} 32.5 -77.5 0 0 {name=l4 lab=GND}
C {vdd.sym} 32.5 -157.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 170 -65 0 0 {name=l6 lab=VDD}
C {vsource.sym} 250 75 0 0 {name=V4 value="dc \{VBIASN_VAL\}" savecurrent=false}
C {vsource.sym} 400 80 0 0 {name=V5 value="dc \{VBIASP_VAL\}" savecurrent=false}
C {gnd.sym} 250 115 0 0 {name=l7 lab=GND}
C {gnd.sym} 350 110 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} -1328.75 -798.75 0 0 {name=NGSPICE only_toplevel=true
value="
* =====================================================
* 1. GF180 MODEL
* =====================================================
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

* =====================================================
* 2. PARAMETERS
* =====================================================
.param VDDVAL=3.3
.param VCM=1.65
.param VBIASN_VAL=0.65
.param VBIASP_VAL=2.5
.param CL=0.5p
.param Wp=12u
.param Wn=6u
.param Kall=1.28u
.option reltol=1e-4 abstol=1e-12 vntol=1e-6 temp=27

* =====================================================
* 3. LOAD & LEAKAGE
* =====================================================
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T

* =====================================================
* 4. IDEAL CMFB
* =====================================================
.param Gcm = 1m
Bcm_sense vcm_sns 0 V=\{ (v(Vop)+v(Vom))/2 \}
Gcmfb_p  0 Vop  vcm_sns vcm_ref  \{Gcm\}
Gcmfb_m  0 Vom  vcm_sns vcm_ref  \{Gcm\}
Vcm_ref  vcm_ref 0  DC \{VCM\}

* =====================================================
* 5. CONTROL BLOCK (ANALYSIS)
* =====================================================
.control
et color0=white
set color1=black
set color2=red     $ Mengubah warna garis gelombang 2
set color3=blue    $ Mengubah warna garis gelombang 1
set xbrushwidth=2  $ Menebalkan garis gelombang agar jelas untuk laporan
* Wajib menyimpan parameter internal sebelum analisis jalan
save all
save @m.x1.xm7.m0[id] @m.x1.xm7.m0[gm] @m.x1.xm7.m0[gds] @m.x1.xm7.m0[vgs] @m.x1.xm7.m0[vds] @m.x1.xm7.m0[vdsat]

echo ==========================================
echo OTA VERIFICATION START
echo ==========================================

* -----------------------------------------------------
* OP ANALYSIS (DC Bias & Sizing Validation)
* -----------------------------------------------------
echo ===== DC OPERATING POINT =====
op

* Kalkulasi Variabel Makro
let vocm = (v(Vop)+v(Vom))/2
let vod = v(Vop)-v(Vom)

echo ====================================================
echo   AUDIT OPERATING POINT TRANSISTOR XM1 - XM14 (X2)  
echo ====================================================
  
echo --- TRANSISTOR XM1 - XM5 ---
show m.x1.xm1.m0  : vds vdsat gm gds id
show m.x1.xm2.m0  : vds vdsat gm gds id
show m.x1.xm3.m0  : vds vdsat gm gds id
show m.x1.xm4.m0  : vds vdsat gm gds id
show m.x1.xm5.m0  : vds vdsat gm gds id
  
echo --- TRANSISTOR XM6 - XM10 ---
show m.x1.xm6.m0  : vds vdsat gm gds id
show m.x1.xm7.m0  : vds vdsat gm gds id
show m.x1.xm8.m0  : vds vdsat gm gds id
show m.x1.xm9.m0  : vds vdsat gm gds id
show m.x1.xm10.m0 : vds vdsat gm gds id
  
echo --- TRANSISTOR XM11 - XM14 ---
show m.x1.xm11.m0 : vds vdsat gm gds id
show m.x1.xm12.m0 : vds vdsat gm gds id
show m.x1.xm13.m0 : vds vdsat gm gds id
show m.x1.xm14.m0 : vds vdsat gm gds id

echo ====================================================

* Ekstraksi Parameter Transistor Input (XM7)
let id_m7 = @m.x1.xm7.m0[id]
let gm_m7 = @m.x1.xm7.m0[gm]
let gds_m7 = @m.x1.xm7.m0[gds]
let vgs_m7 = @m.x1.xm7.m0[vgs]
let vds_m7 = @m.x1.xm7.m0[vds]
let vdsat_m7 = @m.x1.xm7.m0[vdsat]
let gm_id = gm_m7 / id_m7
let intrinsic_gain = gm_m7 / gds_m7

echo --- Output Voltages ---
print v(VDD) v(Vbiasp) v(Vbiasn) v(Vop) v(Vom) vocm vod
let pwr = -i(V3)*v(VDD)
print pwr

echo --- XM7 Parameters (Input Pair) ---
print id_m7 gm_m7 gds_m7 vgs_m7 vds_m7 vdsat_m7 gm_id intrinsic_gain

* Simpan khusus hasil DC agar raw file rapi
write ota_op.raw v(Vop) v(Vom) vocm vod id_m7 gm_m7 gds_m7 vgs_m7 vds_m7 vdsat_m7 gm_id intrinsic_gain


* -----------------------------------------------------
* TRANSIENT ANALYSIS
* -----------------------------------------------------
echo ===== TRANSIENT =====
tran 10n 1m
let vout_diff_tran = v(Vop)-v(Vom)
plot vout_diff_tran
plot v(Vop) v(Vom)

write ota_tran.raw v(Vop) v(Vom) vout_diff_tran
echo ==========================================
echo FINISHED! BUKA .RAW FILE DI GAW
echo ==========================================
.endc
"}
C {lab_wire.sym} 330 -42.5 0 1 {name=p1 sig_type=std_logic lab=vop}
C {lab_wire.sym} 330 -18.75 0 1 {name=p2 sig_type=std_logic lab=vom}
C {lab_wire.sym} 282.5 22.5 0 1 {name=p3 sig_type=std_logic lab=vbiasp}
C {lab_wire.sym} 250 37.5 0 1 {name=p4 sig_type=std_logic lab=vbiasn}
C {vsource.sym} 590 75 0 0 {name=V1 value="dc \{VCM\} ac 0.5 180" savecurrent=false}
C {gnd.sym} 590 115 0 0 {name=l1 lab=GND}
C {vsource.sym} 590 230 0 0 {name=V2 value="dc \{VCM\} ac 0.5 0" savecurrent=false}
C {gnd.sym} 590 275 0 0 {name=l2 lab=GND}
C {gnd.sym} 60 185 0 0 {name=l11 lab=GND}
C {vsource.sym} -200 135 0 0 {name=V7 value="PULSE(1.70 1.60 40n 10n 10n 80n 160n)" savecurrent=false}
C {gnd.sym} -200 185 0 0 {name=l12 lab=GND
value="PULSE(20u -20u 0 1n 1n 100u 200u)"}
C {vsource.sym} 60 145 0 0 {name=V6 value="PULSE(1.60 1.70 40n 10n 10n 80n 160n)" savecurrent=false}
C {low-power-12b-first-order-delta-sigma-adc/src/schematics/FULLY DIFFERENTIAL AMPLIFIER/fullydiffamp.sym} 270 60 0 0 {name=x1}
