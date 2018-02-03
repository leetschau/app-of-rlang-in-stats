m <- 34; n <- 87; p <- m/n; q <- 1 - p
alpha <- 0.05; z <- qnorm(1 - alpha/2)
c(p - z*sqrt(p*q/n), p + z*sqrt(p*q/n))

binom.test(x=34, n=87) 
prop.test(x=34, n=87) 
