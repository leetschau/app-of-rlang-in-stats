x <- scan("power.data"); t <- 1:16
Q1 <- rep(c(1, 0, 0, 0), 4)
Q2 <- rep(c(0, 1, 0, 0), 4)
Q3 <- rep(c(0, 0, 1, 0), 4)

lm.sol <- lm(x ~ 1+t+Q1+Q2+Q3)
summary(lm.sol)

new <- data.frame(t = 17:20, Q1 = c(1, 0, 0, 0), 
    Q2 = c(0, 1, 0, 0), Q3 = c(0, 0, 1, 0))
predict(lm.sol, new, interval = "prediction")

fit <- predict(lm.sol)
pre<- predict(lm.sol, new)
plot(t, x, type="l", xlim=c(0,20), ylim=c(90, 200), lwd=2, 
     xlab='时间 / 季' , ylab = '电力负荷 / 兆瓦')
lines(c(fit, pre), lty=5, col=2, lwd=2)

