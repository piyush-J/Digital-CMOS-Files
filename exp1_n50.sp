*nmos_characteristics_50n
.include 'cmosedu_models.txt'
.option post

vdd d 0 1
vg  g 0 1
Mn1 d g 0 0 n_50n l=1u w=10u
.op
.end