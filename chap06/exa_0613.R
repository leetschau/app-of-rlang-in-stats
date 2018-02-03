x <- matrix(c(60, 3, 32, 11), nc = 2); chisq.test(x)
fisher.test(x)

fisher.test(x, al="g")