rm(list=ls(all=TRUE))
X <- scan("Enterprise_1.data"); X
A <- factor(c(gl(3,1,15), c(2,3,3)), labels=c('������', '����', '�ϲ�'))
A

aov.sol <- aov(X~A)
summary(aov.sol)

pairwise.t.test(X, A)
plot(X ~ A)
tapply(X, A, mean)

rm(list=ls(all=TRUE))
�۸� <- scan("Enterprise_2.data")
��ɫ <- gl(4, 9, labels = c('A', 'B', 'C', 'D'))
��Ӧ�� <- gl(3,1, 36)
Enter.aov <- aov(�۸� ~ ��ɫ*��Ӧ��)
summary(Enter.aov)

tapply(�۸�, ��ɫ, mean)
tapply(�۸�, ��Ӧ��, mean)

matrix(tapply(�۸�, ��ɫ:��Ӧ��, mean), 
       nr = 4, nc = 3, byrow = T,
       dimnames=list(levels(��ɫ), levels(��Ӧ��)))

rm(list=ls(all=TRUE))
X <- matrix(c(209, 483, 386, 32, 508, 185), nc = 2); X
chisq.test(X)
