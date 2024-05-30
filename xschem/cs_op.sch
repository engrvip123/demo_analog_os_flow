v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 310 -220 310 -200 {
lab=GND}
N 160 -270 160 -260 {
lab=inp}
N 160 -270 230 -270 {
lab=inp}
N 160 -410 310 -410 {
lab=inp}
N 310 -410 310 -320 {
lab=inp}
N 390 -270 460 -270 {
lab=out}
N 460 -270 460 -260 {
lab=out}
C {cs.sym} 170 -170 0 0 {name=x1}
C {devices/vsource.sym} 160 -230 0 0 {name=V1 value=0.9}
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
C {devices/code_shown.sym} 610 -410 0 0 {name=s1 only_toplevel=false value=
"
.control
  save all
  op
  write cs_op.raw
  print v(inp) v(out)
.endc
"
  }
C {devices/lab_wire.sym} 200 -270 0 0 {name=p1 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 440 -270 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/launcher.sym} 360 -40 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 310 -360 0 0 {name=p4 sig_type=std_logic lab=vdd}
