### 计算样本均值与样本标准差
Z <- scan("exam.data")
mu <- mean(Z); S <- sd(Z)

### 将整个实轴划分成8个子区间
p <- seq(from = 0.125, to = 0.875, by = 0.125)
q <- qnorm(p, mean = mu, sd = S); q

### 计算落入每个子区间的实际频数
Y <- table(cut(Z, breaks = c(-Inf, q, Inf))); Y

### 作拟合优度检验
F <- pnorm(q, mean = mu, sd = S); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i]<-F[i]-F[i-1]
##%% 作检验
(chi<- chisq.test(Y, p = p))

### 重新计算P值
Pval <- 1 - pchisq(chi$statistic, df = m - 3)
names(Pval) <- "P_val"; Pval

shapiro.test(Z)
