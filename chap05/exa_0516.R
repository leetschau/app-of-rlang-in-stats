rc <- read.csv("Airport.csv"); X<-rc$A; Y<-rc$B
Xbar <- mean(X); S1 <- sd(X); n1 <- length(X)
Ybar <- mean(Y); S2 <- sd(Y); n2 <- length(Y)
alpha <- 0.05; z <- qnorm(1-alpha/2)
S <- sqrt(S1^2/n1 + S2^2/n2) 
c(Xbar - Ybar - z*S, Xbar - Ybar + z*S)

t.test(X, Y)
t.test(X, Y, var.equal = T)



