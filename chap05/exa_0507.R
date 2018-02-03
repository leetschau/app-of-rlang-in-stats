X <- scan("take_time.data")
x_bar <- mean(X); S <- sd(X); n <- length(X) 
alpha <- 0.05; z <- qnorm(1 - alpha/2)
c(x_bar - S/sqrt(n)*z, x_bar + S/sqrt(n)*z)
