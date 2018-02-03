par(mai=c(0.9, 0.8, 0.4,0.1))
plot(nhtemp, main = "nhtemp data",
  ylab = "Mean annual temperature in New Haven, CT (deg. F)")
savePlot("nhtemp", type="eps")
