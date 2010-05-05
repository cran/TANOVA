%####################################################################
% TANOVA:% z.score.Rd
% Function: Write Documentation
% Weihong
% Aug 9, 2009
%####################################################################
\name{z.score}

\alias{z.score}

\title{Z Score}

\description{This is an internal function for calculating Z-score by comparing observed F-statistics to bootstrap generated null F-statistics.}

\usage{z.score(F, F.null)}

\arguments{
\item{F}{Observed F statistics}
\item{F.null}{Bootstrap generated null F-statistics}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}
\keyword{TANOVA}
