x <- scan("bank.data"); x <- ts(x, start = 1975)

par(mai=c(0.8, 0.8, 0.2, 0.1))
plot(x, type='o', xlab='年', ylab='优惠利率 / %')


