X <- scan("method_AB.data")
F <- factor(rep(c(1, 2, 1, 2, 1), c(5, 4, 5, 4, 3)))
A <- X[F==1]; B <- X[F==2]

##% ������ͬģ��
Xbar <- mean(A); S1 <- sd(A); n1 <- length(A)
Ybar <- mean(B); S2 <- sd(B); n2 <- length(B)
Sw2 <- ((n1-1)*S1^2+(n2-1)*S2^2)/(n1+n2-2)
S <- sqrt(Sw2*(1/n1+1/n2))
alpha <- 0.05; t <- qt(1-alpha/2, n1+n2-2)
c(Xbar - Ybar - t*S, Xbar - Ybar + t*S)

##% ��������
Xbar - Ybar - qt(1-alpha, n1+n2-2)*S

##% t���麯��
t.test(A, B, var.equal = T)
t.test(A, B, var.equal = T, al="g")


##% ���ͬģ��
nu <- (S1^2/n1+S2^2/n2)^2/(S1^4/n1^2/(n1-1)+S2^4/n2^2/(n2-1))
S <- sqrt(S1^2/n1+S2^2/n2); t <- qt(1-alpha/2, nu)
c(Xbar - Ybar - t*S, Xbar - Ybar + t*S)

##% ��������
Xbar - Ybar - qt(1-alpha, nu)*S

##% t���麯��
t.test(A, B)

t.test(A, B, al="g")

