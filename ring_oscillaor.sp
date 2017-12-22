*ring oscillator
.include 'cmos.txt'
.option post
Vs s 0 5
Vin g 0 pwl 0n 0 250n 0 300n 5 600n 5 650n 0 1000n 0
.subckt inv s 0 g d
m1 d g 0 0 N_1u w=10u l=1u
m2 d g s s P_1u w=30u l=1u
c1 d 0 50p
.ends

x1 s 0 g d inv
x2 s 0 d p inv
x3 s 0 p q inv
x4 s 0 q r inv
x5 s 0 r g inv

.tran 10ns 1000ns
.measure tpd1 *rising prop delay
+trig v(g) val=2.5 rise=1 targ v(d) val=2.5 fall=1
.measure tpd2 *falling pro delay
    +trig v(g) val=2.5 fall=1 targ v(d) val=2.5 rise=1
.op
.end
