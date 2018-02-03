## ϰ�� 1
rm(list=ls(all=TRUE))
combn(LETTERS[1:6], 3)

## ϰ�� 2
rm(list=ls(all=TRUE))
choose(35, 5)*choose(12,2)

## ��д����
P <- function(m,n){
  choose(5, m)*choose(30, 5-m)/choose(35,5)*
  choose(2, n)*choose(10, 2-n)/choose(12,2)
}
##���񽱵ȵĸ���
P(m = 5, n = 2) #һ�Ƚ�
P(m = 5, n = 1) #���Ƚ�
P(m = 5, n = 0) + P(m = 4, n = 2)  #���Ƚ� 
P(m = 4, n = 1) + P(m = 3, n = 2)  #�ĵȽ� 
P(m = 4, n = 0) + P(m = 3, n = 1) + P(m = 2, n = 2)  #��Ƚ� 
P(m = 3, n = 0) + P(m = 1, n = 2) + P(m = 2, n = 1) + P(m = 0, n = 2) #���Ƚ� 

## ϰ�� 3
rm(list=ls(all=TRUE))
D <- expand.grid(ɫ��1=1:6, ɫ��2=1:6, ɫ��3=1:6)
D$���� = apply(D, 1, sum)
round(prop.table(table(D$����))*10000)/100


## ϰ�� 4 (�ֲ��ɵ������뷽��)
rm(list=ls(all=TRUE))
X <- 0:5
p <- c(0.1, 0.15, 0.3, 0.2, 0.15, 0.1)
m <- weighted.mean(X, w=p); m
weighted.mean((X-m)^2, w=p)

## ϰ�� 5 (����ֲ�)
rm(list=ls(all=TRUE))
pbinom(2, size = 20, prob = 1/5)
dbinom(4, size = 20, prob = 1/5)
1 - pbinom(3, size = 20, prob = 1/5)

## ϰ�� 6 (����ֲ�)
rm(list=ls(all=TRUE))
qbinom(1-0.01, size=200, prob=0.02)  

## ϰ�� 7 (����ֲ�)
rm(list=ls(all=TRUE))
## ת���ɶ���ֲ��� Ӯ1Ԫ����0.25Ԫ��Ӯ�����4�������100�������У����䲻Ӯ����ô
## ��Ĵ���Ӧ��Ӯ�Ĵ�����4������ˣ�����100�������гɹ�20�εĸ��ʡ�
dbinom(20, size = 100, prob = 1/4)


## ϰ�� 8
rm(list=ls(all=TRUE))
ppois(3, lambda=4)
dpois(10, lambda=4*3)
ppois(0, lambda=4)
ppois(0, lambda=2.4)

## ϰ�� 9
rm(list=ls(all=TRUE))
X <- scan("restaurant.data")
lambda <- mean(X)
ppois(0, lambda)
1 - ppois(7, lambda)
ppois(4, lambda*2)
ppois(6, lambda*2) - ppois(2, lambda*2)
ppois(8, lambda*3)

## ϰ�� 10
rm(list=ls(all=TRUE))
1 - phyper(q=0, m=2, n=8, k=3)
1 - phyper(q=0, m=2, n=8, k=4)
1 - phyper(q=0, m=2, n=8, k=5)
1 - phyper(q=0, m=2, n=8, k=7)

## ϰ�� 11
rm(list=ls(all=TRUE))
dhyper(1, m=4, n=16, k=5)
dhyper(4, m=4, n=16, k=5)

## ϰ�� 12
rm(list=ls(all=TRUE))
punif(10, min = 0, max = 20)- punif(5, min = 0, max = 20)
punif(15, min = 0, max = 20)- punif(5, min = 0, max = 20)

## ϰ�� 13
rm(list=ls(all=TRUE))
pnorm(350, mean=500, sd=100)
qnorm(.1, mean=500, sd=100)


## ϰ�� 14
rm(list=ls(all=TRUE))
1 - pnorm(170, mean=168, sd=6)
qnorm(.99, mean=168, sd=6)

## ϰ�� 15
rm(list=ls(all=TRUE))
X1 <- 90; p1 <- 1-359/10000
X2 <- 60; p2 <- 1151/10000
sigma <-(X1-X2)/(qnorm(p1)-qnorm(p2)); sigma
mu <- X1- sigma*qnorm(p1); mu
p <- 1 - 2500/10000
X <- mu + sigma*qnorm(p); X 

## ϰ�� 16
rm(list=ls(all=TRUE))
p <- pbinom(c(3,6), size=20, prob=0.5)
p <- pnorm(c(3,6)+.5, mean=20 * 0.5, sd=sqrt(20*0.25))
p[2] - p[1]

## ϰ�� 17
rm(list=ls(all=TRUE))
pexp(3, rate = 1/6)
qexp(0.2, rate = 1/6)

## ϰ�� 18
rm(list=ls(all=TRUE))
p1 <- 1 - pexp(10, 1/5)
p2 <- 1 - pbinom(0, size = 5, prob = p1); p2

## ϰ�� 19
rm(list=ls(all=TRUE))
s<-sample(1:6, 100, replace=T)
table(s)

## ϰ�� 20
rm(list=ls(all=TRUE))
n <- 100
s <- matrix(0, nc=3, nr=n)
for (i in 1:n){
    s[i,] <- sample(rep(1:6, 3), 3)
}
S <- apply(s, 1, sum)
table(S)

## ϰ�� 21
rm(list=ls(all=TRUE))
pnorm(150, mean=160, sd=20)
pnorm(150, mean=160, sd=20/sqrt(5))

for (n in 1:100){
   p <- pnorm(150, mean=160, sd=20/sqrt(n))
   if (p<0.01)
       break   
}
n

## ϰ�� 22
rm(list=ls(all=TRUE))
##X/0.3 ~ N(0, 1), ��׼��̬�ֲ���ƽ����Ϊchisq^2�ֲ���
1 - pchisq(16, df=10)

## ϰ�� 23
rm(list=ls(all=TRUE))
pchisq(15*2.04, df=15)

## ϰ�� 24
rm(list=ls(all=TRUE))
X<-scan()
12.8372    6.6721   15.6267   16.4384    9.2676   
20.9546   20.9458   14.8118   16.6365   15.8732

n <- length(X)
S <- sd(X)
t <- 2.85/(S/sqrt(n))
1- pt(t, df=n-1) + pt(-t, df=n-1)

## ϰ�� 24
rm(list=ls(all=TRUE))
n <- 100; p <- 0.3; phat <- c(0.25, 0.35)
pr <- pnorm(phat, mean = p, sd = sqrt(p*(1-p)/n))
pr[2] - pr[1]

