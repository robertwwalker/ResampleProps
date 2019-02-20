\name{ResampleDiffProps}
\alias{ResampleDiffProps}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resample a Difference in Proportions
}
\description{
Resamples two sample proportions and calculates the difference \code{k} times.
}
\usage{
ResampleDiffProps(vec.1, vec.2, k = 1000, tab.col = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vec.1}{
a vector of binary observations [numerical, factor, or character]
}
  \item{vec.2}{
a vector of binary observations [numerical, factor, or character]
}
  \item{k}{
The number of resamples [default 1000].
}
  \item{tab.col}{
The column of the [proportions] table to resample. [defaults to 1]
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A vector of \code{k} samples of the difference in sample proportion where the sample size is determined by the (non-empty) length of \code{vec.1} and \code{vec.2}, respectively.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Robert W. Walker @PieRatio
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
prop.table
}
\examples{
ResampleProp(rbinom(100, 1, 0.4))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
