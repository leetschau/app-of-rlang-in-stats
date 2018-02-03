X <- scan("Auto.data")
par(mai=c(0.9, 0.9, 0.5, 0.2))
hist(X, breaks = 12)
qqnorm(X); qqline(X)
shapiro.test(X)

x_bar <- mean(X); S <- sd(X); n <- length(X) 
alpha <- 0.05; z <- qnorm(1 - alpha/2)
c(x_bar - S/sqrt(n)*z, x_bar + S/sqrt(n)*z)

t.test(X, mu = mean(X))

E <- 5000; (n <- z^2*S^2/E^2)

