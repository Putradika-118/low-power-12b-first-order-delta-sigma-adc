v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
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
C {devices/code_shown.sym} -1308.75 66.25 0 0 {name=NGSPICE only_toplevel=true
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
.param Gcm = 1m
.temp 27
.option reltol=1e-4 abstol=1e-12 vntol=1e-6

* LOAD,LEAKAGE,CMFB
* =====================================================
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T
Bcm_sense vcm_sns 0 V=\{ (v(Vop)+v(Vom))/2 \}
Gcmfb_p  0 Vop  vcm_sns vcm_ref  \{Gcm\}
Gcmfb_m  0 Vom  vcm_sns vcm_ref  \{Gcm\}
Vcm_ref  vcm_ref 0  DC \{VCM\}

* SIMULATION
* =====================================================
.control
save all
save @m.x1.xm7.m0[id] @m.x1.xm7.m0[gm] @m.x1.xm7.m0[gds] @m.x1.xm7.m0[vgs] @m.x1.xm7.m0[vds] @m.x1.xm7.m0[vdsat]
set color0 =white
* OP ANALYSIS (DC Bias & Sizing Validation)
echo ===== DC OPERATING POINT =====
op
let vocm = (v(Vop)+v(Vom))/2
let vod = v(Vop)-v(Vom)

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
let gm_id = gm_m7 / id_m7
let intrinsic_gain = gm_m7 / gds_m7

echo --- Output Voltages & Input Pair Parameters ---
print v(VDD) v(Vbiasp) v(Vbiasn) v(Vop) v(Vom) vocm vod
let pwr = -i(V3)*v(VDD)
print pwr
print gm_id intrinsic_gain
write ota_op.raw v(Vop) v(Vom) vocm vod id_m7 gm_m7 gds_m7 vgs_m7 vds_m7 vdsat_m7 gm_id intrinsic_gain

* AC ANALYSIS (Bode Plot)
ac dec 100 1 10G

let vout_diff = v(Vop)-v(Vom)
let gain_db = db(vout_diff)
let phase_deg = 180/PI * cph(vout_diff)
plot db(vout_diff)
plot phase_deg
meas ac dcgain   FIND gain_db   AT=10
meas ac gbw      WHEN gain_db=0 FALL=1
meas ac ph_at_0  FIND phase_deg WHEN gain_db=0 FALL=1
let pm = 180 + ph_at_0
let f3db = dcgain-3
meas ac bw WHEN gain_db=f3db FALL=1

echo ===== AC RESULTS =====
print dcgain
print bw
print gbw
print pm
echo (target: dcgain>=65dB, gbw>=100MHz, pm>=60deg)
write ota_ac.raw gain_db phase_deg vout_diff

* NOISE ANALYSIS
* -----------------------------------------------------
echo ===== INPUT REFERRED NNOISE =====
noise v(Vop, Vom) V1 dec 20 1k 100Meg

setplot noise1
let inoise_rms = sqrt(integ(inoise_spectrum))
print inoise_rms
plot inoise_rms
plot inoise_spectrum
write ota_noise.raw onoise_spectrum inoise_spectrum
.endc
"}
C {lab_wire.sym} 190 -42.5 0 1 {name=p1 sig_type=std_logic lab=vop}
C {lab_wire.sym} 190 -18.75 0 1 {name=p2 sig_type=std_logic lab=vom}
C {lab_wire.sym} 142.5 22.5 0 1 {name=p3 sig_type=std_logic lab=vbiasp}
C {lab_wire.sym} 110 37.5 0 1 {name=p4 sig_type=std_logic lab=vbiasn}
C {fully_differential_amplifier/fullydiffamp.sym} 130 60 0 0 {name=x1}
C {code_shown.sym} 400 -20 0 0 {name=MODELS only_toplevel=false value="
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice"}
