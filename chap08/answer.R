## 习题 1
rm(list=ls(all=TRUE))
rt <- read.table("snow.data"); rt
lm.sol <- lm (Y ~ 1 + X, data = rt)
summary(lm.sol)
confint(lm.sol)
new <- list(X=7)
predict(lm.sol, newdata=new, interval = "p")
predict(lm.sol, newdata=new, interval = "c")

lm.sol <- lm (Y ~ -1 + X, data = rt)

## 习题 2
rm(list=ls(all=TRUE))
rt <- read.table("price.data")
(lm.sol <- lm(Y ~ 1 + X, data = rt))

c <- 1.38
(c*lm.sol$coefficients[2]-lm.sol$coefficients[1])/(2*lm.sol$coefficients[2])

## 习题 3
rm(list=ls(all=TRUE))
rt <- read.table("advert.data"); rt
lm.sol <- lm (y ~ 1 + x1 + x2, data = rt)
summary(lm.sol)
confint(lm.sol)
new <- list(x1 = 3.5, x2 = 1.8)
predict(lm.sol, newdata=new, interval = "p")
predict(lm.sol, newdata=new, interval = "c")


## 习题 4
rm(list=ls(all=TRUE))
rt <- read.table("tab823.data"); rt
lm.sol <- lm (Y ~ 1 + X, data = rt)
summary(lm.sol)
pre <- fitted.values(lm.sol)
rst <- rstandard(lm.sol)
plot(pre, rst)

lm.sol <- lm (sqrt(Y) ~ 1 + X, data = rt)

xx <- seq(from = 0, to = 13, by = 0.5)
yy <- (lm.sol$coefficients[1]+lm.sol$coefficients[2]*xx)^2
plot(rt$X, rt$Y)
lines(xx, yy)

library(MASS)
boxcox(lm.sol, lambda = seq(from = -.5, to = .5, by = 0.1))

lm.sol <- lm (log(Y) ~ 1 + X, data = rt)
yy <- exp(lm.sol$coefficients[1]+lm.sol$coefficients[2]*xx)

## 习题 5
rm(list=ls(all=TRUE))
rt <- read.table("snow.data"); rt
lm.sol <- lm(Y ~ 1 + X, data = rt)
summary(lm.sol)

pre <- fitted.values(lm.sol)
res <- residuals(lm.sol)
plot(pre, res)
shapiro.test(res)
source("dw.test.R"); dw.test(res)

rst <- rstandard(lm.sol); abs(rst)>2
h <- hatvalues(lm.sol); h
sum(h > 2*2/length(h)) ## 2
cook <- cooks.distance(lm.sol); cook
sum(cook > 1)  ##2

lm.2 <- lm(Y ~ 1 + X, data = rt, subset = -2)
summary(lm.2)
plot(rt$X, rt$Y)
abline(lm.sol)
abline(lm.2, lty=2)
text(rt$X[2], rt$Y[2], adj=-1.0, labels=2)


## 习题 6
rm(list=ls(all=TRUE))
rt <- read.table("snow.data"); rt
lm.sol <- lm(Y ~ 1 + X, data = rt)
plot(lm.sol, 1)
plot(lm.sol, 2)
plot(lm.sol, 3); abline( h = sqrt(2), lty=2)
plot(lm.sol, 4)
plot(lm.sol, 5)
influence.measures(lm.sol)

## 习题 7
rm(list=ls(all=TRUE))
rt <- read.table("mental.data"); rt
lm.sol <- lm(Y ~ 1 + X, data = rt)
summary(lm.sol)

pre <- fitted.values(lm.sol)
rst <- rstandard(lm.sol)
plot(pre, rst)
abline(h=c(-2, 2), lty=2)
text(pre[abs(rst)>2], rst[abs(rst)>2], adj=-0.5, 
     labels=(1:length(rt$X))[abs(rst)>2])

h <- hatvalues(lm.sol); h
sum(h > 2*2/length(h)) ## 4, 13, 17
cook <- cooks.distance(lm.sol); cook
sum(cook > 1)


## 习题 8
rm(list=ls(all=TRUE))
rt <- read.table("fat.data"); rt
lm.sol <- lm(Y ~ 1 + X1 + X2 + X3, data = rt)
summary(lm.sol)

attach(rt)
cor(cbind(X1, X2, X3))
cor.test(X1, X2)
cor.test(X1, X3)
cor.test(X2, X3)
detach(rt)

## 习题 9
rm(list=ls(all=TRUE))
rt <- read.table("price.data"); rt
(lm.sol <- lm(Y ~ 1 + X, data = rt))
plot(lm.sol, 1)
lm.sol <- lm(Y ~ 1 + X + I(X^2), data = rt)
summary(lm.sol)

## 习题 10
rm(list=ls(all=TRUE))
rt <- read.table("coffee.data"); rt
lm.sol <- lm(coffee ~ 1 + num, data = rt)
summary(lm.sol)
plot(lm.sol, 1)
lm2 <- lm(coffee ~ 1 + num + I(num^2), data = rt)
par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(rt$num, rt$coffee, xlab='售货机数量', ylab='咖啡销售量')
abline(lm.sol)

xx <- seq(from = -0.5, to = 6.5, by = 0.1)
yy <- lm2$coefficients[1] + lm2$coefficients[2]*xx + lm2$coefficients[3]*xx^2
lines(xx,yy, lty=5)

## 习题 11
rm(list=ls(all=TRUE))
rt <- read.table("baby.data",  header = TRUE); rt
lm.sol <- lm(head ~ 1 + height, data = rt)
summary(lm.sol)
plot(lm.sol, 1)

lm2 <- lm(head ~ 1 + height + I(height^2), data = rt)
xx <- seq(from = 45, to = 90, by = 5)
yy <- lm2$coefficients[1] + lm2$coefficients[2]*xx + lm2$coefficients[3]*xx^2

plot(rt$height, rt$head, xlab='平均身长', ylab='平均头围')
abline(lm.sol)
lines(xx,yy, lty=5)

## 习题 12
rm(list=ls(all=TRUE))
rt <- read.table("cigarette.data",  header = TRUE); rt
lm.sol <- lm(CO ~ TAR + NICOTINE + WEIGHT, data = rt)  
summary(lm.sol)
lm.ste <- step(lm.sol)
summary(lm.ste)

drop1(lm.sol, test = "F")
add1(lm.sol, scope = ~ TAR + NICOTINE + WEIGHT, test = "F")

lm.sol <- lm(CO ~ TAR + NICOTINE, data = rt)  
lm.sol <- lm(CO ~ TAR, data = rt)

## 习题 13
rm(list=ls(all=TRUE))
rt <- read.table("fat.data"); rt
lm.sol <- lm(Y ~ 1 + X1 + X2 + X3, data = rt)
summary(lm.sol)

lm.ste <- step(lm.sol)
summary(lm.ste)

drop1(lm.sol, test = "F")
add1(lm.sol, scope = ~ X1 + X2 + X3, test = "F")

lm.sol <- lm(Y ~ 1 + X1 + X3, data = rt)
lm.sol <- lm(Y ~ 0 + X1 + X3, data = rt)
lm.sol <- lm(Y ~ 0 + X1, data = rt)

