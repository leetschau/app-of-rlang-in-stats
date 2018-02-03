source("exa_0301.R")

### ����ͼ
r <- barplot(drink, 
     col = c("lightblue", "mistyrose", 
             "lightcyan", "lavender", "cornsilk"),
     xlab = "��������", ylab = "Ƶ��")
text(r, drink/2, format(drink))

r <- barplot(sex, col = c("lightblue", "mistyrose"), 
        xlab = "�˿��Ա�", ylab = "Ƶ��")
text(r, sex/2, format(sex))

### ��������ͼ
barplot(Ta, col = c("lightblue", "mistyrose"), 
        legend.text = c("��", "Ů"), 
        args.legend = list(x = "topleft"),
        xlab = "��������", ylab = "Ƶ��") 

r <- barplot(Ta, beside=T, 
        col = c("lightblue", "mistyrose"),
        legend.text= c("��", "Ů"), 
        args.legend = list(x = 3, y = 8),
        xlab = "��������", ylab = "Ƶ��") 
text(r, Ta/2, Ta)
