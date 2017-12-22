*cmos inverter transient
.include 'cmosedu_models.txt'
.option post

vdd s2 0 1
vin g 0 pwl 0n 0 200n 0 300n 1 700n 1 800n 0 1000n 0
c1 d 0 50p
m1 d g s2 5 P_50n w=500n l=50n
m2 d g 0 0 N_50n w=500n l=50n
.measure tphl trig v(g) val=0.5 rise=1 targ v(d) val=0.5 fall=1
.measure tplh trig v(g) val=0.5 fall=1 targ v(d) val=0.5 rise=1
.measure tp param='(tphl+tplh)/2'
.tr 10ns 1000ns
.plot v(g) v(d)
.op
.end