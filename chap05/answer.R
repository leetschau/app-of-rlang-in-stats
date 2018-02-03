## 习题 1
rm(list=ls(all=TRUE))
X <- scan("binom.data")
A1 <- mean(X); A2 <- mean(X^2)
p <- (A1+A1^2-A2)/A1; n<- A1^2/(A1+A1^2-A2)
c(n, p)

fun <- function(x, m){
    n <- x[1]; p <- x[2]
    c(n * p - m[1], n^2*p^2 + n*p*(1-p) - m[2])
}
nleqslv(x = c(30, 0.5), fn = fun, m = c(mean(X), mean(X^2)))

## 习题 2
rm(list=ls(all=TRUE))
x <- c(0.1, 0.2, 0.9, 0.8, 0.7, 0.7, 0.6, 0.5)
n <- length(x)
-n/sum(log(x))-1

loglike <- function(p) n*log(p+1) + p*sum(log(x))
optimize(loglike, interval = c(0, 1), maximum = T)

(2*mean(x)-1)/(1-mean(x))

## 习题 3
rm(list=ls(all=TRUE))
obj <- function(x){
    x1 <- x[1]; x2 <- x[2]; x3 <- x[3]; x4 <- x[4] 
    F <- c(x1+10*x2, sqrt(5)*(x3-x4), (x2-2*x3)^2, 
           sqrt(10)*(x1-x4)^2)
    f <- t(F) %*% F
    g <- function(x, F){
        J <- matrix(
             c(1, 10, 0, 0, 
               0, 0, sqrt(5), -sqrt(5), 
               0, 2*(x2-2*x3), -4*(x2-2*x3), 0, 
               2*sqrt(10)*(x1-x4), 0, 0, -2*sqrt(10)*(x1-x4)), 
        4, 4, byrow = T)
        2*t(J)%*% F      
    }
    attr(f, "gradient") <- g(x, F)
    f
}
nlm(obj, c(3, -1, 0, 1))

## 习题 4
rm(list=ls(all=TRUE))
x_bar <- 3338; S <- 629; n <- 100
alpha <- 0.05
a <- x_bar - S/sqrt(n)*qnorm(1 - alpha/2)
b <- x_bar + S/sqrt(n)*qnorm(1 - alpha/2)
c(a, b)

## 习题 5
rm(list=ls(all=TRUE))
X <- scan("hospital.data")
x_bar <- mean(X); S <- sd(X); n <- length(X) 
alpha <- 0.05
a <- x_bar - S/sqrt(n)*qnorm(1 - alpha/2)
b <- x_bar + S/sqrt(n)*qnorm(1 - alpha/2)
c(a, b)

## 习题 6
rm(list=ls(all=TRUE))
X <- scan("statistics.data")
alpha <- 0.01
x_bar <- mean(X); S <- sd(X); n <- length(X)
x_bar + S/sqrt(n)*qnorm(1 - alpha)

t.test(X, mu = 27.6, al = "l", conf.level = 0.99)

## 习题 7
rm(list=ls(all=TRUE))
x_bar <- 17.25; S <- 3.3; n <- 20
alpha <- 0.1
a <- x_bar - S/sqrt(n)*qt(1 - alpha/2, df = n-1)
b <- x_bar + S/sqrt(n)*qt(1 - alpha/2, df = n-1)
c(a, b)

alpha <- 0.05
alpha <- 0.01

## 习题 8
rm(list=ls(all=TRUE))
X <- c(1067, 919, 1196, 785, 1126, 936, 918, 1156, 920, 948)
x_bar <- mean(X); S <- sd(X); n <- length(X)
alpha <- 0.05
x_bar - S/sqrt(n)*qt(1 - alpha, df = n-1)

t.test(X, al="g")

## 习题 9
rm(list=ls(all=TRUE))
X<-scan()
28  42  58  48  45  55  60  49  50

x_bar <- mean(X); S <- sd(X); n <- length(X)
pt(sqrt(n)/S*(50-x_bar), df = n-1)

## 习题 10
rm(list=ls(all=TRUE))
x_bar <- 22.4; S <- 5; n <- 61; alpha <- 0.05

a <- x_bar - S/sqrt(n)*qnorm(1 - alpha/2)
b <- x_bar + S/sqrt(n)*qnorm(1 - alpha/2)
c(a, b)

a <- x_bar - S/sqrt(n)*qt(1 - alpha/2, df = n-1)
b <- x_bar + S/sqrt(n)*qt(1 - alpha/2, df = n-1)
c(a, b)

## 习题 11
rm(list=ls(all=TRUE))
m <- 397; n <- 902
p <- m/n; q <- 1 - p;  alpha <- 0.05
a <- p - qnorm(1 - alpha/2)*sqrt(p*q/n)
b <- p + qnorm(1 - alpha/2)*sqrt(p*q/n)
c(a,b)

binom.test(x=m, n=n) 
prop.test(x=m, n=n) 

## 习题 12
rm(list=ls(all=TRUE))
x_bar <- 3338; S <- 629
alpha <- 0.05; E <- 100
n <- qnorm(1 - alpha/2)^2*S^2/E^2; n

## 习题 13
rm(list=ls(all=TRUE))
p <- 0.5; E <- 0.05; alpha <- 0.1 
z <- qnorm(1 - alpha/2); (n <- z^2*p*(1-p)/E^2)
p <- 0.2; 

## 习题 14
rm(list=ls(all=TRUE))
Xbar <- 14.9; S1 <- 5.2; n1 <- 100
Ybar <- 10.3; S2 <- 3.8; n2 <- 85
alpha <- 0.05; z <- qnorm(1 - alpha/2)
S <- sqrt(S1^2/n1 + S2^2/n2)
c(Xbar - Ybar - z*S, Xbar - Ybar + z*S)

## 习题 15
rm(list=ls(all=TRUE))
X <- scan("exhition.data")
A <- gl(2,10, length(X))
Xbar <- mean(X[A==1]); S1 <- sd(X[A==1]); n1 <- length(X[A==1])
Ybar <- mean(X[A==2]); S2 <- sd(X[A==2]); n2 <- length(X[A==2])
alpha <- 0.01; z <- qnorm(1 - alpha/2)
S <- sqrt(S1^2/n1 + S2^2/n2)
c(Xbar - Ybar - z*S, Xbar - Ybar + z*S)

## 习题 16
rm(list=ls(all=TRUE))
X <- scan("experiment.data")
A <- gl(2, 5, length(X))
t.test(X ~ A, var.equal = T)

## 习题 17
rm(list=ls(all=TRUE))
X <- scan("resistance.data")
A <- factor(rep(1:2, c(4,5)))
t.test(X ~ A, var.equal = T)

## 习题 18
rm(list=ls(all=TRUE))
X_bar <- 393; S <- 24; n <- 36; mu <- 400
Z <- (X_bar - mu)/(S/sqrt(n)); Z
source("P_value.R")
P_value(Z, side=-1)

## 习题 19
rm(list=ls(all=TRUE))
X <- scan("blood_platelet.data")
t.test(X, mu = 225)
t.test(X, mu = 225, al = "l")

## 习题 20
rm(list=ls(all=TRUE))
binom.test(x = 57, n = 400, p = 0.147)

## 习题 21
rm(list=ls(all=TRUE))
binom.test(x = 178, n = 328)
prop.test(x = 178, n = 328)

## 习题 22
rm(list=ls(all=TRUE))
X <- scan("survey_score.data")
A <- gl(2,10, length(X))
Xbar <- mean(X[A==1]); S1 <- sd(X[A==1]); n1 <- length(X[A==1])
Ybar <- mean(X[A==2]); S2 <- sd(X[A==2]); n2 <- length(X[A==2])
Z <- (Xbar - Ybar)/sqrt(S1^2/n1 + S2^2/n2)
source("P_value.R")
P_value(Z)

t.test(X~A, conf.level = 0.99, var.equal = T)

## 习题 23
rm(list=ls(all=TRUE))
X <- scan("anemia.data")
A <- gl(2, 4, length(X))
t.test(X ~ A, var.equal = T)

## 习题 24
rm(list=ls(all=TRUE))
X <- scan("diabets.data")
A <- gl(2, 5, length(X))
t.test(X ~ A, var.equal = T)
t.test(X ~ A)
t.test(X ~ A, paired = T)

## 习题 25
rm(list=ls(all=TRUE))
X <- scan("anti_freezing.data")
A <- factor(rep(c(1,2,1,2), c(6, 5, 6, 5)))
t.test(X ~ A, var.equal = T)
t.test(X ~ A)

## 习题 26
rm(list=ls(all=TRUE))
prop.test(x = c(34, 31), n = c(70, 80))

## 习题 27
rm(list=ls(all=TRUE))
X <- scan("WHO.data")
prop.test(x = X[1:5], n = X[6:10])
pairwise.prop.test(x = X[1:5], n = X[6:10]) 
prop.trend.test(x = X[1:5], n = X[6:10]) 

## 习题 28
rm(list=ls(all=TRUE))
power.t.test(n=10, delta = 5, sd=10)
power.t.test(power=0.8, delta = 5, sd=10)

## 习题 29
rm(list=ls(all=TRUE))
n1 <-  8; X_bar <- 132.86; S1 <- 15.34
n2 <- 21; Y_bar <- 127.44; S2 <- 18.23
Sw <- sqrt(((n1-1)*S1^2+(n2-1)*S2^2)/(n1+n2-2))
T <- (X_bar - Y_bar)/(Sw*sqrt(1/n1+1/n2)); T

1-pt(T, df=n1+n2-2)

power.t.test(n=min(n1,n2), delta = X_bar - Y_bar, sd=Sw)
power.t.test(power=0.8, delta = X_bar - Y_bar, sd=Sw)

## 习题 30
rm(list=ls(all=TRUE))
power.prop.test(power=0.8, p1 = 34/70, p2 = 31/80)

## 习题 31
rm(list=ls(all=TRUE))
X <- scan()
15.2 17.5 19.6 16.6 21.3 17.1 15.0 15.5 20.0 16.2

source("var1.test.R")
var1.test(X, var = 4, al = "g")

## 习题 32
rm(list=ls(all=TRUE))
X <- scan("experiment.data")
A <- gl(2, 5, length(X))
var.test(X ~ A)

## 习题 33
rm(list=ls(all=TRUE))
X <- scan("diabets.data")
A <- gl(2, 5, length(X))
var.test(X ~ A)


