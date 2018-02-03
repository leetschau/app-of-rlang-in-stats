moving <- function(x, k = 1, weighted = FALSE){
    n <- length(x); f <- numeric(0)
    if (weighted == TRUE | weighted == T){
        w <- k:1
    } else{
        w <- rep(1, k)
    }
    for (t in k:n){
       f[t+1] <-  weighted.mean(x[t:(t-k+1)], w)
    }
    mse <- sum((x[(k+1):n]-f[(k+1):n])^2)/(n-k)
    list(average = f, MSE = mse)
}
