v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 70 20 100 {
lab=GND}
N 20 100 130 100 {
lab=GND}
N 130 100 290 100 {
lab=GND}
N 290 70 290 100 {
lab=GND}
N 130 70 130 100 {
lab=GND}
N 20 -140 20 10 {
lab=#net1}
N 20 -140 290 -140 {
lab=#net1}
N 290 -140 290 -120 {
lab=#net1}
N 220 -90 250 -90 {
lab=in}
N 220 -90 220 40 {
lab=in}
N 220 40 250 40 {
lab=in}
N 290 -60 290 10 {
lab=out}
N 130 -40 130 10 {
lab=in}
N 130 -40 220 -40 {
lab=in}
N 290 -90 330 -90 {
lab=#net1}
N 330 -140 330 -90 {
lab=#net1}
N 290 -140 330 -140 {
lab=#net1}
N 290 40 330 40 {
lab=GND}
N 330 40 330 100 {
lab=GND}
N 290 100 330 100 {
lab=GND}
N 290 -30 340 -30 {
lab=out}
C {devices/vsource.sym} 20 40 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 130 40 0 0 {name=V2 value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 270 40 0 0 {name=M1
W=1
L=0.62
nf=1 
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
C {sky130_fd_pr/pfet_01v8.sym} 270 -90 0 0 {name=M2
W=3
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 130 100 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 130 -40 0 0 {name=p1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 340 -30 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code.sym} 150 160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/code_shown.sym} 430 -60 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc
"}
