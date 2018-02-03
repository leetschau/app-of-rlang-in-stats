## soap

rm(list=ls(all=TRUE))
par(mai=c(0.9,0.9, 0.2, 0.1))

## 1.
## 1983年
X <- c('Dial'=15, '宝洁'=37.1, '高露洁-棕榄'=6.5, '联合利华'=24, '其他厂商'=17.4)
## 1991年
Y <- c('Dial'=19, '宝洁'=30.5, '高露洁-棕榄'=8, '联合利华'=31.5, '其他厂商'=11)
## 1999年
rt <- read.table('soap-1.data')
Z <- tapply(rt$销售额, rt$制造商, sum)
p <- round(prop.table(Z)*1000)/10; 

## 画条形图
A <- rbind(X, Y, p); A
r <- barplot(A, beside = T, ylim = c(0, 40), 
        legend.text = c(1983, 1991, 1999), 
        xlab='产生厂商', ylab = '百分比')
text(r, A+1, A)

## 2.
week <- scan("soap-2.data")
names(week) <- 1:52
barplot(week, xlab='周数', ylab = '销售量（百万块）')

m <- mean(week); s <- sd(week)
abline(h = m)
abline(h = c(m-s, m+s), lty=2)

data_outline <- function(x){
   Q <- quantile(x, probs =c(1/4, 3/4))
   data.frame(均值=mean(x), 最小值=min(x), 下四分位数=Q[1], 
              中位数=median(x), 上四分位数=Q[2], 最大值=max(x), 
              标准差=sd(x), 极差=max(x)-min(x), IQR=Q[2]-Q[1], 
              row.names=1)
}
data_outline(week)

z <-(week-m)/s
week[abs(z)>3]

boxplot(week)

