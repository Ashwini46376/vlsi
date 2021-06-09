###### Interconnect Parasitics ######

*Pulse input
vin	in	0	pulse	0	2.5	2n	1p	1p	15n	30n


*Lumped Model definition
Rl	in	outl	15k	
Cl	outl	0	192f

*T-model definition
Rt1	in	n1	7.5k
Rt2	n1	outt	7.5k
Ct	n1	0	192f


*Pi-model definition
Rp	in	outp	15k
Cp1	in	0	96f
Cp2	outp	0	96f


*Distributed model definition
Rd1     in     nd1      1k
Rd2     nd1     nd2     1k
Rd3     nd2     nd3     1k
Rd4     nd3     nd4     1k
Rd5	nd4	nd5	1k
Rd6     nd5     nd6     3k
Rd7     nd6     nd7     3k
Rd8     nd7     nd8     3k
Rd9     nd8     nd9     3k
Rd10    nd9     outd    3k

Cd1     nd1     0     24.5f
Cd2     nd2     0     24.5f
cd3     nd2     0     24.5f
Cd4     nd3     0     24.5f
Cd5     nd4     0     24.5f
Cd6     nd5     0     13.9f
Cd7     nd6     0     13.9f
Cd8     nd7     0     13.9f
Cd9     nd9     0     13.9f
Cd10    outd    0     13.9f

.TRAN	5p	35n

.CONTROL
run
plot	v(in)	v(outl)	v(outt)	v(outp)+3	v(outd)
.ENDC

.measure tran	tdiff	trig	v(in) val=1.25	RISE=1 TARG v(outl) val=1.25 RISE=1 
.measure tran   tdiff   trig    v(in) val=1.25  RISE=1 TARG v(outd) val=1.25 RISE=1

	
.END
	



  
