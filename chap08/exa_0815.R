rm(list=ls(all=TRUE))
rt <- read.table("toothpaste.data"); rt
lm.sol <- lm(Y ~ 1 + X1 + X2, data = rt)
summary(lm.sol)

attach(rt)
par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(X1, Y, pch=19)
lm.sol <- lm(Y ~ 1 + X1, data = rt)
abline(lm.sol, lw=2, lty = 5)

plot(X2, Y, pch =19)
lm.sol <- lm(Y ~ 1 + X2 + I(X2^2), data = rt)
xx <- seq(from = 5, to = 7.5, by = 0.1)
yy <- lm.sol$coefficients[1] + lm.sol$coefficients[2]*xx + 
      lm.sol$coefficients[3]*xx^2
lines(xx, yy, lw=2, lty = 5)

lm.sol <- lm(Y ~ 1 + X1 + X2 + I(X2^2), data = rt)
lm.sol <- lm(Y ~ 1 + X1 + I(X2^2), data = rt)
lm.sol <- lm(Y ~ 1 + X1 + X2 + I(X2^2) + X1*X2, data = rt)
