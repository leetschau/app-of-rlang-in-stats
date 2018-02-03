rm(list=ls(all=TRUE))
X <- scan("Enterprise_1.data"); X
A <- factor(c(gl(3,1,15), c(2,3,3)), labels=c('东北部', '西部', '南部'))
A

aov.sol <- aov(X~A)
summary(aov.sol)

pairwise.t.test(X, A)
plot(X ~ A)
tapply(X, A, mean)

rm(list=ls(all=TRUE))
价格 <- scan("Enterprise_2.data")
颜色 <- gl(4, 9, labels = c('A', 'B', 'C', 'D'))
供应商 <- gl(3,1, 36)
Enter.aov <- aov(价格 ~ 颜色*供应商)
summary(Enter.aov)

tapply(价格, 颜色, mean)
tapply(价格, 供应商, mean)

matrix(tapply(价格, 颜色:供应商, mean), 
       nr = 4, nc = 3, byrow = T,
       dimnames=list(levels(颜色), levels(供应商)))

rm(list=ls(all=TRUE))
X <- matrix(c(209, 483, 386, 32, 508, 185), nc = 2); X
chisq.test(X)

