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

