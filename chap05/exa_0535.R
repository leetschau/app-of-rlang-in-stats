rt <- read.table("test.data"); X <- rt$old; Y <-rt$new
n1 <- length(X); n2 <- length(Y)
Sw <-((n1-1)*var(X) + (n2-1)*var(Y)) / (n1+n2-2)
Sw <- sqrt(Sw)
power.t.test(n = min(n1, n2), delta = mean(X) - mean(Y), 
             sd = Sw)
