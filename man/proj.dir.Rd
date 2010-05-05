%####################################################################
% TANOVA:% proj.dir.Rd
% Function: Write Documentation
% Weihong
% Aug 9, 2009
%####################################################################

\name{proj.dir}

\alias{proj}
\alias{proj.dir}
\alias{proj.dir2}

\title{projection direction}

\description{This function is used to estimate the direction 
that maximize the ANOVA structure of interest.i.e., the direction that contains most useful signal 
}

\usage{
\method{proj}{dir}(data,f1,f2,time.course,type,eb=FALSE,df=0,\dots)
\method{proj}{dir2}(data, f1, f2, tp,type=2,trim=0,\dots)
}

\arguments{
\item{data}{a data matrix containing expression values. Row and column represent gene (probe set) and array respectively}

\item{f1}{a vector containing the levels of a factor in each array}

\item{f2}{a vector containing the levels of a factor in each array}

\item{time.course}{the number of time points for which we took sample}

\item{tp}{a vector containing the sampling time point of each array}

\item{type}{an indicator of TANOVA test type. 0: classifies genes into gene sets 
C1,C2, C3,C4 and C5 (constant genes). 1: test for interaction effect. 2: one-way NANOVA test.
 3: test main effect f1. 4: test main effect f2.}

\item{trim}{the percentage to be trimmed from each end of the data}

\item{eb}{a logical indicator of whether Empirical Bayesian method should be used in the estimation of significance}

\item{df}{degree of freedom}

\item{...}{other arguments to be passed on}
}

\value{
\item{a}{Estimated optimum projection direction (ANOVA direction)}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\keyword{TANOVA}
