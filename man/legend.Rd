% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/legend.R
\name{legend}
\alias{legend}
\title{gsplot legend}
\usage{
legend(object, ...)
}
\arguments{
\item{object}{gsplot object}

\item{\dots}{Overall legend parameters may also be supplied as arguments. See 'Details'.}
}
\description{
If called with gsplot as first argument, will set the internal gsplot configuration
for legends. See \code{\link[graphics]{legend}} for more details.
}
\details{
Overall legend inputs:

\code{x, y} coordinates OR use \code{location} which is a character string indicating the legend location: above, toright, toleft, or below (see \code{\link[graphics]{legend}} for more)

\code{bty, bg, box.lty, box.lwd, box.col, cex, xjust, yjust
x.intersp, y.intersp, adj, text.width, merge, trace, 
plot, ncol, horiz, title, inset, xpd, title.col
title.adj, seg.len}

Parameter inputs for each graphics call (use inside of lines, points, curve, etc):

\code{legend.name, fill, col, border, lty, lwd, pch, angle, 
density, pt.bg, pt.cex, pt.lwd, text.col, text.font}
}
\examples{

topright <- gsplot() \%>\% 
 lines(x=c(3,4,3), y=c(2,4,6), legend.name="Lines", lty=5, col="orange") \%>\% 
 points(x=1, y=2, side=c(3,2), legend.name="Points 1", pch=1, col="blue") \%>\% 
 points(x=3, y=4, side=c(1,4), legend.name="Points 2", pch=5, col="red") \%>\% 
 legend(location="topright", title="LEGEND!!!")
topright

defaultLegend <- gsplot() \%>\% 
 points(x=1, y=2, side=c(3,2), legend.name="Points 1", pch=1, col="blue") \%>\%
 points(x=3, y=4, side=c(1,4), legend.name="Points 2", pch=5, col="red") \%>\%  
 legend()
defaultLegend
 
usrDef <- gsplot() \%>\% 
 points(x=1, y=2, side=c(3,2), legend.name="Points 1", cex=3) \%>\% 
 points(x=3, y=4, side=c(1,4), legend.name="Points 2", pch=5, col="red") \%>\% 
 lines(x=c(3,4,3), y=c(2,4,6), legend.name="Lines 1", lty=5, col="orange") \%>\%
 lines(x=c(1,2,5), y=c(1,8,5), legend.name="Lines 2", lwd=3) \%>\%  
 legend(x=1.5,y=4)
usrDef

gs <- gsplot() \%>\%
 points(1:4, 1:4, col=c("red","black","blue","green"), cex=1:4, pch=15:18) \%>\%
 legend(location = "topleft", pch=15:18,
       legend=c("a","b","c","d"),col="red", title = "Shape" ) \%>\%
 legend(x=1, y=2.5, pch=19, 
       legend=c("1","2","3","4"),col=c("red","black","blue","green"), title = "Color") \%>\%
 legend(location="bottomright",pch=19, legend=c("a1","a2","a3","a4"), 
       pt.cex = 1:4, title = "Size", col="red")
gs
}
\seealso{
\code{\link[graphics]{legend}}
}
