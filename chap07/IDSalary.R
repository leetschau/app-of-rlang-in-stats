rm(list=ls(all=TRUE))
rc <- read.csv("IDSalary.csv"); rc
rc$��н <- rc$��н/1000
table(rc$����)
table(rc$����)
table(rc[,2:3])

b <- seq(from = 20, to = 65, by = 5); b
rc$���� <- cut(rc$��н, breaks = b)
table(rc[,c(2,4)])
table(rc[,c(3,4)])

quantile(rc$��н)
par(mai=c(0.9, 0.9, 0.5, 0.1))
hist(rc$��н, xlab='��н (��λ��ǧ��Ԫ)', ylab = 'Ƶ��',
     main = '��н��ֱ��ͼ')

t.test(rc$��н, mu=40)
t.test(rc$��н[rc$����=='����'], mu=50)
t.test(rc$��н[rc$����=='����'], mu=30)

var.test(rc$��н[rc$����=='����'], rc$��н[rc$����=='����'])
t.test(rc$��н[rc$����=='����'], rc$��н[rc$����=='����'])
t.test(rc$��н[rc$����=='����'], rc$��н[rc$����=='����'], var.equal = T)

aov.sol <- aov(��н ~ ����, data = rc)
summary(aov.sol)

aov.sol <- aov(��н ~ ����, data = rc)
attach(rc)
pairwise.t.test(��н, ����)
plot(��н ~ ����)

tapply(��н, ����, mean)
tapply(��н, ����, mean)

aov.sol <- aov(��н ~ ����*����, data = rc)

matrix(tapply(��н, ����:����, mean), 
       nr = 2, nc = 3, byrow = T,
       dimnames=list(levels(����), levels(����)))

interaction.plot(����, ����, ��н, lwd = 2, col = 2:4)
interaction.plot(����, ����, ��н, lwd = 2, col = 2:3)
