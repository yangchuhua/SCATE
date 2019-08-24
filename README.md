SCATE: Tools For Single-Cell ANalysis
====

## Introductions
Single-cell sequencing assay for transposase-accessible chromatin (scATAC-seq) is
the state-of-the-art technology for analyzing genome-wide regulatory landscape in
single cells. Due to data sparsity and discreteness, analyzing scATAC-seq data is
challenging. Existing computational methods cannot accurately reconstruct
activities of individual cis-regulatory elements (CREs) in individual cells. We
present a new statistical framework, SCATE, that adaptively integrates
information from co-activated CREs, similar cells, and publicly available regulome
data to substantially increase the accuracy for estimating individual CRE
activities in single cell and rare cell subpopulations. 

## SCATE Installation

SCATE software can be installed via Github.
Users should have R installed on their computer before installing SCATE. R can be downloaded here: http://www.r-project.org/.
To install the latest version of SCATE package via Github, run following commands in R:
```{r }
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("zji90/SCATE")
```

## User Manual
Check the following page for user manual:
https://github.com/zji90/SCATE/raw/master/inst/doc/SCATE.pdf

## Contact the Author
Author: Zhicheng Ji, Hongkai Ji

Report bugs and provide suggestions by sending email to:

Maintainer: Zhicheng Ji (zji4@jhu.edu)

Or open a new issue on this Github page
