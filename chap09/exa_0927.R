acf(nhtemp)
pacf(nhtemp)

nhtemp.arima <- arima(nhtemp, order = c(2,0,0))
nhtemp.arima

c <- nhtemp.arima$coef
sd <-sqrt(diag(nhtemp.arima$var.coef)) 
A <- rbind(c, c - 2*sd, c + 2*sd) 
rownames(A) <- c("coef", "lwr", "upr")
