#### %输入数据
X <- 0:11; Y <- c(1, 5, 16, 17, 26, 11, 9, 9, 2, 1, 2, 1)
lambda <- weighted.mean(X, Y)

X <- 1:8; Y <- c(6, 16, 17, 26, 11, 9, 9, 6)
##%% 计算理论分布
F <-ppois(X, lambda); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i]<-F[i]-F[i-1]
##%% 作检验
(chi<- chisq.test(Y, p=p))

Pval <- 1 - pchisq(chi$statistic, df = m - 2)
names(Pval) <- "P_val"; Pval
