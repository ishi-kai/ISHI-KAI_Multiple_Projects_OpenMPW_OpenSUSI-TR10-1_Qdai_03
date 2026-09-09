v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 20 -0 50 {lab=vout}
N -70 -10 -40 -10 {lab=vin}
N -70 -10 -70 80 {lab=vin}
N -70 80 -40 80 {lab=vin}
N 0 110 -0 150 {lab=0}
N -110 40 -70 40 {lab=vin}
N -290 120 -290 160 {lab=0}
N -220 120 -220 160 {lab=0}
N -220 40 -220 60 {lab=vin}
N 0 -40 10 -40 {lab=#net1}
N 10 -40 10 -10 {lab=#net1}
N 0 -10 10 -10 {lab=#net1}
N 0 80 10 80 {lab=0}
N 10 80 10 110 {lab=0}
N 0 110 10 110 {lab=0}
N 80 40 80 70 {lab=vout}
N 80 130 80 150 {lab=0}
N 0 150 80 150 {lab=0}
N 0 40 80 40 {lab=vout}
N 0 -150 -0 -130 {lab=VDD}
N 0 -70 0 -40 {lab=#net1}
C {TR-1umLIB/MP.sym} -40 -10 0 0 {name=XM1
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
C {TR-1umLIB/MN.sym} -40 80 0 0 {name=XM2
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
C {devices/code.sym} -270 -160 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/gnd.sym} -220 160 0 0 {name=l1 lab=0}
C {devices/gnd.sym} -290 160 0 0 {name=l2 lab=0}
C {devices/vdd.sym} -290 60 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -290 90 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vsource.sym} -220 90 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -220 40 1 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 250 -200 0 0 {name=spice only_toplevel=false value=".option savecurrent 
.control 
save all 

* DC analysis (I/O curve)
dc Vin 0 5.0 0.01
plot v(vout) v(vin)
plot i(vd)
wrdata ./inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
C {devices/code_shown.sym} 250 60 0 0 {name=measure only_toplevel=false value=".measure dc Vin when v(vout)=2.5"}
C {devices/vdd.sym} 0 -150 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 0 150 0 0 {name=l5 lab=0}
C {devices/lab_pin.sym} 80 40 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/capa.sym} 80 100 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -110 40 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/ammeter.sym} 0 -100 0 0 {name=Vd savecurrent=true spice_ignore=0}
