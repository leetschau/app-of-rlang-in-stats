source("exa_0702.R")
kruskal.test(X ~ A, data = mouse)
with(mouse, pairwise.wilcox.test(X, A))