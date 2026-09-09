v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -140 330 -120 {lab=vout}
N 330 -110 330 -80 {lab=vout}
N 270 -170 290 -170 {lab=vin}
N 270 -50 290 -50 {lab=vin}
N 270 -160 270 -50 {lab=vin}
N 230 -110 270 -110 {lab=vin}
N 330 -110 370 -110 {lab=vout}
N 330 -230 330 -200 {lab=#net1}
N 330 -20 330 -10 {lab=GND}
N 330 -10 330 0 {lab=GND}
N 330 -50 350 -50 {lab=GND}
N 330 -20 350 -20 {lab=GND}
N 350 -50 350 -20 {lab=GND}
N 330 -170 350 -170 {lab=#net1}
N 350 -200 350 -170 {lab=#net1}
N 330 -200 350 -200 {lab=#net1}
N 330 -120 330 -110 {lab=vout}
N 270 -170 270 -160 {lab=vin}
N 370 -110 440 -110 {lab=vout}
N 440 -110 440 -90 {lab=vout}
N 70 0 70 20 {lab=GND}
N 130 -0 130 20 {lab=GND}
N 130 -80 130 -60 {lab=vin}
N 70 -80 70 -60 {lab=VDD}
N 440 -90 440 -70 {lab=vout}
N 440 -10 440 10 {lab=GND}
N 330 0 330 20 {lab=GND}
N 440 10 440 20 {lab=GND}
C {TR-1umLIB/MP.sym} 290 -170 0 0 {name=XM1
model=PMOS
w=9.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 290 -50 0 0 {name=XM2
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
C {devices/lab_pin.sym} 230 -110 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 440 -110 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 330 20 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 330 -290 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 130 20 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 70 20 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 70 -30 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vsource.sym} 130 -30 0 0 {name=Vin value=5 savecurrent=false}
C {devices/vdd.sym} 70 -80 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 130 -80 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/code.sym} 30 -270 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/capa.sym} 440 -40 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/ammeter.sym} 330 -260 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 610 -220 0 0 {name=spice only_toplevel=false 
value=".option savecurrent
.control
save all

* DC analysis
dc vin 0 5 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc
"}
C {devices/gnd.sym} 440 20 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 600 30 0 0 {name=measure only_toplevel=false value=".measure dc Vin when v(vout)=2.5
"}
