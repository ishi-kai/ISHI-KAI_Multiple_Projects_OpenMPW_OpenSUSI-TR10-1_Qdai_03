v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -120 180 -90 {lab=VDD}
N 180 -30 180 30 {lab=Q}
N 100 -60 140 -60 {lab=A}
N 100 60 140 60 {lab=A}
N 50 0 100 -0 {lab=A}
N 100 -60 100 -20 {lab=A}
N 100 -20 100 60 {lab=A}
N 180 -0 260 0 {lab=Q}
N 180 -60 250 -60 {lab=VDD}
N 250 -90 250 -60 {lab=VDD}
N 180 -90 250 -90 {lab=VDD}
N 180 60 250 60 {lab=GND}
N 180 90 180 150 {lab=GND}
N 250 60 250 90 {lab=GND}
N 180 90 250 90 {lab=GND}
N 180 -150 180 -120 {lab=VDD}
C {TR-1umLIB/MP.sym} 140 -60 0 0 {name=XM1
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
C {devices/ipin.sym} 50 0 0 0 {name=p1 lab=A}
C {devices/opin.sym} 260 0 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 180 -150 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 180 150 0 0 {name=p4 lab=VSS}
