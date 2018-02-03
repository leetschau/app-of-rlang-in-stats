source("exa_0702.R")
attach(mouse)
tapply(X, A, mean)
pairwise.t.test(X, A)

