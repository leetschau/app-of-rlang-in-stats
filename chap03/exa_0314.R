x <- c(2, 4, -2, 3)/100; f <- c(3, 5, 1, 2)
m <- weighted.mean(log(1+x), w = f)
x_bar <- exp(m); x_bar
