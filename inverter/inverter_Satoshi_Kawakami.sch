v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -150 100 -80 {lab=VDD}
N 30 -50 60 -50 {lab=A}
N 30 -50 30 60 {lab=A}
N 100 -20 100 30 {lab=Q}
N 100 10 180 10 {lab=Q}
N 100 30 100 40 {lab=Q}
N 30 60 30 70 {lab=A}
N 30 70 60 70 {lab=A}
N 100 100 100 170 {lab=VSS}
N -40 10 30 10 {lab=A}
N 100 -50 130 -50 {lab=VDD}
N 130 -110 130 -50 {lab=VDD}
N 100 -110 130 -110 {lab=VDD}
N 100 70 130 70 {lab=VSS}
N 130 70 130 130 {lab=VSS}
N 100 130 130 130 {lab=VSS}
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
C {devices/ipin.sym} -40 10 0 0 {name=p1 lab=A}
C {devices/opin.sym} 180 10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 100 -150 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 100 170 0 0 {name=p4 lab=VSS}
