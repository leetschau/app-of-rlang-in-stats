rt <- read.table("blood.dat", header = TRUE)
lm.sol <- lm(Y ~ 1 + X, data = rt); lm.sol
pre <- fitted.values(lm.sol)
res <- residuals(lm.sol); rst <- rstandard(lm.sol)
par(mai = c(0.9, 0.9, 0.2, 0.1))
plot(pre, res, xlab = "回归值", ylab = "残差")
plot(pre, rst, xlab = "回归值", ylab = "标准化残差")
