X <- scan("task.data"); G <- gl(2, 1, 22)
wilcox.test(X ~ G, paired = T, exact = F, conf.int = T)
wilcox.test(X ~ G, paired = T, exact = F, al = "g")
