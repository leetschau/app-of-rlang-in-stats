## 习题 1
rm(list=ls(all=TRUE))
X <- scan("SoftDrink.data", what=""); X
Ta <- table(X); Ta
p <- prop.table(Ta); p 

##################################################################
## 习题 2
rm(list=ls(all=TRUE))
rt <- read.table("Crosstab.data")
Ta <- table(rt); Ta

prop.table(margin.table(Ta, 1))
prop.table(margin.table(Ta, 2))

##################################################################
## 习题 3
rm(list=ls(all=TRUE))
X <- scan("cock.data")
Ta <-table(cut(X, breaks = seq(from = 3.55, to = 4.95, by = 0.1))); Ta
prop.table(Ta)

##################################################################
## 习题 4
rm(list=ls(all=TRUE))
rc <- read.csv("OccupSat.csv"); rc
rc$满意度分数 <- cut(rc$满意度分数, breaks=seq(30, 90, by=10))
Ta <-table(rc); Ta

##################################################################
## 习题 5
rm(list=ls(all=TRUE))
X <- scan("SoftDrink.data", what="")
Ta <- table(X); p <- prop.table(Ta) 

r <- barplot(Ta)
text(r, Ta/2, format(Ta))

pie(Ta, radius = 0.9, label = paste0(names(Ta), ' ', p*100, '%'))

source("pareto_chart.R")
pareto_chart(Ta)

##################################################################
## 习题 6
rm(list=ls(all=TRUE))
X<-c(109, 75, 77, 99, 72, 117, 89, 62, 43); sum(X)

r <- barplot(X)
text(r, X/2, format(X))

p <- round(prop.table(X)*10000)/100
pie(X, radius = 0.9, label = paste0(1:9, '\n', p, '%'))

source("pareto_chart.R")
pareto_chart(X)

##################################################################
## 习题 7
rm(list=ls(all=TRUE))
par(mai=c(0.9, 0.8, 0.5, 0.2))
X <- scan("cock.data")
hist(X, breaks=seq(3.55, 4.95, by=0.1),
     col = "lightblue", border = "red",
     labels = TRUE, ylim=c(0, 14))

r <- hist(X, breaks=seq(3.55, 4.95, by=0.1), freq = FALSE)
lines(density(X), col = "blue", lwd=2)
x <- seq(from = 3.5, to = 5, by = .05)
lines(x, dnorm(x, mean(X), sd(X)), col = "red", lwd = 2)


##################################################################
## 习题 8
rm(list=ls(all=TRUE))
X <- scan("student.data")
stem(X)
Ta <- table(X); Ta
p <- prop.table(Ta); p
cumsum(p)

##################################################################
## 习题 9
rm(list=ls(all=TRUE))
X <- scan("SoftDrink.data", what="")
Ta <- table(X)
max(Ta)
which.max(Ta)

##################################################################
## 习题 10
rm(list=ls(all=TRUE))
X <- scan()
28  42  58  48  45  55  60  49  50

mean(X)
median(X)
table(cut(X, breaks=c(0, 50, 100)))
quantile(X, probs=c(0.25, 0.75))

##################################################################
## 习题 11
rm(list=ls(all=TRUE))
X <- scan("cock.data")
mean(X)
quantile(X, probs=c(0, 0.25, 0.5, 0.75, 1))

##################################################################
## 习题 12
rm(list=ls(all=TRUE))
X<-scan("music.data")
mean(X)
median(X)
table(X)
quantile(X, probs=0.4)

##################################################################
## 习题 13
rm(list=ls(all=TRUE))
X<-c( 18,  19,  20, 21, 22)
Y<-c(110, 110, 100, 90, 90)
weighted.mean(X, Y)

##################################################################
## 习题 14
rm(list=ls(all=TRUE))
X<-c(5, 7, 9, 11, 13, 15)
Y<-c(1, 1, 1,  1,  1,  5)
m<-weighted.mean(log(1+X/100), Y)
exp(m)

##################################################################
## 习题 15
rm(list=ls(all=TRUE))
X<-c(18.0, 20.4, 16.8, 17.4, 19.5)
Y<-c(21600, 10200, 46200, 17400, 15600)
1/weighted.mean(1/X, Y)

##################################################################
## 习题 16
rm(list=ls(all=TRUE))
X <- scan("cock.data")
max(X)-min(X)
Q<-quantile(X, p=c(0.25, 0.75), names=F)
Q[2]-Q[1]
var(X)
sd(X)

##################################################################
## 习题 17
rm(list=ls(all=TRUE))
X<-scan("music.data")
max(X)-min(X)
Q<-quantile(X, p=c(0.25, 0.75), names=F)
Q[2]-Q[1]
var(X)
sd(X)

##################################################################
## 习题 18
rm(list=ls(all=TRUE))
X <- scan("cock.data")
source("skew.R"); source("kurt.R")
skew(X); kurt(X)


##################################################################
## 习题 19
rm(list=ls(all=TRUE))
X<-scan("net.data")
source("skew.R"); skew(X)
hist(X)

##################################################################
## 习题 20
rm(list=ls(all=TRUE))
library(e1071)
X <- scan("cock.data")
skewness(X)
kurtosis(X)

##################################################################
## 习题 21
rm(list=ls(all=TRUE))
X <- scan("tree.data")
(m <- mean(X))
(s <- sd(X))
z <- (X-m)/s
length(X[abs(z)<=1]); length(X[abs(z)<=2]); length(X[abs(z)<=3])
length(X[abs(z)<=1])/length(X)
length(X[abs(z)<=2])/length(X)
length(X[abs(z)<=3])/length(X)

##################################################################
## 习题 22
rm(list=ls(all=TRUE))
rt<-read.table("car.data"); rt
apply(rt, 2, mean)
apply(rt, 2, median)
apply(rt, 2, quantile)
boxplot(rt)

##################################################################
## 习题 23
rm(list=ls(all=TRUE))
X <- scan("supermarket.data")
Y <- table(cut(X, breaks=seq(0, 220, by=20)))
prop.table(Y)
barplot(Y)
pie(Y)

hist(X)
stem(X)

mean(X)
median(X)
quantile(X)
quantile(X, p=0.4)

R<-range(X); R[2]-R[1]
Q<- quantile(X, p=c(0.25, 0.75)); Q[2]-Q[1]
sd(X)

source("skew.R"); source("kurt.R")
skew(X); kurt(X)

m <- mean(X); s <- sd(X); z <- (X-m)/s
length(X[abs(z)<=1]); length(X[abs(z)<=2]); length(X[abs(z)<=3])
length(X[abs(z)<=1])/length(X)
length(X[abs(z)<=2])/length(X)
length(X[abs(z)<=3])/length(X)

X[abs(z)>=2]
boxplot(X)






