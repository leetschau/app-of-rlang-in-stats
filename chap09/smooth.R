smooth <- function(x, alpha = 0.5){
    n <- length(x); f <- x[1]
    for (t in 1:n){
       f[t+1] <-  alpha*x[t]+(1-alpha)*f[t]
    }
    mse <- sum((x-f[1:n])^2)/(n-1)
    list(average = f, MSE = mse)
}
