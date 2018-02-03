X <- scan("score.data")
x_bar <- mean(X); S <- sd(X); n <- length(X); mu <- 4.3
Z <- (x_bar-mu)/(S/sqrt(n))
source("P_value.R")
P_value(Z, side = -1)

t.test(X, mu = 4.3, al = "l")
