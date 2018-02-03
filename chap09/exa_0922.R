par(mai=c(0.9, 0.8, 0.6, 0.1))
set.seed(12345)
theta <- 0.8; n <- 100; 
x <- numeric(0); e <- rnorm(100)
x[1] <- e[1]
for (i in 2:n)
   x[i] <- e[i] - theta*e[i-1]
x <- ts(x)
acf(x)
pacf(x)

savePlot("ttt", type="eps")

set.seed(12345)
theta1 <- 1; theta2 <- -0.5; n <- 100
e <- rnorm(100); x <- numeric(0) 
x[1] <- e[1]; x[2] <- e[2] - theta1*e[i-1] 
for (i in 3:n)
   x[i] <- e[i] - theta1*e[i-1] - theta2*e[i-2]
x <- ts(x)


