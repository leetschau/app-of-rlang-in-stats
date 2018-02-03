rt <- read.table("blood.dat", header = TRUE)
lm.sol <- lm(Y ~ 1 + X, data = rt)
summary(lm.sol)

par(mai=c(0.9,0.9,0.2, 0.5))
library(MASS)
boxcox(lm.sol, lambda = seq(-4, 0, 1/10)) 

savePlot("Box_Cox-1", type = "eps")

lambda <- -2; rt$Ylam<-(rt$Y^lambda-1)/lambda
lm.lam<-lm(Ylam~X, data = rt); summary(lm.lam)

plot(fitted(lm.lam), resid(lm.lam), 
     pch = 19, col = "red",  
     xlab="变换后的回归值", ylab="变换后的残差")

savePlot("Box_Cox-2", type = "bmp")