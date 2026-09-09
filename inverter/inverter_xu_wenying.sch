v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 20 -0 50 {lab=Q}
N -70 -10 -40 -10 {lab=A}
N -70 -10 -70 80 {lab=A}
N -70 80 -40 80 {lab=A}
N 0 110 -0 150 {lab=GND}
N -0 -80 0 -40 {lab=VDD}
N -110 40 -70 40 {lab=A}
N -0 40 100 40 {lab=Q}
N 0 -40 30 -40 {lab=VDD}
N 30 -40 30 -10 {lab=VDD}
N 0 -10 30 -10 {lab=VDD}
N 0 80 20 80 {lab=GND}
N 20 80 20 110 {lab=GND}
N 0 110 20 110 {lab=GND}
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
C {devices/iopin.sym} 0 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -110 40 0 0 {name=p2 lab=A}
C {devices/opin.sym} 100 40 0 0 {name=p3 lab=Q}
C {devices/iopin.sym} 0 150 0 0 {name=p4 lab=GND}
