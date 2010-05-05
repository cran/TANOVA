%####################################################################
% TANOVA:% NANOVA.test.Rd
% Function: Write Documentation
% Baiyu Zhou & Weihong Xu
% Aug 9, 2009
%####################################################################
\name{NANOVA.test}

\alias{NANOVA.test}
\alias{NANOVA.test2}
\alias{NANOVA.test3}

\title{Non-parametric analysis of variance (NANOVA)}

\description{This are an internal functions to provide non-parametric ANOVA function.}

\usage{
NANOVA.test(data,f1,f2,type=2,B=100, robustify=FALSE,equal.size=FALSE,eb=FALSE)
NANOVA.test2(data,f1,f2,type,time.course,equal.size=FALSE,B=100,robustify=FALSE,eb=FALSE,df=0)
NANOVA.test3(data,f1,f2,tp,type=2,B=100,robustify=FALSE,eb=FALSE)
}

\arguments{
\item{data}{data matrix (gene * array). Each row is a gene. Each column is an array. 
If data are longitudinal (for example, time course measurements from patients), arrays 
from same experimental units (e.g. patient) should be adjacent to each other.}

\item{f1}{a vector with length equal to the number of arrays. Each entry indicates the 
level of the first factor for corresponding array. The values of f1 should be 1,2,3,\dots}

\item{f2}{a vector with length equal to the number of arrays. Each entry indicates the 
level of the second factor for the corresponding array. The values of f2 should be 1,2,3,\dots
If the experimental has only one factor, let f2=0.}

\item{tp}{a vector with length equal to the number of arrays. Each entry indicates 
the time point for the corresponding array. tp takes values 1,2,3 \dots. For non-time 
course data, let tp=0.}

\item{B}{the number of bootstrap resampling. Default is 100. Large B lead to more accurate 
inference, but need more running time.}

%#\item{FDR}{false discovery rate (FDR) for each test. Default is 0.05.}

\item{robustify}{a logical indicator of whether a robust test statistic should be used. Default is FALSE.}

\item{equal.size}{a logical indicator of whether the number of replicates 
under each biological condition is equal. Default is FALSE.}

%#\item{qt}{a vector of quantiles for which FDR is estimated by averaging over B times of number of false genes. If qt=0.25 (0.5, 0.75, 0.9), FDR is estimated by 25\% (50\%, 75\%, 90\%) quantiles of false genes over B times.Default is -1, which means all genes are used.}

%#\item{longitudinal}{a logical indicator of whether the data is longitudinal. The default is TRUE}

\item{type}{an indicator of TANOVA test type. 0: classifies genes into gene sets 
C1,C2, C3,C4 and C5 (constant genes). 1: test for interaction effect. 2: one-way NANOVA test. 3: test main effect f1. 4: test main effect f2.}
 
\item{eb}{a logical indicator of whether Empirical Bayesian method should be used in the estimation of significance}

\item{df}{degree of freedom}

\item{time.course}{the number of time points we sampled}

}


\value{Return list contains
\item{gene.order}{A numeric vector indicating the positions in which the genes are called significant for the test}
\item{F}{observed F-statistics}
\item{F.null}{bootstrap generated null F-statistics}
\item{pvalue}{a numeric vector of the corresponding p-value of NANOVA.}
\item{delta}{a numeric vector of summary statistic for NANOVA}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\keyword{TANOVA}
