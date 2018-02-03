x_bar <- 331.90; S <- 344.80; n <- 100
alpha <- 0.05; z <- qnorm(1 - alpha/2)
c(x_bar - S/sqrt(n)*z, x_bar + S/sqrt(n)*z)
