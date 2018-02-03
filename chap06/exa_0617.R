rt <- read.table("weight.data"); rt
with(rt, cor.test(X,Y))

cor.test(~ X + Y, data = rt)