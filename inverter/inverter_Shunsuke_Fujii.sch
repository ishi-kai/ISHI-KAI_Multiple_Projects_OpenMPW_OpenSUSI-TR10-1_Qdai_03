v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -130 40 -100 {lab=VDD}
N -30 -70 0 -70 {lab=A}
N -30 -70 -30 30 {lab=A}
N -30 30 -0 30 {lab=A}
N -60 -20 -30 -20 {lab=A}
N 40 -40 40 -0 {lab=xxx}
N 40 60 40 100 {lab=VSS}
N 40 -20 140 -20 {lab=xxx}
N 40 -70 70 -70 {lab=VDD}
N 70 -110 70 -70 {lab=VDD}
N 40 -110 70 -110 {lab=VDD}
N 40 30 70 30 {lab=VSS}
N 70 30 70 80 {lab=VSS}
N 40 80 70 80 {lab=VSS}
C {TR-1umLIB/MP.sym} 0 -70 0 0 {name=XM1
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
C {devices/ipin.sym} -60 -20 0 0 {name=p1 lab=A}
C {devices/opin.sym} 140 -20 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 40 -130 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 40 100 0 0 {name=p4 lab=VSS}
