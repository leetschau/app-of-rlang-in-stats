X <- scan("birth.data")
names(X) <- 1:length(X)
Xbar <- mean(X); S <- sd(X)
Z <- (X - Xbar)/S
X[abs(Z)>3]

