### ����������ֵ��������׼��
Z <- scan("exam.data")
mu <- mean(Z); S <- sd(Z)

### ������ʵ�Ữ�ֳ�8��������
p <- seq(from = 0.125, to = 0.875, by = 0.125)
q <- qnorm(p, mean = mu, sd = S); q

### ��������ÿ���������ʵ��Ƶ��
Y <- table(cut(Z, breaks = c(-Inf, q, Inf))); Y

### ������Ŷȼ���
F <- pnorm(q, mean = mu, sd = S); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i]<-F[i]-F[i-1]
##%% ������
(chi<- chisq.test(Y, p = p))

### ���¼���Pֵ
Pval <- 1 - pchisq(chi$statistic, df = m - 3)
names(Pval) <- "P_val"; Pval

shapiro.test(Z)