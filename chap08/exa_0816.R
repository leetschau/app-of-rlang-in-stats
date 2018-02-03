rt <- read.table("Hald.data")
lm.sol <- lm(y ~ x1 + x2 + x3 + x4, data = rt)
summary(lm.sol)

lm.ste <- step(lm.sol)
summary(lm.ste)

lm.1 <- lm(y ~ 1, data = rt)
lm.ste <- step(lm.1, scope = ~ x1 + x2 + x3 + x4)

lm.ste <- step(lm.sol, k = 4)

lm.sol <- lm(y ~ x1 + x2 + x4, data = rt)
lm.sol <- lm(y ~ x1 + x2, data = rt)

add1(lm.sol, scope = ~ x1 + x2 + x3 + x4, test = "F")
drop1(lm.sol, test = "F")

lm.sol <- lm(y ~ 1, data = rt)
lm.sol <- lm(y ~ 1 + x2, data = rt)
lm.sol <- lm(y ~ 1 + x1 + x2, data = rt)

