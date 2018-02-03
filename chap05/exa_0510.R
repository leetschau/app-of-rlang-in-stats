X <- scan("train_time.data")
x_bar <- mean(X); S <- sd(X); n <- length(X)
alpha <- 0.05; t <- qt(1 - alpha/2, df = n-1)
c(x_bar - S/sqrt(n)*t, x_bar + S/sqrt(n)*t)

t.test(X)
