source("P_value.R"); source("exa_0516.R")
Z <- (Xbar - Ybar) / sqrt(S1^2/n1 + S2^2/n2)
P_value(Z)

t.test(X, Y)
t.test(X, Y, var.equal = T)

