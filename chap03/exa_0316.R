x <- c(3.6, 4.2, 2.8)
f <- c(2.88, 5.04, 4.20)*10000
(x_bar <- 1/weighted.mean(1/x, w = f))
