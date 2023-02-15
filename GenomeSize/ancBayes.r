#############
# ancBayes
#############

library(phytools)

tree <- read.nexus(file="knowntree_noDups2.nex")
x <- read.table(file="Plethodontidae_known_noDups.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
anc <- anc.Bayes(tree, x, ngen=1000000)

plot(tree, font=1); nodelabels(bg="white")

tree2 <- rotate(tree, 18)
tree2 <- rotate(tree2, 19)
tree2 <- rotate(tree2, 20)
tree2 <- rotate(tree2, 21)
tree2 <- rotate(tree2, 22)
tree2 <- rotate(tree2, 23)
tree2 <- rotate(tree2, 24)
tree2 <- rotate(tree2, 25)
tree2 <- rotate(tree2, 26)
tree2 <- rotate(tree2, 28)
tree2 <- rotate(tree2, 29)
tree2 <- rotate(tree2, 31)
plot(tree2)

obj <- contMap(tree2, x, plot=FALSE)
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
pdf(file="ancBayes_1M_narrow_noDups.pdf")
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

pdf(file="ancBayes_1M_wide_noDups.pdf", width=15)
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

#############
# New Colors
#############

tree <- read.nexus(file="tree_all.nex")
tree <- rotate(tree, 58)
plot(tree)
x <- read.table(file="Plethodontidae_known.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
fit <- anc.ML(tree, x, model="BM")
contMap(tree, x, method="anc.ML", legend=0.3*max(nodeHeights(tree))) -> obj
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
obj <- setMap(obj, colors=c("blue","mediumseagreen","yellow","orange","red"))
plot(obj)
pdf(file="testcolors3.pdf", width=15)
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
obj <- setMap(obj, colors=c("blue","mediumseagreen","yellow","orange","red"))
dev.off()

tree <- drop.tip(tree, "cinereus")
tree <- drop.tip(tree, "cinereus2")
tree <- drop.tip(tree, "cinereus3")
tree <- drop.tip(tree, "shenandoah2")

x <- read.table(file="Plethodontidae_known_noDups.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
contMap(tree, x, method="anc.ML", legend=0.3*max(nodeHeights(tree))) -> obj
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
obj <- setMap(obj, colors=c("blue","mediumseagreen","yellow","orange","red"))
plot(obj)

plot(tree)
plot(tree, cex=1)
plot(tree, cex=0.5)
plot(tree, cex=0.5); nodelabels(bg="white")
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
plot(tree, cex=0.5); nodelabels(cex=0.5)
plot(tree, cex=0.5); nodelabels(bg="NA", cex=0.5)
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)

fit

plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
pdf(file="tree_all_nodelabels_noDups.pdf", height=10)
plot(tree, cex=0.5); nodelabels(bg="white", cex=0.5)
dev.off()

tree2 <- read.nexus(file="tree_all.nex")
tree2 <- rotate(tree2, 58)
plot(tree2, cex=0.5); nodelabels(bg="white", cex=0.5)
pdf(file="tree_all_nodelabels_withDups.pdf", height=10)
plot(tree2, cex=0.5); nodelabels(bg="white", cex=0.5)
dev.off()

pdf(file="tree_all_nodelabels_noDups_nobg.pdf", height=10)
plot(tree, cex=0.5); nodelabels(bg="NA", cex=0.5)
dev.off()

pdf(file="tree_all_nodelabels_noDups_nobg.pdf", height=10)
plot(tree, cex=0.5); nodelabels(bg="NA", cex=0.5, frame="none")
dev.off()

treeKnown <- read.nexus(file="knowntree_noDups2.nex")
treeKnown <- rotate(treeKnown, 18)
treeKnown <- rotate(treeKnown, 19)
treeKnown <- rotate(treeKnown, 20)
treeKnown <- rotate(treeKnown, 21)
treeKnown <- rotate(treeKnown, 22)
treeKnown <- rotate(treeKnown, 23)
treeKnown <- rotate(treeKnown, 24)
treeKnown <- rotate(treeKnown, 25)
treeKnown <- rotate(treeKnown, 26)
treeKnown <- rotate(treeKnown, 28)
treeKnown <- rotate(treeKnown, 29)
treeKnown <- rotate(treeKnown, 31)
plot(treeKnown)
treeKnown <- rotate(treeKnown, 31)
plot(treeKnown)
pdf(file="tree_known_nodelabels_noDups_nobg.pdf")
plot(treeKnown); nodelabels(bg="NA", cex=0.5)
dev.off()

pdf(file="tree_known_nodelabels_noDups_nobg.pdf")
plot(treeKnown); nodelabels(bg="NA", cex=0.5, frame="none")
dev.off()
