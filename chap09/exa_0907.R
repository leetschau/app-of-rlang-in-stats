x <- scan("power.data"); t <- 1:16
lm.sol <- lm(x ~ 1+t)
summary(lm.sol)

par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(1:16, x, type='o', xlab = '��', ylab = '��������/����')
abline(lm.sol, lwd=2, lty=5, col=4)

legend(1.5, 175,  
   col = c(1, 4), lty = c(1, 5), lwd = c(1, 2), pch = c(21, -1), 
   legend=c("�۲�ֵ", "��������")) 

savePlot("power-2", type="bmp")