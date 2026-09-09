v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -50 150 -20 {lab=vout}
N 70 -80 110 -80 {lab=vin}
N 70 -80 70 10 {lab=vin}
N 70 10 110 10 {lab=vin}
N 30 -40 70 -40 {lab=vin}
N 150 -40 220 -40 {lab=vout}
N 150 -150 150 -110 {lab=#net1}
N 150 40 150 80 {lab=GND}
N 150 -80 180 -80 {lab=#net1}
N 180 -130 180 -80 {lab=#net1}
N 150 -130 180 -130 {lab=#net1}
N 180 40 180 70 {lab=GND}
N 150 70 180 70 {lab=GND}
N 150 80 150 110 {lab=GND}
N 150 10 180 10 {lab=GND}
N 180 10 180 40 {lab=GND}
N 150 110 150 150 {lab=GND}
N -170 120 -170 140 {lab=GND}
N -80 120 -80 140 {lab=GND}
N 150 -180 150 -150 {lab=#net1}
N 220 -40 270 -40 {lab=vout}
N -80 30 -80 60 {lab=vin}
N 270 -40 270 50 {lab=vout}
N 270 110 270 150 {lab=GND}
N -170 30 -170 60 {lab=VDD}
N 150 -270 150 -240 {lab=VDD}
C {TR-1umLIB/MN.sym} 110 10 0 0 {name=XM1
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
C {TR-1umLIB/MP.sym} 110 -80 0 0 {name=XM2
model=PMOS
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
C {devices/code.sym} -170 -150 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 330 -110 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all
* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot v(vout) v(vin)
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
C {devices/vsource.sym} -170 90 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vsource.sym} -80 90 0 0 {name=Vin value=5.0 savecurrent=false}
C {devices/gnd.sym} 150 150 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 140 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -80 140 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 150 -210 0 0 {name=vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -330 -330 0 0 {name=p1 sig_type=std_logic lab=xxx}
C {devices/lab_pin.sym} 30 -40 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 270 -40 0 0 {name=p3 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -80 30 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/capa.sym} 270 80 0 0 {name=Cload
m=1
value=10F
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 270 150 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -220 -360 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} -170 30 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 150 -270 0 0 {name=l7 lab=VDD}
