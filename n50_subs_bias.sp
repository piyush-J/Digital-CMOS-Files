*nmos_subs bias effect_50n
.include 'cmosedu_models.txt'
.option post

vds d 0 1
vgs  g 0 1
vbs b 0 -1
Mn1 d g 0 b n_1u l=1u w=10u
.dc vgs 0 1 0.01 vbs 0 -1 -0.05
.plot i1(m1)
.op
.end