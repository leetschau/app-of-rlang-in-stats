source("exa_0702.R")
with(mouse, tapply(X, A, shapiro.test))

oneway.test(X ~ A, data = mouse)
oneway.test(X ~ A, data = mouse, var.equal = TRUE)