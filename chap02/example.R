2 + 2
log(2)

par(mai=c(0.8, 0.8, 0.2,0.2))
n <- 30
x <- runif(n, 0, 10)
y <- 5 + 2*x + rnorm(n)
plot(x, y)
savePlot(filename = "example", type="eps")