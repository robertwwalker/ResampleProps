\name{ResampleDiffMeans}
\alias{ResampleDiffMeans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resample a Difference of Means
}
\description{
A wrapper for sapply to resample two means and calculate a difference. ~~
}
\usage{
ResampleDiffMeans(vec.1, vec.2, k = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vec.1}{
      a (non-empty) numeric vector of data values.
}
  \item{vec.2}{
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
A vector of \code{k} samples of the difference of means of \code{vec.1} amd \code{vec.2} where the sample size is determined by the [non-missing] length of \code{vec.1} and \code{vec.2}, respectively.
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
ResampleDiffMeans(rlnorm(1000), rlnorm(10000, meanlog=1))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
