rt <- read.table("insecticide.data")
rt$R <- rt$O/rt$S
t.test(R ~ E, data = rt)
