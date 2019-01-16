## ------------------------------------------------------------------------
suppressWarnings(suppressMessages(library(SCATE)))
set.seed(12345)
bamlist <- list.files(paste0(system.file(package="SCATE")
,"/extdata/example"),full.names = T)
satac <- sapply(sapply(bamlist,readGAlignmentPairs),GRanges)

## ------------------------------------------------------------------------
suppressWarnings(satac <- satacprocess(satac))

## ------------------------------------------------------------------------
cellclu <- cellcluster(satac,genome="hg19",clunum=2,perplexity=5)

## ------------------------------------------------------------------------
library(ggplot2)
plotdata <- data.frame(tSNE1=cellclu$tsne[,1],tSNE2=cellclu$tsne[,2],
Cluster=as.factor(cellclu$cluster))
ggplot(plotdata,aes(x=tSNE1,y=tSNE2,col=Cluster)) + geom_point()

## ------------------------------------------------------------------------
SCATEres <- SCATE(satac[cellclu$cluster==1],genome="hg19")
summary(SCATEres)

## ----eval=FALSE----------------------------------------------------------
#  cellcluster <- head(names(satac),n=3)
#  SCATEres <- SCATE(satac[cellcluster],genome="hg19")

## ------------------------------------------------------------------------
peakres <- peakcall(SCATEres,genome="hg19")
peakres[[1]]

## ----eval=FALSE----------------------------------------------------------
#  SCATEpipeline(bamlist,genome="hg19",perplexity=5)

