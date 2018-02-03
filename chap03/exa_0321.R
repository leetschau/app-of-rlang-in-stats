X <- scan("birth.data")
source("kurt.R"); kurt(X) 
e1071::kurtosis(X, type = 2)
## 当type = 1时，两个函数的计算结果是相同的