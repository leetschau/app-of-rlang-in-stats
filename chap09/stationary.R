par(mai=c(0.9, 0.9, 0.5, 0.1))
x <- c(-2, 2, 0); y <- c(-1, -1, 1)
plot(x, y, type="n", 
     xlab=expression(phi[1]), ylab=expression(phi[2]), 
     cex.lab=1.5 )
abline(h=0, v=0)
abline(h=-1,a=1, b=1, lty=2, lwd=1)
abline(a=1, b=-1, lty=2, lwd=1)
polygon(x, y, density=5, angle=30, lty=2, lwd=1)

xx <- seq(from =-2, to=2, by=0.2)
yy <- -1/4*xx^2
lines(xx,yy,lty=5, lwd=2)
#polygon(c(xx, -2), c(yy, -1), density=5, angle=135, lty=5, lwd=1)

savePlot("stationary", type="eps")