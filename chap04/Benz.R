## (1) 
m_CLK <- 39850; s_CLK <- 2005
price <- 42000
1 - pnorm(price, mean = m_CLK, sd = s_CLK)

m_is <- 34754; s_is <-1780
1 - pnorm(m_CLK, mean = m_is, sd = s_is)

pnorm(m_is, mean = m_CLK, sd = s_CLK)

price <- 37059
pnorm(price, mean = m_CLK, sd = s_CLK)

1 - pnorm(price, mean = m_is, sd = s_is)

## (2) 
p <- punif(c(25, 30), min = 20, max = 34)
p[2] - p[1]
p <- punif(c(25, 30), min = 21, max = 31)

1 - punif(30, min = 21, max = 31)
1 - punif(30, min = 20, max = 34)

## (3) 
p <- 1 - pexp(c(0.5, 1, 2, 3, 6, 9, 12), rate=1.37/3)
round(p*10000)/10000


