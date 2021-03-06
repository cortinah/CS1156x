plot.new()
plot.window(c(-1.5,1.5),c(-1.5,1.5))
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

w <- c(intercept, slope, -1)

for (i in 1:25) {
z <- c(1,runif(1,-1,1),runif(1,-1,1))
p <- crossprod(z,w)
points(z[2],z[3],col='blue',lwd=1,pch=ifelse(p>0,8,15))
}
title(main='Homework #0')
