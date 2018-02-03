X <- scan("birth.data")/1000

par(mai=c(0.9, 0.8, 0.5, 0.0))
hist(X, col = "lightblue", border = "red",
     labels = TRUE, ylim=c(0, 34))

r <- hist(X, freq = FALSE)
lines(density(X), col = "blue", lwd=2)
x <- seq(from = .5, to = 5, by = .1)
lines(x, dnorm(x, mean(X), sd(X)), col = "red", lwd = 2)
