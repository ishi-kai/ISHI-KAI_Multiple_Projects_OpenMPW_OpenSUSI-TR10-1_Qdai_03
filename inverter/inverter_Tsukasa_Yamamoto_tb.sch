v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -1060 -170 -980 {lab=#net1}
N -170 -920 -90 -920 {lab=vout}
N -90 -920 -90 -860 {lab=vout}
N -170 -860 -90 -860 {lab=vout}
N -90 -890 -0 -890 {lab=vout}
N -300 -950 -210 -950 {lab=vin}
N -300 -950 -300 -830 {lab=vin}
N -300 -830 -210 -830 {lab=vin}
N -410 -890 -300 -890 {lab=vin}
N -170 -800 -170 -730 {lab=GND}
N -170 -950 -150 -950 {lab=#net1}
N -170 -1010 -150 -1010 {lab=#net1}
N -150 -1010 -150 -950 {lab=#net1}
N -170 -830 -140 -830 {lab=GND}
N -140 -830 -140 -770 {lab=GND}
N -170 -770 -140 -770 {lab=GND}
N -0 -890 0 -820 {lab=vout}
N -530 -770 -530 -700 {lab=GND}
N -480 -570 -480 -500 {lab=#net2}
N -630 -880 -630 -830 {lab=VDD}
N -530 -880 -530 -830 {lab=vin}
N -630 -770 -630 -700 {lab=GND}
N 0 -760 0 -690 {lab=GND}
N -170 -1140 -170 -1120 {lab=VDD}
C {TR-1umLIB/MP.sym} -210 -950 0 0 {name=XM1
model=PMOS
w=15u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} -210 -830 0 0 {name=XM2
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
C {devices/ipin.sym} -410 -890 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 0 -890 0 0 {name=vout lab=vout
}
C {devices/code.sym} -430 -1030 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/vsource.sym} -630 -800 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vsource.sym} -530 -800 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/gnd.sym} -530 -700 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -630 -700 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -630 -880 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} -170 -1140 0 0 {name=l4 lab=VDD}
C {devices/capa.sym} 0 -790 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 0 -690 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -170 -730 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -530 -880 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/ammeter.sym} -170 -1090 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 90 -1000 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endc"}
