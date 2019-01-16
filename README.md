Single-cell ATAC-seq Signal Extraction and Enhancement with SCATE
====

## Overview
Single-cell sequencing assay for transposase-accessible chromatin (scATAC-seq) is a new technology for measuring genome-wide regulatory element activities in single cells. With the ability to analyze cells’ distinct behaviors in a heterogeneous cell population, this technology is rapidly transforming biomedical research. Data produced by scATAC-seq are highly sparse and discrete. Existing computational methods typically use these data to analyze regulatory pathway activities in single cells. They cannot accurately measure activities of individual cis-regulatory elements (CREs) due to data sparsity.
SCATE is a new statistical framework for analyzing scATAC-seq data. SCATE adaptively integrates information from co-activated CREs, similar cells, and publicly available regulome data to substantially increase the accuracy for estimating activities of individual CREs. We show that one can use SCATE to identify cell subpopulations and then accurately reconstruct CRE activities of each subpopulation. The reconstructed signals are accurate even for cell subpopulations consisting of only a few cells, and they significantly improve prediction of transcription factor binding sites. The accurate CRE-level signal reconstruction makes SCATE an unique tool for analyzing regulatory landscape of a heterogeneous cell population using scATAC-seq data.

## SCATE Installation

SCATE software can be installed via Github.
Users should have R installed on their computer before installing SCATE. R can be downloaded here: http://www.r-project.org/.
To install the latest version of SCATE package via Github, run following commands in R:
```{r }
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("GenomicAlignments", version = "3.8")
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("zji90/SCATE")
```

## User Manual

See below link:
https://github.com/zji90/SCATE/blob/master/vignettes/SCATE.pdf


## Contact the Author
Author: Zhicheng Ji, Weiqiang Zhou,  Hongkai Ji

Report bugs and provide suggestions by sending email to:

Maintainer: Zhicheng Ji (zji4@jhu.edu)

Or open a new issue on this Github page
