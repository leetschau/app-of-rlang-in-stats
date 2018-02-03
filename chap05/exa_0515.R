Xbar <- 11.5; S1 <- 10.2; n1 <- 45
Ybar <- 9.0;  S2 <- 5.58; n2 <- 38
alpha <- 0.05; z <- qnorm(1-alpha/2)
S <- sqrt(S1^2/n1+S2^2/n2)
c(Xbar - Ybar - z*S, Xbar - Ybar + z*S)


