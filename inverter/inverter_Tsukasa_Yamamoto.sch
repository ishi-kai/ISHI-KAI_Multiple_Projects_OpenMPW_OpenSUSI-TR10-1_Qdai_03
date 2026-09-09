v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -1060 -170 -980 {lab=VDD}
N -170 -920 -90 -920 {lab=Q}
N -90 -920 -90 -860 {lab=Q}
N -170 -860 -90 -860 {lab=Q}
N -90 -890 -0 -890 {lab=Q}
N -300 -950 -210 -950 {lab=A}
N -300 -950 -300 -830 {lab=A}
N -300 -830 -210 -830 {lab=A}
N -410 -890 -300 -890 {lab=A}
N -170 -800 -170 -730 {lab=VSS}
N -170 -950 -150 -950 {lab=VDD}
N -170 -1010 -150 -1010 {lab=VDD}
N -150 -1010 -150 -950 {lab=VDD}
N -170 -830 -140 -830 {lab=VSS}
N -140 -830 -140 -790 {lab=VSS}
N -170 -790 -140 -790 {lab=VSS}
C {TR-1umLIB/MP.sym} -210 -950 0 0 {name=XM1
model=PMOS
w=8u
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
C {devices/iopin.sym} -170 -1060 0 0 {name=p2 lab=VDD

}
C {devices/ipin.sym} -410 -890 0 0 {name=p1 lab=A}
C {devices/opin.sym} 0 -890 0 0 {name=p3 lab=Q
}
C {devices/iopin.sym} -170 -730 0 0 {name=p4 lab=VSS}
