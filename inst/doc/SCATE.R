## ------------------------------------------------------------------------
suppressMessages(library(SCATE))
set.seed(12345)
bamlist <- list.files(paste0(system.file(package="SCATE"),"/extdata/example"),full.names = T)
satac <- sapply(sapply(bamlist,readGAlignmentPairs),GRanges)

## ------------------------------------------------------------------------
satac <- satacprocess(satac)

## ------------------------------------------------------------------------
cellclu <- cellcluster(satac,genome="hg19",perplexity=5)

## ------------------------------------------------------------------------
library(ggplot2)
ggplot(data.frame(tSNE1=cellclu$tsne[,1],tSNE2=cellclu$tsne[,2],Cluster=as.factor(cellclu$cluster)),aes(x=tSNE1,y=tSNE2,col=Cluster)) + geom_point() + theme_classic()

## ------------------------------------------------------------------------
SCATEres <- SCATE(satac[cellclu$cluster==1],genome="hg19")
summary(SCATEres)

## ------------------------------------------------------------------------
peakres <- peakcall(SCATEres,genome="hg19")
peakres[[1]]

