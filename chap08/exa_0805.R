rm(list=ls(all=TRUE))
rt <- read.table("butler.data"); rt
lm.sol <- lm(y ~ x1 + x2, data = rt)
summary(lm.sol)
confint(lm.sol)

newdata <- data.frame(x1 = 100, x2 = 3)
predict(lm.sol, newdata, interval = "confidence")
predict(lm.sol, newdata, interval = "prediction")

sta <- rstandard(lm.sol)
stu <- rstudent(lm.sol)
rt$sta <- sta; rt$stu <- stu; rt

hatvalues(lm.sol)
cooks.distance(lm.sol)

par(mai=c(1.1,0.9,0.5,0.3))
plot(lm.sol, which = 1:4)
savePlot("plot-1", type = "eps")
