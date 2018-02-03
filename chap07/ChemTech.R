X <- scan("ChemTech.data")
G <- gl(3,1,15, labels = c("A", "B", "C"))
aov.sol<-aov(X~G)
summary(aov.sol)

tapply(X, G, mean)
tapply(X, G, median)
pairwise.t.test(X, G)
pairwise.t.test(X, G, paired = TRUE)

pairwise.t.test(X, G, p.adjust.method = "none")
2*pt(-4/sqrt(28.33*2/5), df=12)
2*pt(-10/sqrt(28.33*2/5), df=12)
2*pt(-14/sqrt(28.33*2/5), df=12)

pairwise.t.test(X, G, , paired = TRUE, p.adjust.method = "none")

pairwise.t.test(X, G, al="l", p.adjust.method = "none")
