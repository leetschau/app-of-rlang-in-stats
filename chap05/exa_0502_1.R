z <- c( 3.23, 3.90, 4.75, 13.41, 15.94, 18.65,
       18.99, 5.66, 2.80,  9.05)
m1 <- mean(z); m2 <- mean(z^2)
fun <- function(x){
    a <- x[1]; b <- x[2]
    f <- c(a + b - 2*m1, a^2 + a*b + b^2 - 3*m2)
    J <- matrix(c(1, 1, 2*a + b, a+2*b), 2, 2, byrow = T)
    list(f = f, J = J)
}
source("Newtons.R"); Newtons(fun, c(1, 2))
