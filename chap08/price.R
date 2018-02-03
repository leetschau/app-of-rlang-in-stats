rt <- read.table("price.data"); rt
(lm.sol <- lm(Y~1+X, data=rt))
summary(lm.sol)

confint(lm.sol)

par(mai=c(0.9,0.9,0.2, 0.1))
with(rt, plot(X,Y, pch = 19, cex = 1.2, col="red", 
     xlab="销售价格 (单位：元)", ylab="销量／周 (单位：千件)"))
abline(lm.sol, lwd=2, col="blue")

savePlot("price", type="bmp")

plot(lm.sol, 1)

