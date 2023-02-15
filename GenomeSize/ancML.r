#############
#ancML
#############

tree <- read.nexus(file="tree1.tree")
plot(tree)
tree <- read.nexus(file="tree_all.nex")
plot(tree)
plot(tree); nodelabels(bg="white")
tree <- rotate(tree, 58)
plot(tree)
plot(tree)
x <- read.table(file="Plethodontidae_known.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
fit <- anc.ML(tree, x, model="BM")
contMap(tree, x, method="anc.ML", legend=0.3*max(nodeHeights(tree)) -> obj
+
contMap(tree, x, method="anc.ML", legend=0.3*max(nodeHeights(tree))) -> obj
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
pdf(file="ancML_all_wide.pdf", width=15)
plot(obj, legend=0.3*max(nodeHeights(tree)), fsize=c(0.7,0.9))
dev.off()

summary(tree)
tree$tip.label

tree2 <- drop.tip(tree, "cinereus")
tree2 <- drop.tip(tree, "cinereus2")
tree2 <- drop.tip(tree, "cinereus")
tree2 <- drop.tip(tree2, "cinereus2")
tree2 <- drop.tip(tree2, "cinereus3")
tree2 <- drop.tip(tree2, "shenandoah2")
plot(tree2)
x <- read.table(file="Plethodontidae_known2.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
contMap(tree2, x, method="anc.ML", legend=0.3*max(nodeHeights(tree2))) -> obj
pdf(file="ancML_all_noDups_wide.pdf", width=15)
plot(obj, legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

# Trying to get the figure to look right
pdf(file="delete.pdf")
plot(tree2); nodelabels(bg="white")
dev.off()

pdf(file="delete.pdf", height=30)
plot(tree2); nodelabels(bg="white")
dev.off()

pdf(file="delete.pdf", height=20)
plot(tree2); nodelabels(bg="white")
dev.off()

pdf(file="delete.pdf", height=20)
plot(tree2); nodelabels(bg="white", font=0.5)
dev.off()

tree2 <- rotate(tree2, 92)
plot(tree2)
tree2 <- rotate(tree2, 93)
plot(tree2)
tree2 <- rotate(tree2, 78)
tree2 <- rotate(tree2, 79)
tree2 <- rotate(tree2, 80)
plot(tree2)
tree2 <- rotate(tree2, 85)
tree2 <- rotate(tree2, 86)
tree2 <- rotate(tree2, 87)
tree2 <- rotate(tree2, 88)
plot(tree2)
plot(tree2)
plot(tree2, font=0.5)
help(nodelabels)
plot(tree2); tiplabels(font=0.3)
plot(tree2)
help(plot)
plot(tree2)
tree2 <- rotate(tree2, 83)
plot(tree2)
tree2 <- rotate(tree2, 71)
tree2 <- rotate(tree2, 73)
tree2 <- rotate(tree2, 62)
tree2 <- rotate(tree2, 68)
tree2 <- rotate(tree2, 63)
tree2 <- rotate(tree2, 64)
tree2 <- rotate(tree2, 66)
plot(tree2)
contMap(tree2, x, method="anc.ML", legend=0.3*max(nodeHeights(tree2))) -> obj
pdf(file="ancML_all_noDups_wide.pdf", width=15)
plot(obj, legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

pdf(file="ancML_all_noDups_wide.pdf", width=15)
plot(obj, legend=0.2*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

# Fit the model
fit
summary(fit)
fit$missing.x

