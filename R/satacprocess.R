#' Preprocess scATAC-seq
#'
#' Preprocessing scATAC-seq samples
#'
#' This function filters out scATAC-seq with low library size and transforms the reads into middle points of the reads.
#' @param satac GRanges object or list of GRanges object of scATAC-seq reads.
#' @param libsizefilter Numeric variable giving the minimum library size. scATAC-seq samples with library size smaller than this cutoff will be discarded.
#' @return GRanges object of list of GRanges object after preprocessing.
#' @export
#' @import GenomicRanges
#' @author Zhicheng Ji, Weiqiang Zhou, Hongkai Ji <zji4@@zji4.edu>
#' @examples
#' satacprocess(list(cell1=GRanges(seqnames="chr1",IRanges(start=1:100+1e6,end=1:100+1e6)),cell2=GRanges(seqnames="chr2",IRanges(start=1:100+1e6,end=1:100+1e6))),libsizefilter=10)

satacprocess <- function(satac,libsizefilter=1000) {
      satac <- satac[sapply(satac,length) >= libsizefilter]
      n <- names(satac)
      satac <- lapply(satac,function(i) {
            start(i) <- end(i) <- round((start(i) + end(i))/2)
            i
      })
      names(satac) <- n
      satac
}

