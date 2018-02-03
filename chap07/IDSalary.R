rm(list=ls(all=TRUE))
rc <- read.csv("IDSalary.csv"); rc
rc$年薪 <- rc$年薪/1000
table(rc$场所)
table(rc$资历)
table(rc[,2:3])

b <- seq(from = 20, to = 65, by = 5); b
rc$分组 <- cut(rc$年薪, breaks = b)
table(rc[,c(2,4)])
table(rc[,c(3,4)])

quantile(rc$年薪)
par(mai=c(0.9, 0.9, 0.5, 0.1))
hist(rc$年薪, xlab='年薪 (单位：千美元)', ylab = '频数',
     main = '年薪的直方图')

t.test(rc$年薪, mu=40)
t.test(rc$年薪[rc$场所=='户外'], mu=50)
t.test(rc$年薪[rc$场所=='室内'], mu=30)

var.test(rc$年薪[rc$场所=='室内'], rc$年薪[rc$场所=='户外'])
t.test(rc$年薪[rc$场所=='室内'], rc$年薪[rc$场所=='户外'])
t.test(rc$年薪[rc$场所=='室内'], rc$年薪[rc$场所=='户外'], var.equal = T)

aov.sol <- aov(年薪 ~ 场所, data = rc)
summary(aov.sol)

aov.sol <- aov(年薪 ~ 资历, data = rc)
attach(rc)
pairwise.t.test(年薪, 资历)
plot(年薪 ~ 资历)

tapply(年薪, 资历, mean)
tapply(年薪, 场所, mean)

aov.sol <- aov(年薪 ~ 场所*资历, data = rc)

matrix(tapply(年薪, 场所:资历, mean), 
       nr = 2, nc = 3, byrow = T,
       dimnames=list(levels(场所), levels(资历)))

interaction.plot(场所, 资历, 年薪, lwd = 2, col = 2:4)
interaction.plot(资历, 场所, 年薪, lwd = 2, col = 2:3)

