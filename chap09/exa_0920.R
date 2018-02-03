par(mai=c(0.9, 0.8, 0.6, 0.1))
set.seed(12345)
phi <- 0.8; n <- 100; x <- numeric(0); x[1] <- 5
for (i in 2:n)
   x[i] <- phi*x[i-1] + rnorm(1)
x <- ts(x)
plot(x, main="Series x")
acf(x)
pacf(x)

savePlot("ttt", type="eps")

phi1 <- 1; phi2 <- -0.5; n <- 100
x <- numeric(n); x[1] <- 1; x[2] <- 0.5
for (i in 3:n)
   x[i] <- phi1*x[i-1] + phi2*x[i-2] + rnorm(1)
x <- ts(x)
