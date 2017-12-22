*pmos_characteristics_1u
.include 'cmosedu_models.txt'
.option post

vdd d 0 -5
vg  g 0 -5
Mn1 d g 0 0 p_1u l=1u w=10u
.op
.end