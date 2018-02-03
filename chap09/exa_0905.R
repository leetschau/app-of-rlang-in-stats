(s <- stl(AirPassengers, s.window = "periodic"))
plot(s, main = "Seasonal Decomposition of Time Series by Loess") 
savePlot("AirPassengers3", type="eps")
