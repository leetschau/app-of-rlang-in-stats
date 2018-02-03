rt <- read.table("advert.data"); rt
lm.sol <- lm(y ~ 1 + x1 +x2, data = rt)
summary(lm.sol)
confint(lm.sol)

newdata <- data.frame(x1 = 3.5, x2 = 1.8)
predict(lm.sol, newdata, interval = "prediction")
predict(lm.sol, newdata, interval = "confidence")
