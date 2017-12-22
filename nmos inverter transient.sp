*nmos inverter transient analysis
.include 'cmosedu_models.txt'
.option post
vgs g 0 pwl 0n 0 200n 0 300n 5 700n 5 800n 0 1000n 0
r1 vd d 2.5k
c1 d 0 50p
vdd vd 0 5
m1 d g 0 0 N_1u w=10u l=1u
.measure tphl trig v(g) val=2.5 rise=1 targ v(d) val=2.5 fall=1
.measure tplh trig v(g) val=2.5 fall=1 targ v(d) val=2.5 rise=1
.tr 10ns 1000ns
.plot v(g) v(c1)
.op
.end