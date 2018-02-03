phi <- 0.8; n <- 100; x<-numeric(0); x[1] <- 5
for (i in 2:n)
   x[i] <- phi * x[i-1] + rnorm(1)

x <- ts(x)
par(mai=c(0.9, 0.9, 0.6, 0.1))
plot(x, main="Series x")
acf(x)
pacf(x)


phi1 <- 1; phi2 <- -0.5; n <- 100
y <- numeric(n); y[1] <- 1; y[2] <- 0.5
for (i in 3:n)
   y[i] <- phi1*y[i-1] + phi2*y[i-2] + rnorm(1)

y <- ts(y)
plot(x, main="Series y")
acf(y)
pacf(y)

set.seed(12345)
theta <- .8; n <- 100; 
x<-numeric(0); e <- rnorm(100)
x[1] <- e[1]
for (i in 2:n)
   x[i] <- e[i] - theta*e[i-1]
x <- ts(x)
par(mai=c(0.9, 0.9, 0.6, 0.1))
plot(x, main="Series x")
acf(x)
pacf(x)


set.seed(12345)
theta1 <- 1; theta2 <- -0.5; n <- 100
e <- rnorm(100); x <- numeric(0) 
x[1] <- e[1]; x[2] <- e[2] - theta1*e[i-1] 
for (i in 3:n)
   x[i] <- e[i] - theta1*e[i-1] - theta2*e[i-2]
x <- ts(x)

set.seed(12345)
phi <- 0.7; theta <- -0.9; n <- 100
e <- rnorm(100); x<-numeric(0) 
x[1] <- 1 
for (i in 2:n)
   x[i] <- phi*x[i-1] + e[i] - theta*e[i-1]
x <- ts(x)
acf(x)
pacf(x)

savePlot("arma1_pacf", type="eps")

