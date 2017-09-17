plot.new()
plot.window(c(-2,2),c(-2,2))
segments(1,1,1,-1)
segments(1,-1,-1,-1)
segments(-1,-1,-1,1)
segments(-1,1,1,1)

x <- runif(2,-1,1)
points(x[1],x[2],col='red',lwd=1,pch=16)
xp <- runif(2,-1,1)
points(xp[1],xp[2],col='red',lwd=1,pch=16)

slope <- (x[2]-xp[2])/(x[1]-xp[1])
intercept <- x[2]-slope*x[1]

abline(intercept, slope, col="red")
