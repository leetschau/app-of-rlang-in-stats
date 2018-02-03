X <- scan('Krisp_Kreme1.data')
A <- factor(rep(1:4, c(4, 6, 5, 7)), 
            labels =  paste0('����', 1:4))

wilcox.test(X[A=='����1'], mu = 7.62, exact = F, al="l")
wilcox.test(X[A=='����2'], mu = 7.62, exact = F, al="l")
wilcox.test(X[A=='����3'], mu = 7.62, exact = F, al="l")
wilcox.test(X[A=='����4'], mu = 7.62, exact = F, al="l")
wilcox.test(X[A=='����4'], mu = 7.62, exact = F, al="g")

wilcox.test(X[A=='����4'], mu = 7.62, exact = F, conf.int = T)

tapply(X, A, median)

par(mai=c(0.9, 0.9, 0.2, 0.1))
plot(X~A, xlab = "��������Ȧ���豸", ylab = "����Ȧֱ��", col = 2:5)

lm.sol <- lm(X~A)
anova(lm.sol)
pairwise.t.test(X,A)
tapply(X, A, shapiro.test)
bartlett.test(X~A)

kruskal.test(X~A)
pairwise.wilcox.test(X, A, exact = F)

kruskal.test(X,A)
pairwise.wilcox.test(X,A, exact = F)

rt <- read.table('Krisp_Kreme2.data', header = T)
with(rt, wilcox.test(�ƻ�ʵʩǰ, �ƻ�ʵʩ��, paired = TRUE))
with(rt, wilcox.test(�ƻ�ʵʩǰ, �ƻ�ʵʩ��, paired = TRUE, al="l"))

rt <- read.table('Krisp_Kreme3.data', header = T)
with(rt, cor.test(��������, ��ģ����,  method = "spearman"))
with(rt, cor.test(��������, ��ģ����,  method = "spearman", al="g"))
