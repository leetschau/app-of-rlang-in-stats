par(mai=c(0.9, 0.9, 0.6, 0.1))
plot(nottem, main='Series nottem')
acf(nottem, lag.max=10*12)

dx <- diff(nottem, lag = 12)
plot(dx, ylab='Differences (lag = 12)', main='Series nottem')
acf(dx, lag.max=10*12)
pacf(dx, lag.max=10*12)

savePlot("nottem", type='bmp')

nottem.arima <- arima(nottem, order=c(1,0,0), 
 seasonal = list(order = c(1, 1, 1), period = 12))
nottem.arima
tsdiag(nottem.arima)

nottem.pre <- predict(nottem.arima, n.ahead = 5*12); nottem.pre
plot(nottem, xlab='时间 / 年', ylab='气温 / 华氏', lwd = 1, 
     xlim=c(1935, 1945), ylim=c(34, 69), 
     main = '诺丁汉城堡的月平均气温和预测月平均气温')
lines(nottem.pre$pred, lty=4, lwd=2, col=2)
lines(nottem.pre$pred - 2*nottem.pre$se, lty=5, col=4)
lines(nottem.pre$pred + 2*nottem.pre$se, lty=5, col=4)
legend(1936, 69, c("真实数据", "预测数据", "95% 置信区间"), 
       col=c(1, 2, 4), lty=c(1, 4, 5), lwd=c(1, 2, 1)) 



plot(nottem.pre$pred, col=2, ylim = c(35,65))
