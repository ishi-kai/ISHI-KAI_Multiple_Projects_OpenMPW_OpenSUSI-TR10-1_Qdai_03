v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -120 180 -90 {lab=#net1}
N 100 -60 140 -60 {lab=vin}
N 100 60 140 60 {lab=vin}
N 50 0 100 -0 {lab=vin}
N 100 -60 100 -20 {lab=vin}
N 100 -20 100 60 {lab=vin}
N 180 -60 250 -60 {lab=#net1}
N 250 -90 250 -60 {lab=#net1}
N 180 60 250 60 {lab=GND}
N 180 90 180 150 {lab=GND}
N 250 60 250 90 {lab=GND}
N 180 -150 180 -120 {lab=#net1}
N 180 -190 180 -150 {lab=#net1}
N 180 -280 180 -250 {lab=VDD}
N 180 160 180 220 {lab=GND}
N 180 150 180 160 {lab=GND}
N 180 -30 180 30 {lab=vout}
N 180 -0 310 -0 {lab=vout}
N 310 0 310 90 {lab=vout}
N 310 150 310 220 {lab=GND}
N 0 60 0 140 {lab=vin}
N 0 190 0 250 {lab=GND}
N -70 190 -70 250 {lab=GND}
N -70 60 -70 130 {lab=VDD}
N 180 -120 250 -120 {lab=#net1}
N 250 -120 250 -90 {lab=#net1}
N 180 130 250 130 {lab=GND}
N 250 90 250 130 {lab=GND}
C {TR-1umLIB/MP.sym} 140 -60 0 0 {name=XM1
model=PMOS
w=8.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 140 60 0 0 {name=XM2
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
C {devices/code.sym} -110 -210 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 320 -380 0 0 {name=spice
only_toplevel=false
value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
C {devices/vsource.sym} 0 160 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/gnd.sym} 180 220 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 310 220 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 180 -220 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 50 0 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/capa.sym} 310 120 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 180 -280 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -70 160 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/lab_pin.sym} 310 0 0 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 0 60 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 0 250 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -70 250 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -70 60 0 0 {name=l6 lab=VDD}
C {devices/code_shown.sym} 330 -120 0 0 {name=measure only_toplevel=false value=".measure dc Vinv when v(vout)=2.5"}
