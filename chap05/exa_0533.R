X <- matrix(c(15, 32, 10, 42, 42, 59), nrow = 2, byrow = T)
colnames(X) <- c("30s","24s","20s")
rownames(X) <- c("Yes","No")
X.yes <- X["Yes",]; X.total <- margin.table(X,2)
prop.test(X.yes, X.total)

pairwise.prop.test(X.yes, X.total)

prop.trend.test(X.yes, X.total)
prop.trend.test(X.yes, X.total, score=c(2,1,3))