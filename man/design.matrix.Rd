%####################################################################
% TANOVA:% design.matrix.Rd
% Function: Write Documentation
% Weihong Xu & Baiyu Zhou
% Aug 4, 2009
%####################################################################
\name{design.matrix}

\alias{design.matrix}

\title{Generate design matrix for two-way factorial analysis}

\description{
  This is an internal function to be called by \code{\link{ls.estimate}} to generate design matrix. 
  Users should call \code{\link{ls.estimate}} whenever is possible.}

\usage{
  design.matrix(f1,f2)}

\arguments{
\item{f1}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the first factor for corresponding array. The values of f1 should be 1,2,3,\dots}

\item{f2}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the second factor for the corresponding array. The values of f2 should be 1,2,3,\dots
If the experimental has only one factor, let f2=0.}
}

\value{
The output is a list object.
\item{X0}{???}
\item{Xa}{???}
\item{Xb}{???}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{ls.estimate}}
}

\keyword{TANOVA}
