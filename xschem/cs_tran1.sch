v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 790 -520 1590 -120 {flags=graph
y1=0.0068
y2=0.91
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
out
@m.xm1.msky130_fd_pr__nfet_01v8[gm]"
color="7 8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 50 -260 50 -250 {
lab=inp}
N 50 -260 120 -260 {
lab=inp}
N 50 -520 200 -520 {
lab=vdd}
N 200 -520 200 -430 {
lab=vdd}
N 270 -330 340 -330 {
lab=out}
N 340 -330 340 -320 {
lab=out}
N 200 -360 200 -290 {
lab=out}
N 200 -460 200 -420 {
lab=vdd}
N 160 -390 180 -390 {
lab=vss}
N 200 -230 200 -200 {
lab=GND}
N 200 -260 280 -260 {
lab=GND}
N 280 -260 280 -220 {
lab=GND}
N 200 -220 280 -220 {
lab=GND}
N 120 -260 160 -260 {
lab=inp}
N 200 -330 270 -330 {
lab=out}
C {devices/vsource.sym} 50 -220 0 0 {name=V1 value="sin(0.9 10m 1e6 0)"}
C {devices/vsource.sym} 50 -490 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 200 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 50 -190 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 50 -460 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 340 -290 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 340 -260 0 0 {name=l4 lab=GND}
C {devices/code.sym} 620 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 420 -830 0 0 {name=s1 only_toplevel=false value=
"
.control
  save all
  save @m.xm1.msky130_fd_pr__nfet_01v8[vgs]
  save @m.xm1.msky130_fd_pr__nfet_01v8[vds]
  save @m.xm1.msky130_fd_pr__nfet_01v8[vth]
  save @m.xm1.msky130_fd_pr__nfet_01v8[gm]

  op
  write cs_tran1.raw
  set appendwrite
  
  tran 0.01e-6  10e-6
  write cs_tran1.raw
.endc
"
  }
C {devices/lab_wire.sym} 90 -260 0 0 {name=p1 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 320 -330 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/launcher.sym} 850 -40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cs_tran1.raw tran"
}
C {devices/lab_wire.sym} 200 -480 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 180 -260 0 0 {name=M1
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
C {devices/lab_wire.sym} 160 -390 0 0 {name=p8 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 200 -390 0 0 {name=R2
L=1.43
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {devices/ngspice_get_value.sym} 190 -150 0 0 {name=r1 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 190 -120 0 0 {name=r4 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 190 -90 0 0 {name=r5 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/launcher.sym} 200 -50 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
