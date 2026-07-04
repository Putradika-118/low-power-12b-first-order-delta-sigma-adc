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
N 180 110 180 120 {lab=GND}
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
C {devices/code_shown.sym} -685 95 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1510 -655 0 0 {name=NGSPICE only_toplevel=true
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
.param VBIASN_VAL=0.89
.param VBIASP_VAL=2.30
.param CL=0.5p
.param GCMFB=1m

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
Bcmop Vop 0 I=\{GCMFB*(((v(Vop)+v(Vom))/2)-VCM)\}
Bcmom Vom 0 I=\{GCMFB*(((v(Vop)+v(Vom))/2)-VCM)\}

* =====================================================
* 5. CONTROL BLOCK (ANALYSIS)
* =====================================================
.control
* Wajib menyimpan parameter internal sebelum analisis jalan
save all
save @m.xm7.m0[id] @m.xm7.m0[gm] @m.xm7.m0[gds] @m.xm7.m0[vgs] @m.xm7.m0[vds] @m.xm7.m0[vdsat]

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

* Ekstraksi Parameter Transistor Input (XM7)
let id_m7 = @m.xm7.m0[id]
let gm_m7 = @m.xm7.m0[gm]
let gds_m7 = @m.xm7.m0[gds]
let vgs_m7 = @m.xm7.m0[vgs]
let vds_m7 = @m.xm7.m0[vds]
let vdsat_m7 = @m.xm7.m0[vdsat]
let gm_id = gm_m7 / id_m7
let intrinsic_gain = gm_m7 / gds_m7

echo --- Output Voltages ---
print v(VDD) v(Vbiasp) v(Vbiasn) v(Vop) v(Vom) vocm vod

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
let phase_deg = 180/PI * ph(vout_diff)

write ota_ac.raw gain_db phase_deg vout_diff

* -----------------------------------------------------
* TRANSIENT ANALYSIS
* -----------------------------------------------------
echo ===== TRANSIENT =====
tran 0.5n 5u

let vout_diff_tran = v(Vop)-v(Vom)
write ota_tran.raw v(Vop) v(Vom) vout_diff_tran

* -----------------------------------------------------
* NOISE ANALYSIS
* -----------------------------------------------------
echo ===== INPUT REFERRED NOISE =====
noise v(Vop, Vom) V1 dec 20 1k 100Meg

* Set plot ke noise1 agar onoise_spectrum bisa disimpan dengan benar
setplot noise1
write ota_noise.raw onoise_spectrum inoise_spectrum

echo ==========================================
echo FINISHED! BUKA .RAW FILE DI GAW
echo ==========================================
.endc
"}
C {low-power-12b-first-order-delta-sigma-adc/src/schematics/fullydiffamp/fullydiffamp.sym} 130 60 0 0 {name=x1}
