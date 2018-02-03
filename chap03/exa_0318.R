X <- scan("birth.data")
Q <- quantile(X, p = c(0.25, 0.75), names = F)
IQR <- Q[2]-Q[1]; IQR
quantile(X, p = seq(0, 1, by = 0.2))
