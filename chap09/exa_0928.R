x <- scan("overshort.data")
x <- ts(x)
par(mai=c(0.9,0.9, 0.6, 0.1))
acf(x)
pacf(x)

savePlot("overshort", type="eps")

(x.arima<- arima(x, order = c(0,0,1)))

c <- x.arima$coef
sd <-sqrt(diag(x.arima$var.coef)) 
A <- rbind(c, c - 2*sd, c + 2*sd) 
rownames(A) <- c("coef", "lwr", "upr")

tsdiag(x.arima)

plot(x, xlim=c(1,67))
x.pre<-predict(x.arma, n.ahead=10)
lines(x.pre$pred, lty=5, col=2)
lines(x.pre$pred-x.pre$se, lty=5, col=4)
lines(x.pre$pred+x.pre$se, lty=5, col=4)
