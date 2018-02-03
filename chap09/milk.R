x<- scan("milk.data"); x
TS <- ts(x, start=c(1962,1), frequency=12)
par(mai=c(0.9, 0.9, 0.2, 0.2))
plot(TS, xlab='时间', ylab='奶牛平均月产奶量 / 磅')

