*nmos_output characteristics_1u
.include 'cmosedu_models.txt'
.option post

vds d 0 5
vgs  g 0 5
Mn1 d g 0 0 n_1u l=1u w=10u
.dc vds 0 5 1 vgs 0 5 1 
.plot i1(m1)
.op
.end