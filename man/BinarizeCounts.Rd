% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/preprocessing.R
\name{BinarizeCounts}
\alias{BinarizeCounts}
\alias{BinarizeCounts.default}
\alias{BinarizeCounts.Assay}
\alias{BinarizeCounts.Seurat}
\title{Binarize counts}
\usage{
BinarizeCounts(object, ...)

\method{BinarizeCounts}{default}(object, assay = NULL, verbose = TRUE, ...)

\method{BinarizeCounts}{Assay}(object, assay = NULL, verbose = TRUE, ...)

\method{BinarizeCounts}{Seurat}(object, assay = NULL, verbose = TRUE, ...)
}
\arguments{
\item{object}{A Seurat object}

\item{...}{Arguments passed to other methods}

\item{assay}{Name of assay to use. Can be a list of assays,
and binarization will be applied to each.}

\item{verbose}{Display messages}
}
\value{
Returns a \code{\link[Seurat]{Seurat}} object
}
\description{
Set counts >1 to 1 in a count matrix
}
\examples{
x <- matrix(data = sample(0:3, size = 25, replace = TRUE), ncol = 5)
BinarizeCounts(x)
BinarizeCounts(atac_small[['peaks']])
BinarizeCounts(atac_small)
}
\concept{preprocessing}
