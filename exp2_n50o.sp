*nmos_output characteristics_50n
.include 'cmosedu_models.txt'
.option post

vds d 0 1
vgs  g 0 1
Mn1 d g 0 0 n_50n l=1u w=10u
.dc vds 0 1 0.1 vgs 0 1 0.2
.plot i1(m1)
.op
.end