Y <- scan("tree.data")
A <- gl(3, 20, 60, labels = paste("A", 1:3, sep = ""))
B <- gl(4, 1, 60, labels = paste("B", 1:4, sep = ""))
tree.aov <- aov(Y ~ A+B+A:B)
summary(tree.aov)

tapply(Y, A, mean)
tapply(Y, B, mean)
matrix(tapply(Y, A:B, mean), nr = 3, nc = 4, byrow = T,
       dimnames=list(levels(A), levels(B)))

par(mai=c(0.9,0.9, 0.2, 0.1))
interaction.plot(A, B, Y, lwd = 2, col = 2:5)

savePlot("interaction_plot", type="eps")
