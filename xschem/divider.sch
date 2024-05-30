v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -390 180 -390 {
lab=#net1}
N 140 -460 140 -390 {
lab=#net1}
N 140 -460 340 -460 {
lab=#net1}
N 340 -460 340 -350 {
lab=#net1}
N 300 -350 340 -350 {
lab=#net1}
N 460 -390 500 -390 {
lab=#net2}
N 460 -460 460 -390 {
lab=#net2}
N 460 -460 660 -460 {
lab=#net2}
N 660 -460 660 -350 {
lab=#net2}
N 620 -350 660 -350 {
lab=#net2}
N 820 -390 860 -390 {
lab=#net3}
N 820 -460 820 -390 {
lab=#net3}
N 820 -460 1020 -460 {
lab=#net3}
N 1020 -460 1020 -350 {
lab=#net3}
N 980 -350 1020 -350 {
lab=#net3}
N 340 -350 500 -350 {
lab=#net1}
N 660 -350 860 -350 {
lab=#net2}
N 300 -520 300 -390 {
lab=A}
N 620 -520 620 -390 {
lab=B}
N 980 -500 980 -390 {
lab=C}
N 30 -350 180 -350 {
lab=clk}
N 980 -520 980 -500 {
lab=C}
N 20 -350 20 -310 {
lab=clk}
N 20 -350 30 -350 {
lab=clk}
C {stdcells/DFFIQ.sym} 240 -370 0 0 {name=x54 VCCPIN=VCC VSSPIN=VSS VCCBPIN=VCC VSSBPIN=VSS}
C {stdcells/DFFIQ.sym} 560 -370 0 0 {name=x1 VCCPIN=VCC VSSPIN=VSS VCCBPIN=VCC VSSBPIN=VSS}
C {stdcells/DFFIQ.sym} 920 -370 0 0 {name=x2 VCCPIN=VCC VSSPIN=VSS VCCBPIN=VCC VSSBPIN=VSS}
C {devices/code.sym} 220 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} 300 -520 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 620 -520 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 980 -520 0 0 {name=p3 sig_type=std_logic lab=C}
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
  write ringosc.raw
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
C {sky130_tests/passgate.sym} 680 -140 0 0 {name=x5 W_N=0.5 L_N=0.15 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
