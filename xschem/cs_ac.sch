v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 810 -490 1610 -90 {flags=graph
y1=3.8
y2=7.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out db(20)"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 310 -220 310 -200 {
lab=GND}
N 160 -270 160 -260 {
lab=inp}
N 160 -270 230 -270 {
lab=inp}
N 160 -410 310 -410 {
lab=#net1}
N 310 -410 310 -320 {
lab=#net1}
N 390 -270 460 -270 {
lab=out}
N 460 -270 460 -260 {
lab=out}
C {cs.sym} 170 -170 0 0 {name=x1}
C {devices/vsource.sym} 160 -230 0 0 {name=V1 value="0.9 ac 1"}
C {devices/vsource.sym} 160 -380 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 310 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 160 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 160 -350 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 460 -230 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 460 -200 0 0 {name=l4 lab=GND}
C {devices/code.sym} 620 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 490 -630 0 0 {name=s1 only_toplevel=false value=
"
.control
  save all
  op
*  write cs_ac.raw
*  set appendwrite
  
  ac dec 100 1 100e6
  remzerovec
  write cs_ac.raw
*  plot vdb(out) vp(out)
.endc
"
  }
C {devices/lab_wire.sym} 200 -270 0 0 {name=p1 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 440 -270 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/launcher.sym} 880 -40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cs_ac.raw ac"
}
