Xbar <- 6000; S1 <- 900; n1 <- 12
Ybar <-  5520; S2 <- 720; n2 <- 10
Sw2 <- ((n1-1)*S1^2+(n2-1)*S2^2)/(n1+n2-2)
S <- sqrt(Sw2*(1/n1+1/n2))
alpha <- 0.1; t <- qt(1-alpha/2, n1+n2-2)
c(Xbar - Ybar - t*S, Xbar - Ybar + t*S)

nu <- (S1^2/n1+S2^2/n2)^2/(S1^4/n1^2/(n1-1)+S2^4/n2^2/(n2-1))
S <- sqrt(S1^2/n1+S2^2/n2); t <- qt(1-alpha/2, nu)
c(Xbar - Ybar - t*S, Xbar - Ybar + t*S)



