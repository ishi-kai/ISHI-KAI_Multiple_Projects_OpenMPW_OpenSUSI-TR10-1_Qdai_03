v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -140 330 -120 {lab=Q}
N 330 -110 330 -80 {lab=Q}
N 270 -170 290 -170 {lab=A}
N 270 -50 290 -50 {lab=A}
N 270 -160 270 -50 {lab=A}
N 230 -110 270 -110 {lab=A}
N 330 -110 370 -110 {lab=Q}
N 330 -230 330 -200 {lab=Vdd}
N 330 -20 330 -10 {lab=Vss}
N 330 -10 330 0 {lab=Vss}
N 330 -50 350 -50 {lab=Vss}
N 330 -20 350 -20 {lab=Vss}
N 350 -50 350 -20 {lab=Vss}
N 330 -170 350 -170 {lab=Vdd}
N 350 -200 350 -170 {lab=Vdd}
N 330 -200 350 -200 {lab=Vdd}
N 330 -120 330 -110 {lab=Q}
N 270 -170 270 -160 {lab=A}
C {TR-1umLIB/MP.sym} 290 -170 0 0 {name=XM1
model=PMOS
w=9.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 290 -50 0 0 {name=XM2
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
C {devices/ipin.sym} 230 -110 0 0 {name=p1 lab=A}
C {devices/opin.sym} 370 -110 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 330 -230 0 0 {name=p3 lab=Vdd}
C {devices/iopin.sym} 330 0 0 1 {name=p4 lab=Vss}
