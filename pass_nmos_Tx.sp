*pass tx for nmos 1u technology
.include 'cmosedu_models.txt'
.option post
Vg G 0 5
Vin IN 0 PWL 0n 0 100n 0 300n 5 700n 5 900n 0 1000n 0
C1 OUT 0 50p
m1 OUT G IN 0 N_1u w=10u l=1u
.measure tplh trig v(IN) val=2.5 rise=1 targ v(OUT) val=2.5 rise=1
.measure tphl trig v(IN) val=2.5 fall=1 targ v(OUT) val=2.5 fall=1
.tr 10ns 1000ns
.print V(IN) V(OUT)
.op
.end
