*nand gate power and transient analysis
.option post
.include 'cmosedu_models.txt'
vdd s 0 5
vin1 a 0 pulse(0 5 5n 1n 1n 5n 30ns)
vin2 b 0 pulse(0 5 5n 1n 1n 10n 30ns)
m1 d  a  s  s  p_1u w=30u l=1u
m2 d  b  s  s  p_1u w=30u l=1u
m3 d  a  x  x  n_1u w=30u l=1u
m4 x  b  0  0  n_1u w=20u l=1u

.tran 5n 90ns
.plot v(a) v(b) v(d)
.op
.end