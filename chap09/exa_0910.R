m <- HoltWinters(AirPassengers, seasonal = "multiplicative"); m
p <- predict(m, n.ahead = 12, prediction.interval = TRUE); p
par(mai = c(0.9, 0.9, 0.6, 0.1))
plot(m, p, lty.predicted = 4, lty.intervals = 5)
savePlot("AirPassengers_Holt", type="eps")
