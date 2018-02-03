pareto_chart <- function(height, col = NULL, xlab = NULL){
    height <- sort(height, decreasing = TRUE)
    s <- sum(height); n<-length(height)
    par(mai = c(0.9,0.9, 0.9, 0.9))
    r <- barplot(height, col = col, xlab = xlab, 
                 ylab = "数量", ylim = c(0, s+s/20))
    text(r, height/2, format(height))
    cum <- cumsum(height)
    lines(r, cum, type = "o", lwd = 2, col = 'red')
    box()
    axis(1, at = r, labels = FALSE)
    at <- seq(0, s, by = s/5)
    label <- paste0(seq(0, 100, by=20), '%')
    axis(4, at = at, label = label) 
    abline(h = at, lty = 2)
    mtext("累积百分比", 4, 2.5)
}
