P <- numeric(6) 
for(k in 0:5){
    P[k+1]<- choose(5, k)*choose(95, 20-k)/choose(100, 20)
}
P

dhyper(x=0:5, m=5, n=95, k=20)