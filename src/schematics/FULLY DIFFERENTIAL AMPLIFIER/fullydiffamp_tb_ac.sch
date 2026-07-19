v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -230 -45 70 -45 {lab=#net1}
N -80 -10 70 -10 {lab=#net2}
N -230 15 -230 25 {lab=GND}
N -80 50 -80 65 {lab=GND}
N 40 10 40 50 {lab=GND}
N 40 10 70 10 {lab=GND}
N -107.5 -87.5 -107.5 -77.5 {lab=GND}
N 30 -65 70 -65 {lab=VDD}
N -107.5 -157.5 -107.5 -147.5 {lab=VDD}
N 110 7.5 110 45 {lab=vbiasn}
N 250 110 250 130 {lab=GND}
N 110 105 110 115 {lab=GND}
N 171.25 -42.5 205 -42.5 {lab=vop}
N 172.5 -18.75 206.25 -18.75 {lab=vom}
N 142.5 50 250 50 {lab=vbiasp}
N 142.5 -12.5 142.5 50 {lab=vbiasp}
C {vsource.sym} -230 -15 0 0 {name=V1 value="dc \{VCM\} ac 0.5 180" savecurrent=false}
C {gnd.sym} -230 25 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 20 0 0 {name=V2 value="dc \{VCM\} ac 0.5 0" savecurrent=false}
C {gnd.sym} -80 65 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 50 0 0 {name=l3 lab=GND}
C {vsource.sym} -107.5 -117.5 0 0 {name=V3 value="dc \{VDDVAL\}" savecurrent=false}
C {gnd.sym} -107.5 -77.5 0 0 {name=l4 lab=GND}
C {vdd.sym} -107.5 -157.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 30 -65 0 0 {name=l6 lab=VDD}
C {vsource.sym} 110 75 0 0 {name=V4 value="dc \{VBIASN_VAL\}" savecurrent=false}
C {vsource.sym} 250 80 0 0 {name=V5 value="dc \{VBIASP_VAL\}" savecurrent=false}
C {gnd.sym} 110 115 0 0 {name=l7 lab=GND}
C {gnd.sym} 250 130 0 0 {name=l8 lab=GND}
C {noconn.sym} 205 -42.5 0 1 {name=l9}
C {noconn.sym} 206.25 -18.75 0 1 {name=l10}
C {devices/code_shown.sym} -1388.75 -793.75 0 0 {name=NGSPICE only_toplevel=true
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
.param Wp=20u
.param Wn=10u
.param Kall=1.25u

.temp 27
.option reltol=1e-4 abstol=1e-12 vntol=1e-6

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
set color0=white
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
* AC ANALYSIS (Bode Plot)
* -----------------------------------------------------
echo ===== AC ANALYSIS =====
ac dec 100 1 10G

let vout_diff = v(Vop)-v(Vom)
let gain_db = db(vout_diff)
let phase_deg = 180/PI * cph(vout_diff)

plot db(vout_diff)
plot phase_deg
* --- automatic spec extraction (like Pretl TB) ---
meas ac dcgain   FIND gain_db   AT=10
meas ac gbw      WHEN gain_db=0 FALL=1
meas ac ph_at_0  FIND phase_deg WHEN gain_db=0 FALL=1
let pm = 180 + ph_at_0
let f3db = dcgain/sqrt(2)
meas ac bw WHEN gain_db=f3db FALL=1
echo ===== AC RESULTS =====
print dcgain
print bw
print gbw
print pm
echo (target: dcgain>=63dB, gbw>=400MHz, pm>=60deg)
write ota_ac.raw gain_db phase_deg vout_diff


* -----------------------------------------------------
* NOISE ANALYSIS
* -----------------------------------------------------
echo ===== INPUT REFERRED NNOISE =====
noise v(Vop, Vom) V1 dec 20 1k 100Meg

* Set plot ke noise1 agar onoise_spectrum bisa disimpan dengan benar
setplot noise1
let inoise_rms = sqrt(integ(inoise_spectrum))
print inoise_rms
plot inoise_rms
plot inoise_spectrum
write ota_noise.raw onoise_spectrum inoise_spectrum

echo ==========================================
echo FINISHED! BUKA .RAW FILE DI GAW
echo ==========================================
.endc
"}
C {lab_wire.sym} 190 -42.5 0 1 {name=p1 sig_type=std_logic lab=vop}
C {lab_wire.sym} 190 -18.75 0 1 {name=p2 sig_type=std_logic lab=vom}
C {lab_wire.sym} 142.5 22.5 0 1 {name=p3 sig_type=std_logic lab=vbiasp}
C {lab_wire.sym} 110 37.5 0 1 {name=p4 sig_type=std_logic lab=vbiasn}
C {low-power-12b-first-order-delta-sigma-adc/src/schematics/FULLY DIFFERENTIAL AMPLIFIER/fullydiffamp.sym} 130 60 0 0 {name=x1}
