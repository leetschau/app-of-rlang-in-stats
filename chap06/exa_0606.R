x <- rep(1:4, c(62, 41, 14, 11))
y <- rep(1:4, c(20, 37, 16, 15))
wilcox.test(x, y, conf.int = TRUE) 

wilcox.test(x, y, al = "l") 
