par(mai=c(0, 0, 0, 0))
x <- seq(-4, 4, by=0.1)
plot(x, dnorm(x), type="l", lwd=2, col=4,
     xlim=c(-3, 3), ylim=c(-0.01, 0.4)) 
abline(h=0, v=0)

z <- qnorm(1-0.05)
xx <- seq(z, 4, by=0.1)
polygon(c(xx, z), c(dnorm(xx), dnorm(4)), density=10, angle = 45) 
text(z, -0.015, expression(z[alpha]), adj=0.4, cex=1.1)

z0 <- 2.2
lines(c(z0, z0), c(0, dnorm(z0)), lwd=2)
xx <- seq(z0, 4, by=0.1)
polygon(c(xx, z0), c(dnorm(xx), dnorm(4)), density=10, angle = 135) 
text(z0, -0.015, expression(Z), adj=0.4, cex=1.1)
savePlot("hypoth-1", type = "eps")

z <- qnorm(0.05)
xx <- seq(-4, z, by=0.1)
polygon(c(z, xx), c(dnorm(-4), dnorm(xx)), density=10, angle = 135) 
text(z, -0.015, expression(-z[alpha]), adj=0.4, cex=1.1)

z0 <- -2.2
lines(c(z0, z0), c(0, dnorm(z0)), lwd=2)
xx <- seq(-4, z0, by=0.1)
polygon(c(z0, xx), c(dnorm(-4), dnorm(xx)), density=10, angle = 45) 
text(z0, -0.015, expression(Z), adj=0.4, cex=1.1)
savePlot("hypoth-2", type = "eps")


