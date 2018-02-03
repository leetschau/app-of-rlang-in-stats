rc <- read.csv("Restaurant.csv")
rc$食品价格 <- cut(rc$食品价格, breaks=c(9, 19, 29, 39, 49))
(Ta <- table(rc))

round(prop.table(Ta, 1)*10000)/100