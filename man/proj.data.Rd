%####################################################################
% TANOVA:% proj.data.Rd
% Function: Write Documentation
% Weihong
% Aug 9, 2009
%####################################################################
\name{proj.data}

\alias{proj.data}

\title{Projection of Raw Data}

\description{Project the time course data onto the optimum direction}

\usage{
\method{proj}{data}(data,time.course,a,...)}

\arguments{
\item{data}{a data matrix containing expression values. Row and column represent gene (probe set) and array respectively. Columns are ordered by first by subject, then by time}
\item{time.course}{the number of time points per subject}
\item{a}{projection matrix}
\item{...}{other arguments to be passed on}
}

\value{
\item{d}{projected data. Row and column represent gene (probe set) and subject respectively.}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\keyword{TANOVA}
