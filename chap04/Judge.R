rc <- read.csv("judge.csv")
D <- tapply(rc$案件总数, rc$法庭类型, sum)
A <- tapply(rc$上诉案件数, rc$法庭类型, sum)
R <- tapply(rc$推翻案件数, rc$法庭类型, sum)

上诉案件率 <- round(A/D*100000)/100; 上诉案件率
推翻案件率 <- round(R/D*100000)/100; 推翻案件率

D <- tapply(rc$案件总数, rc$法官, sum)
A <- tapply(rc$上诉案件数, rc$法官, sum)
R <- tapply(rc$推翻案件数, rc$法官, sum)

ii <- order(推翻案件率, 上诉案件率)
cbind(上诉案件率, 推翻案件率)[ii,]
