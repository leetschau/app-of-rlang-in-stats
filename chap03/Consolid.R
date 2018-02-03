## ConsolidʳƷ��˾
rm(list=ls(all=TRUE))
par(mai=c(0.9,0.9, 0.2, 0.1))

## (1) 
## ��ȡ����
rc <- read.csv("Consolid.csv"); rc[1:10,]

##����Ƶ������������ͼ
Ta <- table(rc)
(ma <- margin.table(Ta, 2))
r <- barplot(ma, xlab='֧����ʽ', ylab = 'Ƶ��', 
        ylim=c(0,42))
text(r, ma+1, ma)

## �������Ƶ�ʣ�������ͼ
p <- prop.table(ma)
Name <- paste0(names(p), '\n', p*100, '%')
par(mai=c(0.0,0.5, 0.0, 0.0))
pie(p, radius = 0.9, labels = Name, font = 2, cex = 1.2)


## (2)
##����Ƶ������������ͼ
ma <- tapply(rc$���ѽ��, rc$֧����ʽ, sum)
r <- barplot(ma, xlab='֧����ʽ', ylab = '���ѽ��', 
        ylim=c(0,1800))
text(r, ma+50, ma)

## �������Ƶ�ʣ�������ͼ
p <- round(prop.table(ma)*10000)/100
Name <- paste0(names(p), '\n', p, '%')
par(mai=c(0.0,0.0, 0.0, 0.5))
pie(p, radius = 0.9, labels = Name, font = 2, cex = 1.2)

##���㽻������б�
b <- c(0, 10, 20, 30, 40, 50, 60, 70, 80)
rc$���ѽ�� <- cut(rc$���ѽ��, breaks = b)
table(rc)

## (3)
rc <- read.csv("Consolid.csv"); rc[1:10,]
xName <- "�ֽ�"
xName <- "���ÿ�"
xName <- "֧Ʊ"
x <- rc$���ѽ��[rc$֧����ʽ==xName] 
hist(x, breaks=8, 
     main = paste0(xName, "���ѽ���ֱ��ͼ"),
     xlab = paste0(xName, "���ѽ��"), ylab = "Ƶ    ��")
## savePlot("Consolid", type="bmp")


## (4)
data_outline(x)

## (5)
boxplot(���ѽ��~֧����ʽ, data = rc)











