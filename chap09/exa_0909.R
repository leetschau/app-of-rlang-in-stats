x <- scan("power.data")
x <- ts(x, start=2001, frequency = 4)
m <- HoltWinters(x); m
p <- predict(m, n.ahead = 4, prediction.interval = TRUE); p
plot(m, p, lty.predicted = 4, lty.intervals = 5)