\name{ls.estimate}

\alias{ls.estimate}

\title{Least square estimation}

\description{
  This is an internal function. }

\usage{
  ls.estimate(data,f1,f2)
}

\arguments{

\item{data}{data matrix (gene * array). Each row is a gene. Each column is an array. 
If data are longitudinal (for example, time course measurements from patients), arrays 
from same experimental units (e.g. patient) should be adjacent to each other.}

\item{f1}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the first factor for corresponding array. The values of f1 should be 1,2,3,\dots}

\item{f2}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the second factor for the corresponding array. The values of f2 should be 1,2,3,\dots
If the experimental has only one factor, let f2=0.}
}

\value{
The output is a list object.
\item{Mab}{???}
\item{Ma}{???}
\item{Mb}{???}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongxu@gmail.com}}

\keyword{TANOVA}
