v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -70 30 20 {lab=A}
N 30 30 60 30 {lab=A}
N 30 -80 30 -60 {lab=A}
N 30 -80 60 -80 {lab=A}
N 100 -0 100 10 {lab=Q}
N 100 -270 100 -220 {lab=VDD}
N 100 30 130 30 {lab=vss}
N 130 30 130 110 {lab=vss}
N 100 170 100 210 {lab=vss}
N 100 100 130 100 {lab=vss}
N 100 -200 100 -110 {lab=VDD}
N 100 -80 150 -80 {lab=VDD}
N 150 -170 150 -80 {lab=VDD}
N 100 -170 150 -170 {lab=VDD}
N 100 -10 100 -0 {lab=Q}
N 30 20 30 30 {lab=A}
N 100 -50 100 0 {lab=Q}
N -110 -20 30 -20 {lab=A}
N 100 -30 100 -20 {lab=Q}
N 100 -30 210 -30 {lab=Q}
N 210 -30 290 -30 {lab=Q}
N 100 -290 100 -270 {lab=VDD}
N 100 -220 100 -190 {lab=VDD}
N 100 180 120 180 {lab=vss}
N 100 190 100 200 {lab=vss}
N 100 60 100 170 {lab=vss}
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
C {devices/ipin.sym} -110 -20 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 100 -290 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 290 -30 0 0 {name=p3 lab=Q}
C {devices/iopin.sym} 120 180 0 0 {name=p4 lab=vss}
C {TR-1umLIB/MN.sym} 60 30 0 0 {name=XM2
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
