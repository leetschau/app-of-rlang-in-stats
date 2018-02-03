source("exa_0301.R")

### 条形图
r <- barplot(drink, 
     col = c("lightblue", "mistyrose", 
             "lightcyan", "lavender", "cornsilk"),
     xlab = "饮料类型", ylab = "频数")
text(r, drink/2, format(drink))

r <- barplot(sex, col = c("lightblue", "mistyrose"), 
        xlab = "顾客性别", ylab = "频数")
text(r, sex/2, format(sex))

### 分类条形图
barplot(Ta, col = c("lightblue", "mistyrose"), 
        legend.text = c("男", "女"), 
        args.legend = list(x = "topleft"),
        xlab = "饮料类型", ylab = "频数") 

r <- barplot(Ta, beside=T, 
        col = c("lightblue", "mistyrose"),
        legend.text= c("男", "女"), 
        args.legend = list(x = 3, y = 8),
        xlab = "饮料类型", ylab = "频数") 
text(r, Ta/2, Ta)

