rm(list=ls(all=TRUE))
rt <- read.table("price.data"); rt
(lm.sol <- lm(Y~1+X, data=rt))
summary(lm.sol)

confint(lm.sol)

newdata <- data.frame(X = 5)
predict(lm.sol, newdata, interval="prediction")
predict(lm.sol, newdata, interval="confidence")

res <- residuals(lm.sol)
par(mai = c(0.9, 0.9, 0.5, 0.1))
qqnorm(res); qqline(res)

shapiro.test(res)

source("dw.test.R")
dw.test(res)

library(zoo); library(lmtest)
dwtest(Y ~ X, alternative = "two.sided", data = rt)


plot(lm.sol, 1)


lm.sol <- lm(Y~1+X+I(X^2), data=rt)
summary(lm.sol)

