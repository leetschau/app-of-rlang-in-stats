X <- c(1050, 960, 1120, 1250, 1280); mu0 <- 1000
t.test(X, mu = mu0, al = "g")

power.t.test(n = length(X), delta = mean(X) - mu0, sd = sd(X),
      type = "one.sample", alternative = "one.side")

power.t.test(power = 0.90, delta = mean(X) - mu0, sd = sd(X),
      type = "one.sample", alternative = "one.side")
