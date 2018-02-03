rc <- read.csv("NYReform.csv", header = TRUE); rc

Ta <- table(rc)
margin.table(Ta,1)
margin.table(Ta,2)
margin.table(Ta,3)
margin.table(Ta,4)

Ta <- table(rc[,c(1,2)]); Ta
label <- "是否赞成缩减立法经费"

par(mai=c(0.9,0.9, 0.2, 0.1))
r <- barplot(Ta, beside = TRUE, 
       col=c('lightblue', 'mistyrose', 'cyan'), 
       xlab = label, ylab = "频数", 
       legend.text=c('独立党', '共和党', '民主党'), 
       args.legend=list(x=3, y=max(Ta)))
text(r, Ta/2, Ta)
savePlot("Zogby_3", type="bmp")

Ta <- table(rc[,c(1,3)]); Ta
label <- "是否赞成对党客加以更多的限制"

Ta <- table(rc[,c(1,4)]); Ta
label <- "是否赞成对立法机关有固定服务年数的限制"

chisq.test(Ta)
prop.test(Ta)

binom.test(71, 100, p=0.5, al="g")
binom.test(70, 100, p=0.5, al="g")
binom.test(59, 100, p=0.5, al="g")
