x <- c(3, 5, 7, 9, 10); y <- c(1, 2, 4, 6, 8)
wilcox.test(x, y, alternative = "greater") 

student <- data.frame(
    value = 1:10, 
    group = factor(c(2, 2, 1, 2, 1, 2, 1, 2, 1, 1))
)
wilcox.test(value ~ group, data = student, alternative = "greater")
               