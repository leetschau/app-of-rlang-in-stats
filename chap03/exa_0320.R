X <- scan("birth.data")
source("skew.R"); skew(X) 
e1071::skewness(X, type = 2)
## 当type = 1时，两个函数的计算结果是相同的