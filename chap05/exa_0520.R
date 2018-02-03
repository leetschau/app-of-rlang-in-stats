m <- c(35, 27); n <- c(250, 300); alpha <- 0.1
z <- qnorm(1 - alpha/2); p <- m/n; q <- 1 - p 
S <- sqrt(p[1]*q[1]/n[1]+p[2]*q[2]/n[2])
c(p[1] - p[2] - z*S, p[1] - p[2] + z*S)

prop.test(x = m, n = n, conf.level = 0.90)
prop.test(x = m, n = n, conf.level = 0.90, correct = F)

