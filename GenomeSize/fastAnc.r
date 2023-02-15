library(phytools)

tree <- read.nexus(file="knowntree_noDups2.nex")
x <- read.table(file="Plethodontidae_known_noDups.txt", header=TRUE, row.names=1)
x <- as.matrix(x)[,1]
tree2 <- rotate(tree, 18)
tree2 <- rotate(tree, 19)
tree2 <- rotate(tree, 20)
tree2 <- rotate(tree, 21)
tree2 <- rotate(tree, 22)
tree2 <- rotate(tree, 23)
tree2 <- rotate(tree, 24)
tree2 <- rotate(tree, 25)
tree2 <- rotate(tree, 26)
tree2 <- rotate(tree, 28)
tree2 <- rotate(tree, 29)
tree2 <- rotate(tree, 31)
fit <- fastAnc(tree2, x, vars=TRUE, CI=TRUE)
fit

obj <- contMap(tree2, x, plot=FALSE)
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
plot(tree2)
plot(tree)
plot(tree2)
tree2 <- rotate(tree, 18)
plot(tree2)
tree2 <- rotate(tree, 19)
tree2 <- rotate(tree, 20)
tree2 <- rotate(tree, 21)
tree2 <- rotate(tree, 22)
tree2 <- rotate(tree, 23)
tree2 <- rotate(tree, 24)
tree2 <- rotate(tree, 25)
tree2 <- rotate(tree, 26)
tree2 <- rotate(tree, 28)
tree2 <- rotate(tree, 29)
tree2 <- rotate(tree, 31)
plot(tree2)
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
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
obj <- contMap(tree2, x, plot=FALSE)
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
pdf(file="fastAnc_narrow_noDups.pdf")
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

pdf(file="fastAnc_wide_noDups.pdf", width=15)
plot(obj, type="phylogram", legend=0.3*max(nodeHeights(tree2)), fsize=c(0.7,0.9))
dev.off()

write.table(fit, file="fastAnc_noDups.txt")
#Error in as.data.frame.default(x[[i]], optional = TRUE, stringsAsFactors = stringsAsFactors) : 
#  cannot coerce class ""fastAnc"" to a data.frame

traceback()
#5: stop(gettextf("cannot coerce class \"%s\" to a data.frame", deparse(class(x))), 
#       domain = NA)
#4: as.data.frame.default(x[[i]], optional = TRUE, stringsAsFactors = stringsAsFactors)
#3: as.data.frame(x[[i]], optional = TRUE, stringsAsFactors = stringsAsFactors)
#2: data.frame(x)
#1: write.table(fit, file = "fastAnc_noDups.txt")

write(fit, file="fastAnc_noDups.txt")
#Error in cat(list(...), file, sep, fill, labels, append) : 
#  argument 1 (type 'list') cannot be handled by 'cat'

summary(fit)

fit.df <- as.data.frame(do.call(rbind, fit))
#Warning message:
#In (function (..., deparse.level = 1)  :
#  number of columns of result is not a multiple of vector length (arg 1)

traceback()
#2: cat(x, file = file, sep = c(rep.int(sep, ncolumns - 1), "\n"), 
#       append = append)
#1: write(fit, file = "fastAnc_noDups.txt")

plotTree.wBars(tree2, x, type="phylogram", scale=0.002, fsize=0.7, tip.labels=TRUE)
plotTree.wBars(tree2, x, type="fan", scale=0.002, fsize=0.7, tip.labels=TRUE)
plotTree.wBars(tree2, x, type="phylogram", scale=0.002, fsize=0.7, tip.labels=TRUE)
plotTree.wBars(tree2, x, type="phylogram", scale=0.002, fsize=0.7, tip.labels=FALSE)
pdf(file="fastAnc_bars.pdf")
plotTree.wBars(tree2, x, type="phylogram", scale=0.002, fsize=0.7, tip.labels=TRUE)
dev.off()

plotTree.wBars(obj$tree, x, method="plotSimmap", tip.labels=TRUE, fsize=0.7, colors=obj$cols, type="phylogram", scale=0.002)
pdf(file="fastAnc_bars.pdf")
plotTree.wBars(obj$tree, x, method="plotSimmap", tip.labels=TRUE, fsize=0.7, colors=obj$cols, type="phylogram", scale=0.002)
dev.off()
