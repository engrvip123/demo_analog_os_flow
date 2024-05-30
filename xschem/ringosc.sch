v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 -970 1130 -570 {flags=graph
y1=-0.039
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=c
color=11
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 330 -1390 1130 -990 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=b
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 325 -1830 1125 -1430 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 140 -460 140 -390 {
lab=#net1}
N 730 -460 730 -350 {
lab=#net2}
N 410 -520 410 -390 {
lab=A}
N 700 -520 700 -390 {
lab=B}
N 1040 -500 1040 -390 {
lab=C}
N 1040 -520 1040 -500 {
lab=C}
N 20 -350 20 -310 {
lab=clk}
N 360 -350 380 -350 {
lab=#net1}
N 380 -460 380 -350 {
lab=#net1}
N 330 -460 380 -460 {
lab=#net1}
N 140 -460 330 -460 {
lab=#net1}
N 360 -370 410 -370 {
lab=A}
N 410 -390 410 -370 {
lab=A}
N 480 -460 570 -460 {
lab=#net2}
N 700 -390 700 -370 {
lab=B}
N 20 -370 180 -370 {
lab=clk}
N 20 -370 20 -350 {
lab=clk}
N 140 -350 180 -350 {
lab=#net1}
N 140 -390 140 -350 {
lab=#net1}
N 480 -350 500 -350 {
lab=#net2}
N 380 -350 450 -350 {
lab=#net1}
N 450 -370 450 -350 {
lab=#net1}
N 450 -370 500 -370 {
lab=#net1}
N 480 -460 480 -350 {
lab=#net2}
N 680 -350 770 -350 {
lab=#net2}
N 680 -370 700 -370 {
lab=B}
N 570 -460 730 -460 {
lab=#net2}
N 770 -370 770 -350 {
lab=#net2}
N 770 -370 820 -370 {
lab=#net2}
N 1000 -370 1040 -370 {
lab=C}
N 1040 -390 1040 -370 {
lab=C}
N 1000 -350 1070 -350 {
lab=#net3}
N 1070 -460 1070 -350 {
lab=#net3}
N 800 -460 1070 -460 {
lab=#net3}
N 800 -460 800 -350 {
lab=#net3}
N 800 -350 820 -350 {
lab=#net3}
C {devices/code.sym} 220 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} 410 -520 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 700 -520 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1040 -520 0 0 {name=p3 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} 20 -330 0 0 {name=p4 sig_type=std_logic lab=clk}
C {devices/simulator_commands_shown.sym} -510 -410 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=".param VCC=1.8  VSS=0
vvss vss 0 VSS
vvcc vcc 0 VCC
*vclk clk 0 pulse(0 1.8 0 10n 10n 200n 400n)

* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.control
  save all
  tran 0.1n 10000n
  write ringosc.raw
*  set appendwrite
*  alterparam VCC=1.6
*  reset
*  save all
*  tran 0.02n 30n
*  write test_inv.raw
*  quit 0
.endc
"}
C {devices/vsource.sym} 20 -280 0 0 {name=V1 value="pulse(0 1.8 0 10n 10n 200n 400n)" savecurrent=false}
C {devices/gnd.sym} 20 -250 0 0 {name=l1 lab=GND}
C {sky130_stdcells/dfxbp_2.sym} 270 -360 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 590 -360 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 910 -360 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/launcher.sym} 160 -610 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ringosc.raw tran"
}
