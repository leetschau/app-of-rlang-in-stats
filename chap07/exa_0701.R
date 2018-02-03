X <- scan("lamp.data")
A <- factor(rep(1:4, c(7, 5, 8, 6)))
aov.sol <- aov(X ~ A)
summary(aov.sol)
