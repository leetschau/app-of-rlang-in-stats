x<-scan("airln.data"); x
TS <- ts(x, start = c(1993, 10), frequency = 12)
plot(TS)

t<-1:54-1
lm.sol<-lm(x~1+t+I(t^2))
summary(lm.sol)
plot(t, x)
lines(predict(lm.sol))

m<-decompose(TS) 
plot(m)
s <- stl(TS,  s.window="per")
plot(s)