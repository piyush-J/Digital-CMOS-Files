*cmos inverter
.include 'cmosedu_models.txt'
.option post
vdd s2 0 5
vin g 0 5
m1 d g s2 5 P_1u w=30u l=1u
m2 d g 0 0 N_1u w=10u l=1u
.dc vin 0 5 0.001 
.plot v(d) v(in)
.op
.end


