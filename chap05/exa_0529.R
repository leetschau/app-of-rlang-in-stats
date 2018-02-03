rt <- read.table("test.data")
with(rt, t.test(old, new, var.equal = TRUE))
