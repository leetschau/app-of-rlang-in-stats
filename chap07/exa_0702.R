rm(list=ls(all=TRUE))
mouse <- data.frame(
    X = scan("mouse.data"), 
    A = factor(rep(1:3, c(11, 10, 12)))
)
mouse.aov <- aov(X ~ A, data = mouse)
summary(mouse.aov)
