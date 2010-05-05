%####################################################################
% TANOVA:% data.form.Rd
% Function: format data into appropriate format
% Weihong Xu & Baiyu Zhou
% Aug 4, 2009
%####################################################################

\name{data.form}

\alias{data.form}

\title{Convert input data into appropriate format for TANOVA}

\description{
  This is an internal function to be called by \code{\link{tanova}} to format input data into appropriate format. 
  Users should call \code{\link{tanova}} whenever is possible.}

\usage{
data.form(data, f1, f2, tp)
}

\arguments{
\item{data}{data matrix (gene * array). Each row is a gene. Each column is an array. 
If data is longitudinal (e.g., time course measurements from patients), arrays 
from same experimental units (e.g. patient) should be next to each other (but not necessary in time course order.}

\item{f1}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the first factor for corresponding array. The values of f1 should be numeric 1,2,3\dots}

\item{f2}{a vector of length equal to the number of arrays. Each entry indicates the 
level of the second factor for the corresponding array. The values of f2 should be numeric 1,2,3\dots
If there's only one factor, let f2=0.}

\item{tp}{a vector of length equal to the number of arrays. Each entry indicates 
the time point for the corresponding array. The values of tp should be numeric 1,2,3 \dots For non-time 
course data, let tp=0.}
}

\value{
The output is a list object.
\item{d}{data matrix. nrow=#genes*#time points, ncol=factor levels (#factor1*#factor2). Rows are 
ordered by gene name and then by time points.}
\item{fc1}{a vector of length equal to the number of arrays divided by the number of time points. 
Each entry indicates the level of the first factor for the group of arrays with the same combination of 
factor levels. The values of fc1 should be numeric 1,2,3\dots}
\item{fc2}{a vector of length equal to the number of arrays divided by the number of time points. 
Each entry indicates the level of the first factor for the group of arrays with the same combination of 
factor levels. The values of fc1 should be numeric 1,2,3\dots}
}

\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{tanova}}
}

\examples{

	##f1=rep(1:2, each=8)
	##f2=rep(c(1,2,1,2), each=4)
	##tp=rep(1:4, 4)
	##data=matrix(rnorm(16*1000), nrow=1000, ncol=16)
	##formated.data=data.form(data,f1,f2,tp)
}

\keyword{TANOVA}
