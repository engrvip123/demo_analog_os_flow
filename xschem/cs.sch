v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -320 -250 -250 {
lab=out}
N -250 -420 -250 -380 {
lab=vdd}
N -290 -350 -270 -350 {
lab=vss}
N -250 -190 -250 -160 {
lab=vss}
N -250 -220 -170 -220 {
lab=vss}
N -170 -220 -170 -180 {
lab=vss}
N -250 -180 -170 -180 {
lab=vss}
N -330 -220 -290 -220 {
lab=inp}
N -250 -290 -180 -290 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} -270 -220 0 0 {name=M1
L=0.30
W=35
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -330 -220 0 0 {name=p1 lab=inp}
C {devices/opin.sym} -180 -290 0 0 {name=p2 lab=out}
C {devices/iopin.sym} -250 -420 3 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -250 -160 1 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} -290 -350 0 0 {name=p5 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -250 -350 0 0 {name=R2
L=1.43
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
