## soap

rm(list=ls(all=TRUE))
par(mai=c(0.9,0.9, 0.2, 0.1))

## 1.
## 1983��
X <- c('Dial'=15, '����'=37.1, '��¶��-���'=6.5, '��������'=24, '��������'=17.4)
## 1991��
Y <- c('Dial'=19, '����'=30.5, '��¶��-���'=8, '��������'=31.5, '��������'=11)
## 1999��
rt <- read.table('soap-1.data')
Z <- tapply(rt$���۶�, rt$������, sum)
p <- round(prop.table(Z)*1000)/10; 

## ������ͼ
A <- rbind(X, Y, p); A
r <- barplot(A, beside = T, ylim = c(0, 40), 
        legend.text = c(1983, 1991, 1999), 
        xlab='��������', ylab = '�ٷֱ�')
text(r, A+1, A)

## 2.
week <- scan("soap-2.data")
names(week) <- 1:52
barplot(week, xlab='����', ylab = '������������飩')

m <- mean(week); s <- sd(week)
abline(h = m)
abline(h = c(m-s, m+s), lty=2)

data_outline <- function(x){
   Q <- quantile(x, probs =c(1/4, 3/4))
   data.frame(��ֵ=mean(x), ��Сֵ=min(x), ���ķ�λ��=Q[1], 
              ��λ��=median(x), ���ķ�λ��=Q[2], ���ֵ=max(x), 
              ��׼��=sd(x), ����=max(x)-min(x), IQR=Q[2]-Q[1], 
              row.names=1)
}
data_outline(week)

z <-(week-m)/s
week[abs(z)>3]

boxplot(week)
