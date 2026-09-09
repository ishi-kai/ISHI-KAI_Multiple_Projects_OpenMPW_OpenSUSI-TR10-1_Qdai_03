v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -130 40 -100 {lab=#net1}
N -30 -70 0 -70 {lab=vin}
N -30 -70 -30 30 {lab=vin}
N -30 30 -0 30 {lab=vin}
N -60 -20 -30 -20 {lab=vin}
N 40 -40 40 -0 {lab=vout}
N 40 60 40 100 {lab=GND}
N 40 -70 70 -70 {lab=#net1}
N 70 -110 70 -70 {lab=#net1}
N 40 -110 70 -110 {lab=#net1}
N 40 30 70 30 {lab=GND}
N 70 30 70 80 {lab=GND}
N 40 80 70 80 {lab=GND}
N -190 100 -190 130 {lab=GND}
N -260 100 -260 130 {lab=GND}
N -190 -10 -190 40 {lab=vin}
N 40 -20 170 -20 {lab=vout}
N 170 -20 170 60 {lab=vout}
N -260 -0 -260 40 {lab=VDD}
C {TR-1umLIB/MP.sym} 0 -70 0 0 {name=XM1
model=PMOS
w=6u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 0 30 0 0 {name=XM2
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/code.sym} -280 -170 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 220 -100 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot v(vout) v(vin)
plot i(vd)
wrdata ./inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
C {devices/vsource.sym} -190 70 0 0 {name=vin value=5 savecurrent=false}
C {devices/gnd.sym} -190 130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -260 130 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -260 70 0 0 {name=VDD value=5 savecurrent=false}
C {devices/capa.sym} 170 90 0 0 {name=Cload
m=1
value=10F
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -60 -20 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -190 -10 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 40 100 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 170 120 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 40 -160 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/vdd.sym} 40 -190 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -260 0 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 170 -20 2 0 {name=p2 sig_type=std_logic lab=vout}
