v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -50 150 -20 {lab=Q}
N 70 -80 110 -80 {lab=xxx}
N 70 -80 70 10 {lab=xxx}
N 70 10 110 10 {lab=xxx}
N 30 -40 70 -40 {lab=xxx}
N 150 -40 220 -40 {lab=Q}
N 150 -150 150 -110 {lab=VDD}
N 150 40 150 80 {lab=VSS}
N 150 -80 180 -80 {lab=VDD}
N 180 -130 180 -80 {lab=VDD}
N 150 -130 180 -130 {lab=VDD}
N 180 40 180 70 {lab=VSS}
N 150 70 180 70 {lab=VSS}
N 150 80 150 110 {lab=VSS}
N 150 10 180 10 {lab=VSS}
N 180 10 180 40 {lab=VSS}
C {TR-1umLIB/MN.sym} 110 10 0 0 {name=XM1
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
C {TR-1umLIB/MP.sym} 110 -80 0 0 {name=XM2
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
C {devices/iopin.sym} 150 -150 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 30 -40 0 0 {name=p2 lab=A}
C {devices/opin.sym} 220 -40 0 0 {name=p3 lab=Q}
C {devices/iopin.sym} 150 110 0 0 {name=p4 lab=VSS}
