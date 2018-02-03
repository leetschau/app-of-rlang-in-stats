agriculture <- data.frame(
   Y = scan("agriculture.data"), 
   A = gl(4, 3),
   B = gl(3, 1, 12)
)
agriculture.aov <- aov(Y ~ A + B, data = agriculture)
summary(agriculture.aov)
