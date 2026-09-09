v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 30 60 30 {lab=vin}
N 30 -80 60 -80 {lab=vin}
N 100 -0 100 10 {lab=vout}
N 100 30 130 30 {lab=GND}
N 100 70 100 190 {lab=GND}
N 100 -80 150 -80 {lab=#net1}
N 150 -170 150 -80 {lab=#net1}
N 100 -170 150 -170 {lab=#net1}
N 450 180 450 240 {lab=GND}
N 540 180 540 230 {lab=GND}
N 540 50 540 120 {lab=vin}
N 450 40 450 120 {lab=VDD}
N 100 190 100 260 {lab=GND}
N 220 200 220 250 {lab=GND}
N 100 60 100 70 {lab=GND}
N 100 -210 100 -110 {lab=#net1}
N 100 -330 100 -270 {lab=VDD}
N 450 10 450 40 {lab=VDD}
N 100 -50 100 -0 {lab=vout}
N 100 -30 220 -30 {lab=vout}
N 220 -30 220 140 {lab=vout}
N 130 30 130 90 {lab=GND}
N 100 90 130 90 {lab=GND}
N 30 -80 30 30 {lab=vin}
N -140 -40 30 -40 {lab=vin}
N 540 230 540 240 {lab=GND}
C {TR-1umLIB/MP.sym} 60 -80 0 0 {name=XM1
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
C {TR-1umLIB/MNE.sym} 60 30 0 0 {name=XM2
model=MNE
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
C {devices/gnd.sym} 450 240 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 540 240 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 450 150 0 0 {name=V1 value=5.0 savecurrent=false}
C {devices/vsource.sym} 540 150 0 0 {name=V2 value=5.0 savecurrent=false}
C {devices/gnd.sym} 100 260 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 220 250 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 220 170 0 0 {name=Cload
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 730 -170 0 0 {name=spice only_toplevel=false value=".option savecurrnt
.control
save all

* DC analysis (I/0 curve)
dc vin 0 5.0 0.01
plot vount vin
plot i(vd)
wrdata  ~/inverter_td.txt v(vount)
write inverter_td.raw
.endc"





}
C {devices/code.sym} 620 -350 0 0 {name=TR-1um-MODELS only_toplevel=false value=blabla}
C {devices/ammeter.sym} 100 -240 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 740 120 0 0 {name=measure only_toplevel=false value="measure dc vinv when v(vount)=2.5"





}
C {devices/lab_pin.sym} -140 -40 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/vdd.sym} 450 30 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 100 -330 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 220 -30 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 540 50 0 0 {name=p2 sig_type=std_logic lab=vin}
