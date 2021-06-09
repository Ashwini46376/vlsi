* Spice Netlist for Cell 'invert_lvs'
.lib /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom

* Module invert_lvs
m0 out in vdd vdd scmosp l=0.4u w=2u m=1
m1 out in gnd gnd scmosn l=0.4u w=2u m=1


.temp 27
.param vsupply=2.5
.global vdd gnd
Vsupp vdd 0 2.5
vin in gnd pulse 0 2.5 10n 10p 10p 5n 10n

.tran 5p 50n
.control
run
plot v(in)+3 v(out)
.endc

*Measurements
.measure tran tdiff trig v(in) val=1.25 fall=1 targ v(out) val=1.25 rise=1
.end
i
