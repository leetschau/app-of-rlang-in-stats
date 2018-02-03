### (1) 
binom.test(x = 575, n = 850, p = 0.63)
binom.test(x = 575, n = 850, p = 0.63, al="g")

binom.test(x = 606, n = 689, p = 0.94)
binom.test(x = 606, n = 689, p = 0.94, al="l")

binom.test(x = 347, n = 438, p = 0.83)
binom.test(x = 347, n = 438, p = 0.83, al="l")

### (2) (a)
mu <- 31; X_bar <- 27.61415; n <-24; S <- 8.93852
t <- (X_bar-mu)/(S/sqrt(n)); t
pt(t, df = n-1)
pt(t, df = n-1) + 1 - pt(-t, df= n-1)

alpha <- 0.01
a <- X_bar - S/sqrt(n)*qt(1-alpha/2, df=n-1)
b <- X_bar + S/sqrt(n)*qt(1-alpha/2, df=n-1)
c(a,b)

### (2) (b)
X <- scan("Spanish.data")
t.test(X, mu = 45)
t.test(X, mu = 45, al = "l")



