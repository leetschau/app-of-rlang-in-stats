obj <- function(x){
    F <- c(10*(x[2] - x[1]^2), 1 - x[1])
    f <- t(F) %*% F
    g <- function(x, F){
      J <- matrix(c(-20*x[1], 10, -1, 0), 2, 2, byrow = T)
      2*t(J)%*% F      
    }
    attr(f, "gradient") <- g(x, F)
    f
}
