x <- treering[1:150]
x <- ts(x)
par(mai=c(0.9,0.9, 0.6, 0.1))
plot(x, main = 'Series x')
acf(x)
pacf(x)
savePlot("tree_pacf", type='eps')

arima(x, order = c(1,0,0))
arima(x, order = c(2,0,0))
arima(x, order = c(0,0,1))
arima(x, order = c(1,0,1))
arima(x, order = c(2,0,1))
arima(x, order = c(0,0,2))
arima(x, order = c(1,0,2))
arima(x, order = c(2,0,2))

x.arima <- arima(x, order = c(1,0,1))
AIC(x.arima)
BIC(x.arima)
AIC(x.arima, k = log(length(x)))

c <- x.arima$coef
sd <-sqrt(diag(x.arima$var.coef)) 
A <- rbind(c, c - 2*sd, c + 2*sd) 
rownames(A) <- c("coef", "lwr", "upr")
A
 
res <- x.arima$residuals
Box.test(res, lag = 10, fitdf = 2)
Box.test(res, type = "Ljung", lag = 10, fitdf = 2)

tsdiag(x.arima)

savePlot("tsdiag", type="eps")

x.pre <- predict(x.arima, n.ahead = 10); x.pre
lines(x.pre$pred, lty=5, col=2)
lines(x.pre$pred - x.pre$se, lty=5, col=2)
lines(x.pre$pred + x.pre$se, lty=5, col=2)

y <- treering[151:160]
y <- ts(y, start = 151)
lines(y, col=4)



