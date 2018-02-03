rt <- read.table("Matched.data")
with(rt, t.test(Method1, Method2, paired = T))

with(rt, t.test(Method1, Method2, paired = T, al="g"))

