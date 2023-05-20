v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 -460 -200 -90 -200 {}
L 4 -40 -200 -30 -190 {}
L 4 -470 -190 -460 -200 {}
L 4 -90 -200 -40 -200 {}
T {only_toplevel=true attribute set, 
will be netlisted only if toplevel cell} -340 -230 0 0 0.2 0.2 {layer=4}
N -250 -180 -250 -150 {
lab=VDD}
N 230 -410 230 -300 {
lab=#net1}
N 270 -440 320 -440 {
lab=#net2}
N 190 -220 190 -150 {
lab=GND}
N 230 -190 230 -150 {
lab=GND}
N 320 -220 320 -150 {
lab=GND}
N 360 -190 360 -150 {
lab=GND}
N 360 -410 360 -360 {
lab=#net3}
N 140 -370 230 -370 {
lab=#net1}
N 560 -410 560 -390 {
lab=OUT}
N 360 -360 470 -360 {
lab=#net3}
N 360 -480 360 -470 {
lab=VDD}
N 190 -220 190 -150 {
lab=GND}
N 230 -190 230 -150 {
lab=GND}
N 320 -220 320 -150 {
lab=GND}
N 360 -190 360 -150 {
lab=GND}
N 360 -360 360 -310 {
lab=#net3}
N 230 -300 230 -250 {
lab=#net1}
N 360 -470 360 -440 {
lab=VDD}
N 230 -470 230 -440 {
lab=VDD}
N 560 -470 560 -440 {
lab=VDD}
N 310 -510 310 -440 {
lab=#net2}
N 310 -510 440 -510 {
lab=#net2}
N 440 -510 440 -440 {
lab=#net2}
N 440 -440 520 -440 {
lab=#net2}
N 230 -470 560 -470 {
lab=VDD}
N 360 -550 360 -480 {
lab=VDD}
N 560 -400 610 -400 {
lab=OUT}
N 270 -420 270 -390 {
lab=#net2}
N 270 -430 270 -420 {
lab=#net2}
N 270 -430 310 -430 {
lab=#net2}
N 310 -440 310 -430 {
lab=#net2}
N 320 -350 360 -350 {
lab=#net3}
N 230 -350 280 -350 {
lab=#net1}
N -190 -180 -190 -150 {
lab=GND}
C {devices/launcher.sym} -210 40 0 0 {name=h1
descr=Backannotate 
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} -210 80 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/five_T_OTA.raw"}
C {devices/iopin.sym} 250 -110 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 250 -70 0 0 {name=p5 lab=OUT}
C {devices/code.sym} -440 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -250 -120 0 0 {name=V2 value=1.8 only_toplevel=true}
C {devices/gnd.sym} -250 -90 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -250 -180 2 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 20 50 0 0 {name=NGSPICE
only_toplevel=true
value="
.control

save @m.xm7.msky130_fd_pr__pfet_01v8[gm]
save @m.xm7.msky130_fd_pr__pfet_01v8[vth]
save @m.xm7.msky130_fd_pr__pfet_01v8[vdsat]
save @m.xm7.msky130_fd_pr__pfet_01v8[vds]
save @m.xm7.msky130_fd_pr__pfet_01v8[id]
save @m.xm7.msky130_fd_pr__pfet_01v8[gds]

save @m.xm9.msky130_fd_pr__pfet_01v8[gm]
save @m.xm9.msky130_fd_pr__pfet_01v8[vth]
save @m.xm9.msky130_fd_pr__pfet_01v8[vdsat]
save @m.xm9.msky130_fd_pr__pfet_01v8[vds]
save @m.xm9.msky130_fd_pr__pfet_01v8[id]
save @m.xm9.msky130_fd_pr__pfet_01v8[gds]

save @m.xq2.msky130_fd_pr__pnp05v5[gm]
save @m.xq2.msky130_fd_pr__pnp05v5[vth]
save @m.xq2.msky130_fd_pr__pnp05v5[vdsat]
save @m.xq2.msky130_fd_pr__pnp05v5[vds]
save @m.xq2.msky130_fd_pr__pnp05v5[id]
save @m.xq2.msky130_fd_pr__pnp05v5[gds]


save all

op
write five_T_OTA.raw

.endc
"}
C {sky130_fd_pr/pfet_01v8.sym} 250 -440 0 1 {name=M7
L=1
W=50
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -440 0 0 {name=M8
L=1
W=50
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -440 0 0 {name=M9
L=1
W=25
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
C {sky130_fd_pr/pnp_05v5.sym} 210 -220 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 340 -220 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
m=8
}
C {devices/gnd.sym} 140 -310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 190 -150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 230 -150 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 320 -150 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 360 -150 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 470 -300 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 560 -330 0 0 {name=l23 lab=GND}
C {devices/spice_probe.sym} 230 -270 0 0 {name=p7 attrs=""
voltage=0.7664}
C {devices/spice_probe.sym} 450 -360 0 0 {name=p11 attrs=""
voltage=0.9003}
C {devices/lab_pin.sym} 360 -550 1 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/spice_probe.sym} 440 -510 0 0 {name=p12 attrs=""
voltage=-1341}
C {devices/ngspice_get_value.sym} 770 -450 0 0 {name=r13 node=@m.xm9.msky130_fd_pr__pfet_01v8[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 770 -490 0 0 {name=r14 node="i(@m.xm9.msky130_fd_pr__pfet_01v8[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 660 -410 0 0 {name=r15 node="v(@m.xm9.msky130_fd_pr__pfet_01v8[vth])"
descr="Vth="}
C {devices/ngspice_get_value.sym} 660 -450 0 0 {name=r16 node="v(@m.xm9.msky130_fd_pr__pfet[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 660 -490 0 0 {name=r17 node="v(@m.xm9.msky130_fd_pr__pfet_01v8[vds])"
descr="Vds="}
C {devices/ngspice_get_value.sym} 770 -410 0 0 {name=r18 node="@m.xm9.msky130_fd_pr__pfet_01v8[gds]"
descr="gds="}
C {devices/ngspice_get_value.sym} 140 -460 0 0 {name=r19 node=@m.xm7.msky130_fd_pr__pfet_01v8[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 140 -500 0 0 {name=r20 node="i(@m.xm7.msky130_fd_pr__pfet_01v8[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 30 -420 0 0 {name=r21 node="v(@m.xm7.msky130_fd_pr__pfet_01v8[vth])"
descr="Vth="}
C {devices/ngspice_get_value.sym} 30 -460 0 0 {name=r22 node="v(@m.xm7.msky130_fd_pr__pfet[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 30 -500 0 0 {name=r23 node="v(@m.xm7.msky130_fd_pr__pfet_01v8[vds])"
descr="Vds="}
C {devices/ngspice_get_value.sym} 140 -420 0 0 {name=r24 node="@m.xm7.msky130_fd_pr__pfet_01v8[gds]"
descr="gds="}
C {devices/res.sym} 560 -360 0 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} 300 -390 1 1 {name=E1 value=10000}
C {devices/res.sym} 360 -280 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 470 -330 0 0 {name=R2
value=30k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 140 -340 0 0 {name=R3
value=30k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 610 -400 2 0 {name=l25 sig_type=std_logic lab=OUT}
C {devices/ngspice_get_value.sym} 560 -190 0 0 {name=r1 node=@m.xm9.msky130_fd_pr__pfet_01v8[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 560 -230 0 0 {name=r2 node="i(@m.xm9.msky130_fd_pr__pfet_01v8[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 450 -150 0 0 {name=r3 node="v(@m.xm9.msky130_fd_pr__pfet_01v8[vth])"
descr="Vth="}
C {devices/ngspice_get_value.sym} 450 -190 0 0 {name=r4 node="v(@m.xq2.msky130_fd_pr__pfet[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 450 -230 0 0 {name=r5 node="v(@m.xq2.msky130_fd_pr__pnp05v5[vds])"
descr="Vds="}
C {devices/ngspice_get_value.sym} 560 -150 0 0 {name=r6 node="@m.xm9.msky130_fd_pr__pfet_01v8[gds]"
descr="gds="}
C {devices/vsource.sym} -190 -120 0 0 {name=V1 value=1.2 only_toplevel=true}
C {devices/gnd.sym} -190 -180 2 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -190 -90 2 0 {name=l5 sig_type=std_logic lab=BIAS}
C {devices/lab_pin.sym} 330 -390 1 0 {name=l7 sig_type=std_logic lab=BIAS}
