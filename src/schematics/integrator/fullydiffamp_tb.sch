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
N 180 20 180 50 {lab=#net4}
N 145 20 180 20 {lab=#net4}
N 142.5 20 145 20 {lab=#net4}
N 142.5 -12.5 142.5 20 {lab=#net4}
N 180 112.5 180 120 {lab=GND}
N 180 110 180 112.5 {lab=GND}
N 110 105 110 115 {lab=GND}
N 171.25 -42.5 205 -42.5 {lab=#net5}
N 172.5 -18.75 206.25 -18.75 {lab=#net6}
C {low-power-12b-first-order-delta-sigma-adc/fullydiffamp.sym} 130 60 0 0 {name=x1}
C {vsource.sym} -210 -15 0 0 {name=V1 value="dc 0.6 ac 1 180" savecurrent=false}
C {gnd.sym} -210 25 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 20 0 0 {name=V2 value="dc 0.6 ac 1 0" savecurrent=false}
C {gnd.sym} -80 65 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 50 0 0 {name=l3 lab=GND}
C {vsource.sym} -107.5 -117.5 0 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} -107.5 -77.5 0 0 {name=l4 lab=GND}
C {vdd.sym} -107.5 -157.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 30 -65 0 0 {name=l6 lab=VDD}
C {vsource.sym} 110 75 0 0 {name=V4 value=1.2 savecurrent=false}
C {vsource.sym} 180 80 0 0 {name=V5 value=1.2 savecurrent=false}
C {gnd.sym} 110 115 0 0 {name=l7 lab=GND}
C {gnd.sym} 180 120 0 0 {name=l8 lab=GND}
C {noconn.sym} 205 -42.5 0 1 {name=l9}
C {noconn.sym} 206.25 -18.75 0 1 {name=l10}
