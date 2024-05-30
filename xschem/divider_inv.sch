v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 950 -1030 1750 -630 {flags=graph
y1=0
y2=2
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
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 30 -350 180 -350 {
lab=clk}
N 20 -350 20 -310 {
lab=clk}
N 20 -350 30 -350 {
lab=clk}
N 450 -500 760 -500 {
lab=out}
N 760 -500 760 -350 {
lab=out}
N 730 -350 760 -350 {
lab=out}
N 570 -350 650 -350 {
lab=#net1}
N 420 -350 490 -350 {
lab=#net2}
N 260 -350 340 -350 {
lab=#net3}
N 140 -500 140 -350 {
lab=clk}
N 140 -500 370 -500 {
lab=clk}
N 380 -420 380 -380 {
lab=clk}
N 380 -320 380 -280 {
lab=clkb}
N 690 -320 690 -290 {
lab=clk}
N 690 -420 690 -380 {
lab=clkb}
N 760 -350 930 -350 {
lab=out}
N 50 -630 100 -630 {
lab=clk}
N 180 -630 230 -630 {
lab=clkb}
C {devices/code.sym} 220 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} 30 -350 0 0 {name=p4 sig_type=std_logic lab=clk}
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
  tran 0.1n 3000n
  write divider_inv.raw
  set appendwrite
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
C {sky130_tests/passgate.sym} 380 -350 0 0 {name=x5 W_N=0.5 L_N=0.15 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {sky130_stdcells/inv_4.sym} 220 -350 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_tests/passgate.sym} 690 -350 0 0 {name=x3 W_N=0.5 L_N=0.15 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {devices/lab_wire.sym} 380 -420 0 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 380 -280 0 0 {name=p2 sig_type=std_logic lab=clkb}
C {devices/lab_wire.sym} 690 -420 0 0 {name=p5 sig_type=std_logic lab=clkb}
C {devices/lab_wire.sym} 690 -300 0 0 {name=p6 sig_type=std_logic lab=clk}
C {sky130_stdcells/inv_4.sym} 530 -350 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 410 -500 0 1 {name=x4 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 930 -350 0 0 {name=p3 sig_type=std_logic lab=out}
C {sky130_stdcells/inv_8.sym} 140 -630 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 50 -630 0 0 {name=p7 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 230 -630 0 0 {name=p8 sig_type=std_logic lab=clkb}
C {devices/launcher.sym} 1030 -590 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/divider_inv.raw tran"
}
