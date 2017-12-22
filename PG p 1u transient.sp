*pass gate transistor

.include 'cmosedu_models.txt'

.option post

vgs g 0 -5 
c d 0 50pf

vin in 0 pwl 0n -5 200n -5 300n 0 600n 0 700n 0 800n -5 1000n -5
m1 d g in 0 p_1u l=1u w=10u


.measure tran tdelay trig v(in) val=2.5 rise=1 targ v(d) val=2.5 rise=1



.tr 10ns 1000ns

.plot v(in) v(d)
.op

.end
