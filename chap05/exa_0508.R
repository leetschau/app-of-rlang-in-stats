x_bar <- 32; S <- 8; n <- 16
alpha <- 0.05; t <- qt(1 - alpha/2, df = n-1)
c(x_bar - S/sqrt(n)*t, x_bar + S/sqrt(n)*t)

