#####parameter extraction exercise-1######

.lib /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom
.temp 25

vds out 0 dc 5
vid out D dc 0
vsb 0 b dc 2

M1 D D 0 b scmosn w=2.5u l=1u  m=1
.dc vds 0 5 0.001 vsb 0 2 1

.control
run
plot (vid#branch*2)*0.5 vs v(D)
.endc
.end

