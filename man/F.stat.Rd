%####################################################################
% TANOVA:% F.stat.Rd
% Function: Write Documentation
% Baiyu Zhou & Weihong Xu
% Aug 6, 2009
%####################################################################

\name{F.stat}

\alias{F.stat}
\alias{F.stat2}

\title{Compute F-statistics for ANOVA model}

\description{
  This is an internal function to be called by \code{\link{tanova}} to generate design matrix. Users should call \code{\link{tanova}} whenever is possible.}

\usage{
  F.stat(data,f1,f2,type,equal.size=FALSE,trim, eb=FALSE)
  F.stat2(data,f1,f2,tp,type,trim,eb=FALSE)
  }

\arguments{

\item{data}{a data matrix containing expression values. Row and column represent gene (probe set) and array respectively}

\item{f1}{a vector containing the levels of a factor in each array}

\item{f2}{a vector containing the levels of a factor in each array}

\item{tp}{a vector with length equal to the number of arrays. Each entry indicates 
the time point for the corresponding array. tp takes values 1,2,3 \dots. For non-time 
course data, let tp=0.}

\item{type}{type of test the null F-statistics is for, 1 for, 2 for, 3 for, 4 for}

\item{trim}{the fraction (0 to 0.5) of observations to be trimmed from each end of x before the mean is computed. 
Values of trim outside that range are taken as the nearest endpoint.}

\item{equal.size}{a logical indicator of whether the number of replicates 
under each biological condition is equal. Default is FALSE.}

\item{eb}{whether to use Bayesian prior}
}

\value{
\item{F}{observed F-statistics}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\examples{
	##data=matrix(rnorm(10000,mean=6, sd=1),nrow=500, ncol=20)
	##f1=rep(c(1,2), each=10)
	##f2=rep(c(1,2), 10)
	##F.stat.null(data,f1,f2,type=1,trim=0,equal.size=FALSE,eb=FALSE)
}

\keyword{TANOVA}
