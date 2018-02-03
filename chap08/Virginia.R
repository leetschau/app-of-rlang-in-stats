##%% (1)
rt <- read.table('Virginia_1.data',  header = TRUE); rt
lm.sol <- lm(y ~ x1 + x2 + x3 + x4, data = rt)
summary(lm.sol)
step(lm.sol)

lm.sol <- lm(y ~ x1 + x4, data = rt)

add1(lm.sol, scope = ~ x1 + x2 + x3 + x4, test = "F")
drop1(lm.sol, test = "F")

par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(rt$x1, rt$y, type='n', xlab='�ͻ���˾�Ĺ�ģ(��������) / ������Ԫ', 
     ylab = '�깺������(�ɹ���) / ǧ��Ԫ')
points(rt$x1[rt$x4==1], rt$y[rt$x4==1], pch=19, cex=1.1, col=4)
points(rt$x1[rt$x4==0], rt$y[rt$x4==0], pch=21, lwd=2, col=2, cex=1.1)
abline(a=105.2630, b=1.4228, lwd=2, lty=1, col=4)
abline(a=0, b=1.4228, lwd=2, lty=5, col=2)

legend(10, 500,  
   col = c(4, 2), lty = c(1, 5), lwd = c(2, 2),  
   legend=c("�м��вɹ�����", "�޼��вɹ�����")) 
savePlot("Virginia", type="bmp")

##%% (2)
rt <- read.table('Virginia_2.data',  header = TRUE); rt
lm.sol <- lm(y ~ x1 + x2, data = rt)
summary(lm.sol)

lm.sol <- lm(y ~ 1 + x1 + x2 + x1*x2 + I(x1^2) + I(x2^2), data = rt)

par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(rt$x1, rt$y, type='p', pch = 19, col=4, cex=1.1, 
     xlab='ÿ��ƽ������ʱ��', ylab = '���۶� / ������Ԫ')

plot(rt$x2, rt$y, type='p', pch = 19, col=4, cex=1.1, 
     xlab='�ͻ�����', ylab = '���۶� / ������Ԫ')

##%% (3)
rt <- read.table('Virginia_3.data',  header = TRUE); rt
plot(rt$x, rt$y, type='p', pch = 19, col=4, cex=1.1, 
     xlab='Ա����', ylab = '���۶�/������Ԫ')
c <- 115
lm.sol <- lm(y~1+I(1/(x-c)), data=rt)
summary(lm.sol)

a <- lm.sol$coefficients[1]; b <- lm.sol$coefficients[2]
xx <- seq(from = 120, to = 220, by=1)
yy <- a + b/(xx-c)
lines(xx,yy, lwd=2, col=4)
legend(180, 24, col = 4, pch=c(19, -1), 
       lwd = c(NA, 2), legend = c("���ݵ�", "�ع�����")) 
d <- .1
zz <- yy- d*xx
plot(xx,zz, type="l", xlab='Ա����', ylab = '���۶�/������Ԫ')


x_opt <- c + sqrt(-b/d); x_opt
