s <- stl(AirPassengers, s.window = 'per')
par(mai=c(0.9, 0.9, 0.5, 0.1))
plot(AirPassengers, xlab='时间 / 年', ylab='航空乘客人数 / 千人')
lines(s$time.series[,2], lwd=2, lty=5)

savePlot("AirPassengers", type="bmp")

