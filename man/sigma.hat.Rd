%####################################################################
% TANOVA:% sigma.hat.Rd
% Function: Write Documentation
% Weihong
% Aug 9, 2009
%####################################################################
\name{sigma.hat}

\alias{sigma.hat}

\title{Estimation of Covariance Matrix}

\description{Internal function}

\usage{sigma.hat(y,f1,f2)}

\arguments{
\item{y}{a data matrix containing expression values. Row and column represent gene (probe set) and array respectively}

\item{f1}{a vector containing the levels of a factor in each array}

\item{f2}{a vector containing the levels of a factor in each array}

}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}


\keyword{TANOVA}
