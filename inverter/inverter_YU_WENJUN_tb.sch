v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -90 60 -80 {lab=#net1}
N 60 -80 60 -70 {lab=#net1}
N 60 -70 60 -60 {lab=#net1}
N 60 -30 70 -30 {lab=#net1}
N 70 -30 80 -30 {lab=#net1}
N 80 -30 90 -30 {lab=#net1}
N 90 -30 100 -30 {lab=#net1}
N 100 -40 100 -30 {lab=#net1}
N 100 -50 100 -40 {lab=#net1}
N 100 -60 100 -50 {lab=#net1}
N 100 -70 100 -60 {lab=#net1}
N 90 -70 100 -70 {lab=#net1}
N 80 -70 90 -70 {lab=#net1}
N 70 -70 80 -70 {lab=#net1}
N 60 -70 70 -70 {lab=#net1}
N 60 -70 60 -60 {lab=#net1}
N 10 -30 20 -30 {lab=vin}
N 0 -30 10 -30 {lab=vin}
N 0 -30 0 -20 {lab=vin}
N 0 -20 -0 -10 {lab=vin}
N -0 -10 -0 -0 {lab=vin}
N 0 0 0 10 {lab=vin}
N 0 10 0 20 {lab=vin}
N 0 20 0 30 {lab=vin}
N 0 30 0 40 {lab=vin}
N 0 40 -0 50 {lab=vin}
N -0 50 -0 60 {lab=vin}
N -0 60 -0 70 {lab=vin}
N -0 70 -0 80 {lab=vin}
N 0 80 10 80 {lab=vin}
N 10 80 20 80 {lab=vin}
N 60 -0 70 -0 {lab=vout}
N 70 -0 80 -0 {lab=vout}
N 80 -0 90 -0 {lab=vout}
N 90 -0 100 -0 {lab=vout}
N 100 -0 110 -0 {lab=vout}
N 110 -0 120 -0 {lab=vout}
N 120 0 130 0 {lab=vout}
N 130 0 130 10 {lab=vout}
N 130 10 130 20 {lab=vout}
N 130 20 130 30 {lab=vout}
N 130 30 130 40 {lab=vout}
N 130 40 130 50 {lab=vout}
N 120 50 130 50 {lab=vout}
N 60 50 70 50 {lab=vout}
N 70 50 80 50 {lab=vout}
N 80 50 90 50 {lab=vout}
N 90 50 100 50 {lab=vout}
N 100 50 110 50 {lab=vout}
N 110 50 120 50 {lab=vout}
N 160 10 170 10 {lab=vout}
N 150 10 160 10 {lab=vout}
N 140 10 150 10 {lab=vout}
N 130 10 140 10 {lab=vout}
N 170 10 180 10 {lab=vout}
N -80 10 -70 10 {lab=vin}
N -70 10 -60 10 {lab=vin}
N -60 10 -50 10 {lab=vin}
N -50 10 -40 10 {lab=vin}
N -40 10 -30 10 {lab=vin}
N -30 10 -20 10 {lab=vin}
N -20 10 -10 10 {lab=vin}
N -10 10 -0 10 {lab=vin}
N 60 110 60 150 {lab=GND}
N 60 80 110 80 {lab=GND}
N 110 80 110 130 {lab=GND}
N 60 130 110 130 {lab=GND}
N -340 -30 -340 50 {lab=VDD}
N -340 110 -340 140 {lab=GND}
N -260 110 -260 140 {lab=GND}
N -260 0 -260 50 {lab=vin}
N 180 10 180 20 {lab=vout}
N 180 20 180 30 {lab=vout}
N 180 30 180 40 {lab=vout}
N 180 100 180 130 {lab=GND}
C {TR-1umLIB/MP.sym} 20 -30 0 0 {name=XM1
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
C {devices/vdd.sym} 60 -150 0 0 {name=l1 lab=VDD}
C {devices/code.sym} -390 -250 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 290 -210 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
C {devices/vsource.sym} -340 80 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -340 -30 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -340 140 0 0 {name=l4 lab=GND
}
C {devices/gnd.sym} -260 140 0 0 {name=l5 lab=GND
}
C {devices/vsource.sym} -260 80 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/ammeter.sym} 60 -120 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -80 10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -260 0 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 180 10 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/capa.sym} 180 70 0 0 {name=Cloud
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 60 150 0 0 {name=l6 lab=GND
}
C {devices/gnd.sym} 180 130 0 0 {name=l7 lab=GND
}
C {devices/code_shown.sym} 280 40 0 0 {name=measure only_toplevel=false value=".measure dc Vinv when v(vout)=2.5"}
C {TR-1umLIB/MN.sym} 20 80 0 0 {name=XM3
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
