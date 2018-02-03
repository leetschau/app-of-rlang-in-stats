## ϰ�� 1
rm(list=ls(all=TRUE))
x <-scan()
17  21  19  23  18  16  20  18  22  20  15  22

x <- ts(x)
plot(x)

## ϰ�� 2
rm(list=ls(all=TRUE))
plot(Nile)
acf(Nile, lag=30)

## ϰ�� 3
rm(list=ls(all=TRUE))
plot(ldeaths)
acf(ldeaths, lag=5*12)

## ϰ�� 4
rm(list=ls(all=TRUE))
plot(co2)
acf(co2, lag=5*12)

## ϰ�� 5
rm(list=ls(all=TRUE))
plot(lh)
acf(lh)

## ϰ�� 6
rm(list=ls(all=TRUE))
d <- decompose(co2)
plot(d)

## ϰ�� 7
rm(list=ls(all=TRUE))
s <- stl(co2, s.window = "periodic")
plot(s)

## ϰ�� 8
rm(list=ls(all=TRUE))
x <-scan()
17  21  19  23  18  16  20  18  22  20  15  22

x <- ts(x)
source("moving.R")
moving(x, k=3)
moving(x, k=3, weighted = T)


## ϰ�� 9
source("smooth.R")
smooth(x, alpha = 0.3)
smooth(x, alpha = 0.7)


## ϰ�� 10
rm(list=ls(all=TRUE))
x <-scan()
21.6  22.9  25.5  21.9  23.9  27.5  31.5  29.7  28.6  31.4

x <- ts(x)
t <- 1:10
lm.sol <- lm(x~1+t)
summary(lm.sol)
plot(x)
abline(lm.sol, lwd=2, col=4, lty=5)

## ϰ�� 11
rm(list=ls(all=TRUE))
x <-scan("WorkHour.data")
x <- ts(x)
t <- 1:35
lm.sol <- lm(x~1+t)
summary(lm.sol)
plot(x)
abline(lm.sol, lwd=2, col=4, lty=5)

lm.sol <- lm(x~1+t+I(t^2))
fit<- predict(lm.sol)
lines(fit, lwd=2, col=4, lty=5)

lm.sol <- lm(x~1+t+I(t^2)+I(t^3))
lm.sol <- lm(x~1+t+I(t^2)+I(t^3)++I(t^4))

## ϰ�� 12
rm(list=ls(all=TRUE))
x <-scan()
2428  2951  3533  3618  3616  4264  4738  4460  5318  6915

x <- ts(x)
t <- 1:10
lm.sol <- lm(x~1+t)
summary(lm.sol)
plot(x)
abline(lm.sol, lwd=2, col=4, lty=5)
predict(lm.sol, data.frame(t=c(11,12)))

## ϰ�� 13
rm(list=ls(all=TRUE))
x <-scan()
17  21  19  23  18  16  20  18  22  20  15  22

x <- ts(x)
m <- HoltWinters(x, gamma = F); m
p <- predict(m, 2, prediction=T); p
plot(m,p)

## ϰ�� 14
rm(list=ls(all=TRUE))
x <-scan()
2428  2951  3533  3618  3616  4264  4738  4460  5318  6915

x <- ts(x)
m <- HoltWinters(x, gamma = F); m
p <- predict(m, 2, prediction=T); p
plot(m,p)

## ϰ�� 15
rm(list=ls(all=TRUE))
m <- HoltWinters(co2); m
p <- predict(m, 12, prediction=T); p
plot(m, p, xlim=c(1994, 1999), ylim=c(355, 370))


## ϰ�� 22
rm(list=ls(all=TRUE))
plot(diff(Nile))
plot(diff(ldeaths, lag=12))
plot(diff(diff(co2, lag=12)))

## ϰ�� 23
rm(list=ls(all=TRUE))
Nile.arima <- arima(Nile, order=c(1, 1, 1)); Nile.arima

## ϰ�� 24
rm(list=ls(all=TRUE))
ldeaths.arima <- arima(ldeaths, order=c(0, 1, 1), 
    seasonal = list(order = c(1, 1, 0), period = 12)
); ldeaths.arima


## ϰ�� 25
rm(list=ls(all=TRUE))
co2.arima <- arima(co2, order=c(0, 1, 1), 
    seasonal = list(order = c(0, 1, 1), period = 12)
); co2.arima

## ϰ�� 26
rm(list=ls(all=TRUE))
x <- scan("chemic.data")
x <- ts(x)
x

dx <- diff(x)
plot(dx)

x.arima <- arima(x, order=c(1,1,1)); x.arima
predict(x.arima, 10)

## ϰ�� 27
rm(list=ls(all=TRUE))
x <- scan("well.data")
x <- ts(x, frequency = 12)
x

dx <- diff(diff(x, lag = 12))
plot(dx)
acf(dx, lag = 5*12)
pacf(dx, lag = 5*12)
x.arima <- arima(x, order=c(1,1,0), 
    seasonal = list(order = c(0, 1, 1), period = 12))
x.arima
predict(x.arima, 12)


