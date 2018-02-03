source("exa_0301.R")

### ±ıÍ¼
pie(drink, radius=0.9)

Name <- paste0(names(drink), ' ', prop.table(drink)*100, '%')
pie(drink, radius = 0.9, labels = Name, 
    col = rainbow(length(drink)), font = 2, cex = 1.2)

Name <- paste0(names(drink), '\n ', drink)
