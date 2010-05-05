%####################################################################
% TANOVA:% sig.number.Rd
% Function: Write Documentation
% Baiyu Zhou & Weihong Xu
% Aug 9, 2009
%####################################################################
\name{sig.number}

\alias{sig.number}

\title{The number of significant genes in the FDR table at specified quantiles}

\description{Estimate the number of significant genes in the FDR table using user specified cutoff.}

\usage{sig.number(fdr.table,FDR=0.05,qt=-1)}

\arguments{
\item{fdr.table}{a table containing the estimated FDR for each gene}

\item{FDR}{the false discovery cutoff, the default is 0.05}

\item{qt}{a vector of quantiles for which FDR is estimated by averaging over B times 
of number of false genes. If qt=0.25 (0.5, 0.75, 0.9), FDR is estimated by 
25\% (50\%, 75\%, 90\%) quantiles of false genes over B times.Default is -1, 
which means all genes are used.}
}

\value{
The function returns a number showing the number of significant genes at specified FDR cutoff.
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}



\keyword{TANOVA}
