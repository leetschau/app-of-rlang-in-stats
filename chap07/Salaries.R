rc <- read.csv("Salaries.csv")
Salaries.aov <- aov(����~ְҵ+�Ա�+ְҵ:�Ա�, data=rc)
summary(Salaries.aov)
attach(rc)
tapply(����, ְҵ, mean)
tapply(����, �Ա�, mean)

matrix(tapply(����, ְҵ:�Ա�, mean), 
       nr = 3, nc = 2, byrow = T,
       dimnames=list(levels(ְҵ), levels(�Ա�)))