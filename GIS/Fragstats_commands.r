#Some analysis of data from Fragstats

#Division NN

library(ggplot2)

data <- read.table("division_nn_proximity.txt", header=TRUE, sep="\t", row.names=1)
division <- data$division
proximity <- data$proximity
nn <- data$nn

data_nz <- read.table("division_nn_proximity_nonzero.txt", header=TRUE, sep="\t", row.names=1)
division_nz <- data_nz$division
proximity_nz <- data_nz$proximity
nn_nz <- data_nz$nn

g <- ggplot(data, aes(division, proximity, color=nn))

g + geom_point(pch=21, size=3, color="black", aes(fill=nn)) + scale_fill_gradient(low="blue", high="red")

g + geom_point(pch=21, size=3, color="black", aes(fill=nn)) + scale_fill_gradient(colours=rev(brewer.pal(5,"RdYlBu")))

g <- ggplot(data, aes(division, nn, color=proximity))

g + geom_point(pch=21, size=3, color="black", aes(fill=proximity)) + scale_fill_gradient(low="blue", high="red")

g + geom_point(pch=21, size=3, color="black", aes(fill=proximity)) + scale_fill_gradient(low="blue", high="red") + scale_y_log10(limits=c(1,1e3))

#PCA TO TRY
pca <- prcomp(data, center=TRUE, scale.=TRUE)
scores <- pca$x
loadings <- pca$rotation

plot(scores[,1], scores[,2])


#K-means clustering

data <- read.delim(file="fragstats.txt", header=TRUE)

kmeans(data$Division, centers=3, nstart=10) -> kmeans
kmeans$cluster
kmeans(data$Division, centers=4, nstart=10) -> kmeans4
kmeans4$cluster


#Fuzzy C-Means Clustering

library(e1071)

range <- read.table("fragstats_newest_sorted.txt", header=TRUE, sep="\t")
dr <- range$division
maxent <- read.table("fragstats_maxent_newest_sorted.txt", header=TRUE, sep="\t")
dm <- maxent$division
c3m2 <- cmeans(dm, centers=3, method="cmeans", verbose=TRUE, iter.max=100000, m=2)
u3m2 <- cmeans(dm, centers=3, method="ufcl", verbose=TRUE, iter.max=100000, m=2)


#Affinity Propagation Clustering (APCluster)

library(cluster)

ap_r3 <- apclusterK(negDistMat(r=2), dr, K=3)
heatmap(ap_r3)

ap_m3 <- apclusterK(negDistMat(r=2), dm, K=3)
heatmap(ap_m3)

