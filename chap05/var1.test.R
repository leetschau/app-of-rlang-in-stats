var1.test <- function(x, var = 1, alternative = "two.sided", 
                      conf.level = 0.95){
    S2 <- var(x); df <- length(x) - 1
    chi2 <- df*S2/var; p <- pchisq(chi2, df) 
    if (alternative == "less" | alternative == "l"){
        a <- 0
        b <- df*S2/qchisq(1 - conf.level, df)
    }
    else if (alternative == "greater" | alternative == "g"){
        a <- df*S2/qchisq(conf.level, df)
        b <- Inf
        p <- 1 - p
    }
    else{
        a <- df*S2/qchisq((1+conf.level)/2, df)
        b <- df*S2/qchisq((1-conf.level)/2 ,df)
        p <- if (p<1/2) 2*p  else  2*(1-p)
    }
    list(X.squared = chi2, sample.var = S2, df = df, 
         conf.inter = c(a,b), p.value = p)
}


      
