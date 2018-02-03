rt <- read.table("Matched.data")
Z <- rt$Method1 - rt$Method2
Z_bar <- mean(Z); S <- sd(Z); n <- length(Z)
alpha <- 0.05; t <- qt(1 - alpha/2, df = n-1)
c(Z_bar - S/sqrt(n)*t, Z_bar + S/sqrt(n)*t)

Z_bar - S/sqrt(n)*qt(1 - alpha, df = n-1)


t.test(rt$Method1, rt$Method2, paired = T)
t.test(rt$Method1, rt$Method2, paired = T, al="g")

