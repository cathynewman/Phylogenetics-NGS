library(phytools)

tree <- read.nexus(file="salamander_tree_rag1.nex")
plot(tree)
pdf(file="sal_nodes.pdf")
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
dev.off()

tree <- rotate(tree, 28)
tree <- rotate(tree, 30)
tree <- rotate(tree, 31)
tree <- rotate(tree, 32)
tree <- rotate(tree, 34)
tree <- rotate(tree, 35)
tree <- rotate(tree, 36)
tree <- rotate(tree, 37)
tree <- rotate(tree, 39)
tree <- rotate(tree, 47)
tree <- rotate(tree, 43)
tree <- rotate(tree, 44)
plot(tree)
tree <- rotate(tree, 41)
plot(tree)
pdf(file="sal_nodes.pdf")
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
dev.off()

x <- read.table(file="salamander_genomesize_pg.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]

fit <- anc.ML(tree, x, model="BM")
fit

obj <- contMap(tree, x, method="anc.ML", legend=0.3*max(nodeHeights(tree)))
obj <- setMap(obj, colors=c("blue","mediumseagreen","yellow","orange","red"))
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
pdf(file="salamander_known_ancML.pdf")
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
dev.off()
