\name{ResampleMean}
\alias{ResampleMean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resample a Single Mean
}
\description{
A wrapper for sapply to resample means for a single vector input. ~~
}
\usage{
ResampleMean(vec.data, k = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vec.data}{
      a (non-empty) numeric vector of data values.
}
  \item{k}{
     Number of required resamples.  Defaults to 1000.
}
}
\details{
Simple wrapper for sapply with an embedded sample function of the data and some type checks.
}
\value{
A vector of \code{k} samples of the mean of \code{x} where the sample size is determined by the length of \code{x}.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
ResampleMean(rlnorm(1000))
ResampleMean(cars$dist)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
