

rm(list=ls(all=TRUE))
#load up prior simulated sumstats_file, nlines is the the number of prior draws 
Prior<- scan(("PriorFileName"),nlines=10000)
#load up observed sumstats file
ObservedSSVector<- scan(("obsSumVect"),nlines=1)

#load these into vectors, ncol is the number of columns in in your prior/sumstat file 
PRIOR<-matrix(Prior,ncol=26,byrow=T)
OBS<-matrix(ObservedSSVector,ncol=26,byrow=T)

#load up Beaumont R scripts and R packages
source("make_pd2005.r")
source("loc2plot.r")
library(locfit)

#load up the estimated parameter into its own vector, number refers to column number. 
Z<-PRIOR[,5]

#perform the acceptance/rejection, with the numbers referring to the summary statistics used 
Posterior <- makepdANY(OBS[1,c(14,15,16,17,18,19,20,21,23,24,25,26)],Z,PRIOR[,c(14,15,16,17,18,19,20,21,23,24,25,26)],0.1,seq(1,len=10000),T)


#make sure the accepted values are within the prior bounds (important if using local linear regression)
for (j in 1:1000)
{
if (Posterior$x[j]<0.0) Posterior$x[j]<-0.0 else  Posterior$x[j]<-Posterior$x[j]
}

for (j in 1:1000)
{
if (Posterior$x[j]>1.0) Posterior$x[j]<-1.0 else  Posterior$x[j]<-Posterior$x[j]
}

pdf("PosteriorPlot.pdf") 
plot.new()
plot.window(xlim=c(0,2), ylim=c(0,5))
lines(density(PRIOR[,5],bw=0.05),lty=2)
lines(density(Z,bw=0.1),lty=1)
axis(1)
axis(2)
title(xlab="Z")
title(ylab="Posterior Density")
box()
dev.off()

