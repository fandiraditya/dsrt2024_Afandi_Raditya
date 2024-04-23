v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -240 -300 -80 {
lab=#net1}
N -300 -240 160 -240 {
lab=#net1}
N 160 -240 180 -240 {
lab=#net1}
N 180 -240 180 -70 {
lab=#net1}
N 160 -70 180 -70 {
lab=#net1}
N 160 -30 180 -30 {
lab=GND}
N 180 -30 180 30 {
lab=GND}
N -300 30 180 30 {
lab=GND}
N -300 -20 -300 30 {
lab=GND}
N 160 -50 280 -50 {
lab=OUT}
N 180 30 280 30 {
lab=GND}
N 280 10 280 30 {
lab=GND}
C {ring_osc.sym} 10 -50 0 0 {name=x1}
C {devices/vsource.sym} -300 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -100 30 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 280 -20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 210 -50 1 0 {name=p1 sig_type=std_logic lab=OUT
}
C {devices/code_shown.sym} 340 -200 0 0 {name=SPICE only_toplevel=false value="
.option wn_flag=1
.option savecurrents
.control
save all
tran 1p 10n
plot out
op
.endc
"}
C {devices/code.sym} 590 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
