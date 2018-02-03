x <- scan("DeBourgh.data")
x <- ts(x, start = c(1991,1), frequency = 12)

m <- HoltWinters(x)
c(m$alpha, m$beta, m$gamma)
m$coefficients

p <- predict(m,  n.ahead = 12, prediction.interval = TRUE)
par(mai = c(0.9, 0.9, 0.6, 0.1))
plot(m, p, lwd=2,  
     lty.predicted = 4, lty.intervals = 5, 
     xlab='时间 / 月' , ylab = '月度销售额 / 千美元',
     main='DeBourgh公司月销售额的实际数据和预测数据')
legend(1992, 920, legend=c('实际数据', '拟合值与预测值', '置信区间'), 
      lty=c(1, 4, 5), col=c(1, 2, 4), lwd=c(1, 2, 1))

savePlot("DeBourgh-1", type='bmp')

#############################################
y <- scan("DeBourgh_2.data")
y <- ts(y, start = 1988, frequency = 1)

source("moving.R"); source("smooth.R")
par(mai = c(0.9, 0.9, 0.6, 0.1))
plot(y, type="o", xlim=c(1988,2000), lwd=1, 
     xlab='时间 / 年' , ylab = '锁的单位成本 / 美元',
     main='单位成本的实际数据和预测数据')

M <- moving(y, k=3); M
pre <- ts(M$average, start=1988, frequency = 1)
points(pre, pch = 22, col = 2)
lines(pre, lwd=2, lty=4, col=2)

M <- moving(y, k=3, weighted = T); M
pre <- ts(M$average, start=1988, frequency = 1)
points(pre, pch = 24, col=4)
lines(pre, lwd=2, lty=2, col=4)

S <- smooth(y, alpha=0.7); S
pre <- ts(S$average, start=1988, frequency = 1)
points(pre, pch =25, col=6)
lines(pre, lwd=2, lty=5, col=6)

legend(1995.5, 85,  
   col = c(1, 2, 4, 6), lty = c(1, 4, 2, 5), 
   lwd = c(1, 2, 2, 2), pch = c(21, 22, 24, 25), 
   legend=c("观测值", "移动平均值", "加权移动平均值", "指数平滑值")) 

