Testbench for inverter sub-circuit
.GLOBAL vdd gnd
.PARAM vsupply=5.0

.LIB "/project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib" nom

.INCLUDE LAb9_inv.sp

Xinv1 in out LAb9_inv

Vsup	vdd	0	DC vsupply
Vin	in	0	PULSE(0 vsupply 0 10p 10p 100p 200p)
Cload	out	0	50f

.TRAN 1p 300p

.CONTROL
RUN
PLOT V(out)

.ENDC

.END

