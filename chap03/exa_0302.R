X <- scan("birth.data")/1000
table(cut(X, breaks = 10))
b<-c(-Inf, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, Inf)
table(cut(X, breaks = b))
