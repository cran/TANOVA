\name{tanova}

\alias{TANOVAmanual}
\alias{tanova}
\alias{gene.classifier1}
\alias{gene.classifier2}
\alias{gene.classifier3}

\title{Classification of genes by time course analysis of variance(TANOVA)}

\description{The method is useful to capture gene specific response during a time course 
and their dependency on multiple experimental factors. It is based on non-parametric ANOVA technique. It's applicable to both longitudinal and cross-sectional data. gene.classifier is the major function users should call. gene.classifier1/gene.classifier2/gene.classifier3 are internal functions called by gene.classifier for specific analysis situation.}

\usage{
tanova(data, f1, f2, tp, B=100, FDR=0.05,robustify=FALSE, equal.size=FALSE, qt=-1, longitudinal=TRUE, test.type=0,eb=FALSE,df=0)
gene.classifier1(data, f1, f2, B=100,FDR=0.05, robustify=FALSE, equal.size=FALSE, eb=FALSE,qt=-1)
gene.classifier2(data, f1, f2, B=100,FDR=0.05, robustify=FALSE, equal.size=FALSE, time.course, qt=-1,eb=FALSE,df=1)
gene.classifier3(data, f1, f2, tp, B=100,FDR=0.05, qt=-1,robustify=FALSE,eb=FALSE)
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

\item{FDR}{false discovery rate (FDR) for each test. Default is 0.05.}

\item{robustify}{a logical indicator of whether a robust test statistic should be used. 
Default is FALSE.}

\item{equal.size}{a logical indicator of whether the number of replicates 
under each biological condition is equal. Default is FALSE.}

\item{qt}{a vector of quantiles for which FDR is estimated by averaging over B times 
of number of false genes. If qt=0.25 (0.5, 0.75, 0.9), FDR is estimated by 
25\% (50\%, 75\%, 90\%) quantiles of false genes over B times.Default is -1, 
which means all genes are used.}

\item{longitudinal}{a logical indicator of whether the data is longitudinal. The default is TRUE}
 
\item{eb}{a logical indicator of whether Empirical Bayesian method should be used in 
the estimation of significance}

\item{test.type}{an indicator of TANOVA test type. 0: classifies genes into gene sets
C1,C2, C3,C4 and C5 (constant genes). 1: test for interaction effect. 2: one-way NANOVA test. 3: test main effect f1. 4: test main effect f2.}

\item{df}{degree of freedom}

\item{time.course}{the number of time points we sampled}

}

\value{
Depends on the test.type user specified, the output will be different. If test.type=0, the output is a 
list object containing four classes of genes that response to factors differently determined by \code{\link{tanova}}. They are described below:
\item{C1, C1.delta, C1.pvalue, a1}{the gene index, test statistic, p-value and projection vector of 
genes that show significant interaction effect of two treatment factors (f1*f2)}
\item{C2, C2.delta, C2.pvalue, a2}{the gene index, test statistic, p-value and projection vector of
genes that show significant additive effect of two treatment factors (f1+f2)}
\item{C3, C3.delta, C3.pvalue, a3}{the gene index, test statistic, p-value and projection vector of 
genes that show significant effect of treatment factor #1 (f1)}
\item{C4, C4.delta, C4.pvalue, a4}{the gene index, test statistic, p-value and projection vector of 
genes that show significant effect of treatment factor #2 (f2)}
If test.type=1,2,3,4. Only one of the above class will be returned. The items in the output list are 
described as follows:
\item{genes}{A numeric vector indicating the positions in which the genes are called significant for the test} 
\item{pvalue}{a numeric vector of the corresponding p-value of TANOVA.}
\item{delta}{a numeric vector of summary statistic for non-parametric ANOVA}
\item{a}{a matrix containing projection direction (gene by time point)}
\item{dir}{a list object returned by \code{\link{proj.dir}}}
\item{obj}{a list object returned by \code{\link{NANOVA.test}}}
}


\author{Baiyu Zhou \email{zhouby98@stanford.edu} & Weihong xu \email{weihongx@stanford.edu}}

\seealso{
  \code{\link{NANOVA.test}}
}


\examples{
	##f1=rep(1:2, each=8)
	##f2=rep(c(1,2,1,2), each=4)
	##tp=rep(1:4, 4)
	##data=matrix(rnorm(16*1000), nrow=1000, ncol=16)
	##result=gene.classifier(data,f1,f2,tp)
}

\keyword{TANOVA}
