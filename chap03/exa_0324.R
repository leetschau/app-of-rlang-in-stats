A <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04,
       79.97, 80.05, 80.03, 80.02, 80.00, 80.02)    
B <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95,
       79.97)        
par(mai=c(0.5,0.5, 0.1, 0.1))
boxplot(A, B, names = c('A', 'B'), col = c(2, 3))
