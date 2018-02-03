par(mai=c(0.9, 0.8, 0.4,0.1))
plot(airmiles, type='o', main = "airmiles data",
     ylab = "Passenger-Miles Flown by U.S. Commercial Airlines", 
     col = 4)
savePlot("airmiles", type="eps")