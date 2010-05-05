%####################################################################
% TANOVA:% prior.sigma.Rd
% Function: Write Documentation
% Weihong
% Aug 9, 2009
%####################################################################
\name{prior.sigma}

\alias{prior.sigma}
\alias{prior.SIGMA}

\title{Compute the prior of covariance matrix}

\description{
	This is an internal function.
}

\usage{
prior.sigma(Q,f1,f2,tp=0)
prior.SIGMA(data,f1,f2,time.course)
}

\arguments{
\item{Q}{internal parameter}
\item{data}{a data matrix containing expression values. Row and column represent gene (probe set) and array respectively}

\item{f1}{a vector containing the levels of a factor in each array}

\item{f2}{a vector containing the levels of a factor in each array}

\item{tp}{a vector containing the sampling time point of each array}

\item{time.course}{the number of time points sampled}
}



\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\keyword{TANOVA}
