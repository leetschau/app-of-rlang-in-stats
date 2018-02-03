rc <- read.csv("Salaries.csv")
Salaries.aov <- aov(收入~职业+性别+职业:性别, data=rc)
summary(Salaries.aov)
attach(rc)
tapply(收入, 职业, mean)
tapply(收入, 性别, mean)

matrix(tapply(收入, 职业:性别, mean), 
       nr = 3, nc = 2, byrow = T,
       dimnames=list(levels(职业), levels(性别)))