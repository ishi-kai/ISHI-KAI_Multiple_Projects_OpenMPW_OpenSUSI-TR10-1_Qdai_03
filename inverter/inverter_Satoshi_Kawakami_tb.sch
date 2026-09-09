v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -150 100 -80 {lab=#net1}
N 30 -50 60 -50 {lab=vin}
N 30 -50 30 60 {lab=vin}
N 100 -20 100 30 {lab=vout}
N 100 10 180 10 {lab=vout}
N 100 30 100 40 {lab=vout}
N 30 60 30 70 {lab=vin}
N 30 70 60 70 {lab=vin}
N 100 100 100 170 {lab=GND}
N -40 10 30 10 {lab=vin}
N 100 -50 130 -50 {lab=#net1}
N 130 -110 130 -50 {lab=#net1}
N 100 -110 130 -110 {lab=#net1}
N 100 70 130 70 {lab=GND}
N 130 70 130 130 {lab=GND}
N 100 130 130 130 {lab=GND}
N 100 -230 100 -220 {lab=VDD}
N 100 -160 100 -150 {lab=#net1}
N 100 170 100 180 {lab=GND}
N -250 60 -250 80 {lab=VDD}
N -250 140 -250 170 {lab=GND}
N -190 140 -190 170 {lab=GND}
N -190 40 -190 80 {lab=vin}
N -70 10 -50 10 {lab=vin}
N -50 10 -40 10 {lab=vin}
N 180 10 200 10 {lab=vout}
N 200 130 200 180 {lab=GND}
N 200 10 200 70 {lab=vout}
C {TR-1umLIB/MP.sym} 60 -50 0 0 {name=XM1
model=PMOS
w=8.2u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 60 70 0 0 {name=XM2
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
C {devices/code.sym} -260 -150 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 290 -230 0 0 {name=spice only_toplevel=false value="
.option savecurrent
.control
save all

* DC analysis (I/O cureve)
dc vin 0 5 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc
"}
C {devices/code_shown.sym} 290 50 0 0 {name=measure only_toplevel=false value="
.measure dc Vinv when v(vout)=2.5
"}
C {devices/vdd.sym} 100 -230 0 0 {name=l1 lab=VDD}
C {devices/ammeter.sym} 100 -190 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 100 180 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -250 60 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -250 170 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -190 170 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -250 110 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vsource.sym} -190 110 0 0 {name=vin value=5 savecurrent=false}
C {devices/lab_pin.sym} -190 40 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -70 10 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 200 10 0 0 {name=p1 sig_type=std_logic lab=vout
}
C {devices/capa.sym} 200 100 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 200 180 0 0 {name=l4 lab=GND}
