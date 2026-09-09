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
N 10 -30 20 -30 {lab=A}
N 0 -30 10 -30 {lab=A}
N 0 -30 0 -20 {lab=A}
N 0 -20 -0 -10 {lab=A}
N -0 -10 -0 -0 {lab=A}
N 0 0 0 10 {lab=A}
N 0 10 0 20 {lab=A}
N 0 20 0 30 {lab=A}
N 0 30 0 40 {lab=A}
N 0 40 -0 50 {lab=A}
N -0 50 -0 60 {lab=A}
N -0 60 -0 70 {lab=A}
N -0 70 -0 80 {lab=A}
N 0 80 10 80 {lab=A}
N 10 80 20 80 {lab=A}
N 60 -0 70 -0 {lab=Q}
N 70 -0 80 -0 {lab=Q}
N 80 -0 90 -0 {lab=Q}
N 90 -0 100 -0 {lab=Q}
N 100 -0 110 -0 {lab=Q}
N 110 -0 120 -0 {lab=Q}
N 120 0 130 0 {lab=Q}
N 130 0 130 10 {lab=Q}
N 130 10 130 20 {lab=Q}
N 130 20 130 30 {lab=Q}
N 130 30 130 40 {lab=Q}
N 130 40 130 50 {lab=Q}
N 120 50 130 50 {lab=Q}
N 60 50 70 50 {lab=Q}
N 70 50 80 50 {lab=Q}
N 80 50 90 50 {lab=Q}
N 90 50 100 50 {lab=Q}
N 100 50 110 50 {lab=Q}
N 110 50 120 50 {lab=Q}
N 160 10 170 10 {lab=Q}
N 150 10 160 10 {lab=Q}
N 140 10 150 10 {lab=Q}
N 130 10 140 10 {lab=Q}
N 170 10 180 10 {lab=Q}
N -80 10 -70 10 {lab=A}
N -70 10 -60 10 {lab=A}
N -60 10 -50 10 {lab=A}
N -50 10 -40 10 {lab=A}
N -40 10 -30 10 {lab=A}
N -30 10 -20 10 {lab=A}
N -20 10 -10 10 {lab=A}
N -10 10 -0 10 {lab=A}
N 60 110 60 150 {lab=VSS}
N 60 80 110 80 {lab=VSS}
N 110 80 110 130 {lab=VSS}
N 60 130 110 130 {lab=VSS}
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
C {devices/opin.sym} 180 10 0 0 {name=p2 lab=Q}
C {devices/ipin.sym} -80 10 0 0 {name=p4 lab=A}
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
C {devices/iopin.sym} 60 150 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 60 -90 3 0 {name=p3 lab=VDD}
