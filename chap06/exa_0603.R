X <- scan("battery.data")
wilcox.test(X, mu = 140, exact = F, conf.int = T)
binom.test(sum(X>140), n = 19)

wilcox.test(X, mu = 140, exact = F, alternative = "less")
binom.test(sum(X>140), n = 19, alternative = "less")

