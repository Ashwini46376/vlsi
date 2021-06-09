Extracting Vt, Kp, gamma for nmos

* Include the SCMOS library
.LIB  /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib" nom

* Set the device pramaeter
.TEMP 27

* Netlist
M1	D1	D1	B	0	scmosn	W=5u L=1u
Vds	D	0	DC	5
Vid1	D1	D	DC	0
Vsb	0	B	DC	0

* Analyses
.DC	Vds	0	5	0.001

* Script
.CONTROL
RUN
PLOT Vid1#branch vs V(D)
.ENDC

.END
:wq

