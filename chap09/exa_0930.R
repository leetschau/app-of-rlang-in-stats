x <- scan("yarn.data"); x <- ts(x, start = 1964)
acf(diff(x))
pacf(diff(x))
x.arima <- arima(x, order=c(1,1,1)); x.arima

Box.test(x.arima$residuals, type ='Ljung')
tsdiag(x.arima)

x.pre<- predict(x.arima, n.ahead = 3)
par(mai = c(0.9, 0.9, 0.5, 0.1))
plot(x, xlab='ʱ�� / ��', ylab='ɴ���� / ���', lwd = 1, 
     xlim=c(1990, 2002), ylim=c(450, 700), 
     main = '1990 - 2002���й�ɴ���������Ԥ�������')
xpre <- ts(c(x[36], x.pre$pred), start = 1999)
xpre1 <-ts(c(x[36], x.pre$pred - 2*x.pre$se), start=1999)
xpre2 <-ts(c(x[36], x.pre$pred + 2*x.pre$se), start=1999)

lines(xpre, lty=4, lwd=2, col=2)
lines(xpre1, lty=5, lwd=1, col=4)
lines(xpre2, lty=5, lwd=1, col=4)

legend(1990, 700, legend = c("��ʵ����", "Ԥ������", "95% ��������"), 
       col=c(1, 2, 4), lty=c(1, 4, 5), lwd=c(1, 2, 1)) 
