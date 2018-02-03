diff1<-diff(AirPassengers)
par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(diff1, xlab='时间 / 年', ylab='航空乘客人数 / 千人')
diff12<-diff(diff1, lag=12)
plot(diff12, xlab='时间 / 年', ylab='航空乘客人数 / 千人')

savePlot("diff12", type="bmp")
