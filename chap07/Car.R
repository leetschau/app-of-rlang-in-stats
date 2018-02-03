X <- scan("car.data")
A <- gl(3,1,15)
B <- gl(5, 3)
aov.sol <- aov(X~A+B)
summary(aov.sol)

tapply(X, A, mean)
tapply(X, B, mean)


aov.sol <- aov(X~A)
summary(aov.sol)
pairwise.t.test(X, A)
plot(X~A)

pairwise.t.test(X, A, paired =T)
