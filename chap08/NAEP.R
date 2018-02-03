rm(list=ls(all=TRUE))
##%% 读取数据
rt <- read.table("NAEP_1.data", header = TRUE)
rt$Spending <- rt$Spending/1000
attach(rt)

##%% 问题(1)
gruop <- list(Spending = 0, Score = 0)
gruop$Spending <- cut(Spending, breaks = 3:9)
gruop$Score <- cut(Score, breaks = seq(from = 580, to = 680, by = 20))
(Ta <- table(gruop))

par(mai=c(0.9, 0.9, 0.4, 0.1))
hist(Spending, xlab = 'Spending / 1000$')
hist(Score)

savePlot("NAEP_hist-1", type="eps")
savePlot("NAEP_hist-2", type="eps")

##%% 问题(2)
lm.sol <- lm(Score ~ Spending, data = rt)
summary(lm.sol)
par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(Spending, Score, pch = 19, col = 1, 
     xlab = '教育经费支出/千美元', ylab = '综合分数')
abline(lm.sol, lwd =2, col = 'blue')

##%% 问题(3)
pre <- fitted.values(lm.sol)
rst <- rstandard(lm.sol); rst
sum(abs(rst)>2) ## 4 

(h <- hatvalues(lm.sol))
sum(h > 4/length(h))  ## 18, 27

(cooks <- cooks.distance(lm.sol))
sum(cooks>1)

influence.measures(lm.sol)

Index <- c(4, 18, 27)
lm.sol <- lm(Score ~ Spending, data = rt, subset = -Index )
summary(lm.sol)

Index <- c(4, 18, 27, 3, 2, 20, 25, 28)
Index <- c(4, 18, 27, 3, 2, 20, 25, 28, 11, 34, 15)
Index <- c(4, 18, 27, 3, 2, 20, 25, 28, 11, 34, 15, 33)
text(Spending[Index], Score[Index], labels = Index, adj = c(0.5, -0.5))
abline(lm.sol, lwd=2, lty = 5, col = 'red')
legend(6, 605, 
   c("全部点的回归方程", "去掉异常值点或强", "影响点的回归方程"), 
   col = c('blue', 'red', 'NA'), 
   lty = c(1, 5, -1), lwd = 2)


##%% 问题(4)
subset <- (Spending >= 4) & (Spending <= 6)
lm.sol <- lm(Score ~ Spending, data = rt, subset = subset)
summary(lm.sol)
subset[c(3,4)] <- FALSE


##%% 问题(5)
new <- read.table("NAEP_2.data", header = TRUE)
new$Spending <- new$Spending/1000
predict(lm.sol, newdata = new, interval = "prediction")
predict(lm.sol, newdata = new, interval = "confidence")

detach(rt)
