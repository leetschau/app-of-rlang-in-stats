source("moving.R"); source("smooth.R")
x <- scan("power.data")
y <- ts(x, start=2001, frequency = 4)
par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(y, type='o', xlab = '时间 / 年', ylab = '电力负荷/兆瓦', 
     xlim = c(2001, 2005))

M <- moving(y, k=4); M
pre <- ts(M$average, start=2001, frequency = 4)
points(pre, pch = 22, col = 2)
lines(pre, lwd=2, lty=4, col=2)

M <- moving(y, k=4, weighted = T); M
pre <- ts(M$average, start=2001, frequency = 4)
points(pre, pch = 24, col=4)
lines(pre, lwd=2, lty=2, col=4)

S <- smooth(y, alpha=0.7); S
pre <- ts(S$average, start=2001, frequency = 4)
points(pre, pch =25, col=6)
lines(pre, lwd=2, lty=5, col=6)

legend(2001.2, 175,  
   col = c(1, 2, 4, 6), lty = c(1, 4, 2, 5), 
   lwd = c(1, 2, 2, 2), pch = c(21, 22, 24, 25), 
   legend=c("观测值", "移动平均值", "加权移动平均值", "指数平滑值")) 

savePlot("power", type="bmp")