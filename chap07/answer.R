## 习题 1
rm(list=ls(all=TRUE))
X <- scan("paint.data")
A <- gl(3, 10)
aov.sol <- aov(X ~ A)
summary(aov.sol)
pairwise.t.test(X, A)
plot(X ~ A)

## 习题 2
rm(list=ls(all=TRUE))
X <- scan("solvent.data")
A <- factor(rep(1:3, c(9, 8, 15)))
aov.sol <- aov(X ~ A)
summary(aov.sol)
pairwise.t.test(X, A)
plot(X ~ A)


## 习题 3
tapply(X, A, shapiro.test)
bartlett.test(X, A)
oneway.test(X ~ A)

## 习题 4
rm(list=ls(all=TRUE))
X <- scan("paint.data")
A <- gl(3, 10)
oneway.test(X ~ A)
kruskal.test(X, A)

tapply(X, A, shapiro.test)
bartlett.test(X, A)

## 习题 5
rm(list=ls(all=TRUE))
X <- scan('..\\chap06\\Krisp_Kreme1.data')
A <- factor(rep(1:4, c(4, 6, 5, 7)), 
            labels =  paste0('机器', 1:4))

aov.sol <- aov(X~A)
summary(aov.sol)

pairwise.t.test(X,A)
tapply(X, A, shapiro.test)
bartlett.test(X~A)

kruskal.test(X~A)
pairwise.wilcox.test(X, A, exact = F)


## 习题 6
rm(list=ls(all=TRUE))
X <- scan("staff.data")
A <- gl(3, 10)
kruskal.test(X, A)
tapply(X, A, shapiro.test)
bartlett.test(X~A)


## 习题 7
rm(list=ls(all=TRUE))
X <- scan("sea.data")
A <- gl(4, 10)
tapply(X, A, shapiro.test)
bartlett.test(X~A)

oneway.test(X ~ A)
pairwise.t.test(X, A)
pairwise.wilcox.test(X, A, exact = F)
plot(X ~ A)


## 习题 8
rm(list=ls(all=TRUE))
X <- scan("engineer.data")
A <- gl(3, 4)
B <- gl(4, 1, 12)
aov.sol <- aov(X ~ A)
aov.sol <- aov(X ~ B)
summary(aov.sol)
aov.sol <- aov(X ~ A + B)

## 习题 9
rm(list=ls(all=TRUE))
X <- scan("profit.data")
A <- gl(3, 9)
B <- gl(3, 1, 27)
aov.sol <- aov(X ~ A*B)
summary(aov.sol)

matrix(tapply(X, A:B, mean), nr=3, nc=3, byrow=T, 
       dimnames = list(levels(A), levels(B)))

tapply(X, A, mean)
tapply(X, B, mean)

interaction.plot(A, B, X, lwd = 2, col = 2:4)

## 习题 10
rm(list=ls(all=TRUE))
X <- scan("strength.data")
A <- gl(4, 12)
B <- gl(4, 1, 48)
aov.sol <- aov(X ~ A*B)
summary(aov.sol)

tapply(X, A, mean)
tapply(X, B, mean)

interaction.plot(A, B, X, lwd = 2, col = 2:4)

matrix(tapply(X, A:B, mean), nr=4, nc=4, byrow=T, 
       dimnames = list(levels(A), levels(B)))


## 习题 11
rm(list=ls(all=TRUE))
