rt <- read.table("cigarette.data",  header = TRUE, skip = 1); rt
lm.sol <- lm(CO ~ TAR + NICOTINE + WEIGHT, data = rt)   
summary(lm.sol)

attach(rt)
X <- cbind(TAR, NICOTINE, WEIGHT)
X <- scale(X)

cor(X)
eigen(cor(X))
kappa(cor(X))

lm.ste <- step(lm.sol)
summary(lm.ste)

cor.test(TAR, NICOTINE)

lm.ste <- step(lm.sol, scope= ~TAR+NICOTINE+WEIGHT)
summary(lm.ste)

