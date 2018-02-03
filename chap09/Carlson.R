x <- scan("Carlson.data")
x <- ts(x, start = c(1996,9), frequency = 12); x
plot(x)
acf(x, lag=12*4)

dx <- diff(diff(x, lag=12))
plot(dx)
s <- stl(x, s.window = 12)
plot(s)

x.arima <- arima(x, order=c(0, 1, 1), 
 seasonal = list(order = c(1, 1, 0), period = 12))
x.arima

x.pre <- predict(x.arima, n.ahead = 4); x.pre
plot(x, xlim=c(1997, 2001))
lines(x.pre$pred, lty=4, col=2)
lines(x.pre$pred-2*x.pre$se, lty=5, col=4)
lines(x.pre$pred+2*x.pre$se, lty=5, col=4)

#######################################################
y <- scan("Carlson_2.data")
w <- ts(y[49:52], start = c(2000,9), frequency = 12); w

z <- ts(y[1:48], start = c(1996,9), frequency = 12); z
dz <- diff(diff(z, lag=12))
plot(dz)

z.arima <- arima(z, order=c(0, 1, 1), 
 seasonal = list(order = c(0, 1, 0), period = 12))
z.arima

z.pre <- predict(z.arima, n.ahead = 4); z.pre$pred
plot(z, xlim=c(1997, 2001), ylim=c(44, 122))
lines(w, col=2)
lines(z.pre$pred, lty=4, col=4)
lines(z.pre$pred-2*z.pre$se, lty=5, col=5)
lines(z.pre$pred+2*z.pre$se, lty=5, col=5)

par(mai=c(0.9, 0.9, 0.6, 0.1))
plot(w, col=2, ylim=c(43,122), lwd=2, 
     xlab='时间 / 年', ylab = '月销售额 / 百万美元', 
     main = '所有杂货商店的月销售额及预测销售额')
lines(z.pre$pred, lty=4, col=4, lwd=2)
lines(z.pre$pred-2*z.pre$se, lty=5, col=5, lwd=2)
lines(z.pre$pred+2*z.pre$se, lty=5, col=5, lwd=2)
legend(2000.68, 120, legend=c('实际数据', '预测值', '置信区间'), 
      lty=c(1, 4, 5), col=c(2, 4, 5), lwd=c(2, 2, 2))

savePlot("Carlson_2", type="bmp")


