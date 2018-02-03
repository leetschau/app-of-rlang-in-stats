x <- scan("Cauchy.data")    
loglike <- function(p) sum(log(1+(x-p)^2))
optimize(loglike, interval = c(0, 2))
