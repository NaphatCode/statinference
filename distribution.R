
#T confidence intervals example
data(sleep)
head(sleep)

library(ggplot2)
g <- ggplot(sleep, aes(x = group, y = extra,group=factor(ID)))
g <- g+geom_line(size=2,aes(colour=ID))+geom_point(size=20,pch=21,fill="aquamarine",alpha=.5)
g

#showCols(cl=colors(),bg="gray33",rot=30,cex=0.75)

col=colors() #list of color names
showCols(col[1:100]) #plot the first 100 colors

colors()

g1 <- sleep$extra[1 : 10]; g2 <- sleep$extra[11 : 20]
difference <- g2 - g1
mn <- mean(difference); s <- sd(difference); n <- 10

mn + c(-1, 1) * qt(.975, n-1) * s / sqrt(n)
t.test(difference)
t.test(g2, g1, paired = TRUE)
t.test(extra ~ I(relevel(group, 2)), paired = TRUE, data = sleep)

head(sleep
     )
