## Consolid食品公司
rm(list=ls(all=TRUE))
par(mai=c(0.9,0.9, 0.2, 0.1))

## (1) 
## 读取数据
rc <- read.csv("Consolid.csv"); rc[1:10,]

##计算频数，画出条形图
Ta <- table(rc)
(ma <- margin.table(Ta, 2))
r <- barplot(ma, xlab='支付方式', ylab = '频数', 
        ylim=c(0,42))
text(r, ma+1, ma)

## 计算相对频率，画出饼图
p <- prop.table(ma)
Name <- paste0(names(p), '\n', p*100, '%')
par(mai=c(0.0,0.5, 0.0, 0.0))
pie(p, radius = 0.9, labels = Name, font = 2, cex = 1.2)


## (2)
##计算频数，画出条形图
ma <- tapply(rc$消费金额, rc$支付方式, sum)
r <- barplot(ma, xlab='支付方式', ylab = '消费金额', 
        ylim=c(0,1800))
text(r, ma+50, ma)

## 计算相对频率，画出饼图
p <- round(prop.table(ma)*10000)/100
Name <- paste0(names(p), '\n', p, '%')
par(mai=c(0.0,0.0, 0.0, 0.5))
pie(p, radius = 0.9, labels = Name, font = 2, cex = 1.2)

##计算交叉分组列表
b <- c(0, 10, 20, 30, 40, 50, 60, 70, 80)
rc$消费金额 <- cut(rc$消费金额, breaks = b)
table(rc)

## (3)
rc <- read.csv("Consolid.csv"); rc[1:10,]
xName <- "现金"
xName <- "信用卡"
xName <- "支票"
x <- rc$消费金额[rc$支付方式==xName] 
hist(x, breaks=8, 
     main = paste0(xName, "消费金额的直方图"),
     xlab = paste0(xName, "消费金额"), ylab = "频    数")
## savePlot("Consolid", type="bmp")


## (4)
data_outline(x)

## (5)
boxplot(消费金额~支付方式, data = rc)












