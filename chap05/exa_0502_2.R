fun <- function(x, m){
    a <- x[1]; b <- x[2]
    c(a + b - 2*m[1], a^2 + a*b + b^2 - 3*m[2])
}
z <- c( 3.23, 3.90, 4.75, 13.41, 15.94, 18.65,
       18.99, 5.66, 2.80,  9.05)
nleqslv(x = c(1, 2), fn = fun, m = c(mean(z), mean(z^2)))
