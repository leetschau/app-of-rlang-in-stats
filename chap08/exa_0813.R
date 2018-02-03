rt <- read.table("cigarette.data",  header = TRUE); rt
lm.sol <- lm(CO ~ TAR + NICOTINE + WEIGHT, data = rt)   
summary(lm.sol)

attach(rt)
cor.test(TAR, NICOTINE)
cor.test(TAR, WEIGHT)
cor.test(NICOTINE, WEIGHT)
