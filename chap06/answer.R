## ϰ�� 1
rm(list=ls(all=TRUE))
binom.test(7, 10)
binom.test(7, 10, al="g")

## ϰ�� 2
rm(list=ls(all=TRUE))
X <- scan("fish.data")
binom.test(sum(X>14.6), length(X))
wilcox.test(X, mu=14.6)
wilcox.test(X, mu=14.6, exact = F, conf.int = T)

## ϰ�� 3
rm(list=ls(all=TRUE))
x <- c(4, 6, 7, 9, 10)
y <- c(1, 2, 3, 5, 8)
wilcox.test(x, y)
wilcox.test(x, y, al = "g")

## ϰ�� 4
rm(list=ls(all=TRUE))
rt <- read.table("method.data")
attach(rt)
binom.test(sum(A-B>0), length(A)-2)
wilcox.test((A-B)[A!=B], exact = F, al = "g")
wilcox.test(A, B, exact = F, al = "g")

## ϰ�� 5
rm(list=ls(all=TRUE))
X <- rep(1:5, c(0, 1, 9,  7 ,3))
Y <- rep(1:5, c(2, 2, 11, 4 ,1))
wilcox.test(X, Y)
wilcox.test(X, Y, exact = F, al = "g")

## ϰ�� 6
rm(list=ls(all=TRUE))
X <- c(315, 101, 108, 32)
chisq.test(X, p = c(9, 3, 3, 1)/16)

## ϰ�� 7
rm(list=ls(all=TRUE))
X <- 0:5
Y <- c(92, 68, 28, 11, 1, 0)
lambda <- weighted.mean(X, w=Y) 

X <- 0:3; 
Y <- c(92, 68, 28, 12)
##%% �������۷ֲ�
F <- ppois(X, lambda); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i] <- F[i] - F[i-1]
##%% ������
(chi<- chisq.test(Y, p = p))

##%% ����1�����ɶ�
Pval <- 1 - pchisq(chi$statistic, df = m - 2)
names(Pval) <- "P_val"; Pval

## ϰ�� 8
rm(list=ls(all=TRUE))
X <- scan("hotel.data")
(lambda <- mean(X))
table(X)

Z <- c( 2, 3, 4, 5, 6)
Y <- c(10, 9, 6, 6, 5)

F <- ppois(Z, lambda); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i] <- F[i] - F[i-1]
(chi<- chisq.test(Y, p = p))

Z <- c( 2, 3, 4, 5)
Y <- c(10, 9, 6, 11)

## ϰ�� 9
rm(list=ls(all=TRUE))
X <- scan("..\\chap03\\birth.data")
mu <- mean(X); S <- sd(X)

p <- seq(from = 0.1, to = 0.9, by = 0.1)
q <- qnorm(p, mean = mu, sd = S); q

Y <- table(cut(X, breaks = c(-Inf, q, Inf))); Y

F <- pnorm(q, mean = mu, sd = S); m <- length(Y) 
p <- F[1]; p[m] <- 1 - F[m-1]
for (i in 2:(m-1))  p[i]<-F[i]-F[i-1]
(chi<- chisq.test(Y, p = p))    

##%% ����2�����ɶ�
Pval <- 1 - pchisq(chi$statistic, df = m - 3)
names(Pval) <- "P_val"; Pval

shapiro.test(X)

## ϰ�� 10
rm(list=ls(all=TRUE))
X <- scan("fish.data")
shapiro.test(X)
t.test(X, mu=14.6)
t.test(X, mu=14.6, al="l")

## ϰ�� 11
rm(list=ls(all=TRUE))
x <- scan("school.data")
X <- matrix(x, nc=3, byrow = T)
chisq.test(X)

## ϰ�� 12
rm(list=ls(all=TRUE))
x <- matrix(c(358, 2492, 229, 2745), nc=2)
chisq.test(x)

## ϰ�� 13
rm(list=ls(all=TRUE))
x <- matrix(c(3, 6, 4, 4), nc=2)
fisher.test(x)

## ϰ�� 14
rm(list=ls(all=TRUE))
x <- matrix(c(10, 14, 11, 49), nc=2)
chisq.test(x)
fisher.test(x)

X <- array(c(2, 12, 8, 48, 5, 1, 0, 0, 3, 1, 3, 1), 
           dim = c(2, 2, 3))
mantelhaen.test(X)

## ϰ�� 15
rm(list=ls(all=TRUE))
rt <- read.table("score.data")
attach(rt)
cor.test(�߿�, ģ��)
cor.test(�߿�, ģ��, method = "spearman")
cor.test(�߿�, ģ��, method = "kendall")

## ϰ�� 16
rm(list=ls(all=TRUE))
rt <- read.table("student.data")
attach(rt)
cor.test(ʱ��, �ȼ�, method = "spearman", exact = F)
cor.test(ʱ��, �ȼ�, method = "kendall", exact = F)

