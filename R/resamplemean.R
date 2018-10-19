#' @export
ResampleMean <- function(vec.data, k=1000) {
  ifelse((is.vector(vec.data) & is.numeric(vec.data))  ,{
    vec.data <- vec.data[stats::complete.cases(vec.data)]
    Means <- sapply(1:k, function(x) { mean(vec.data[sample(1:length(vec.data), size=length(vec.data), replace=TRUE)])})
  }, stop(paste("Requires a numeric vector, not a",mode(vec.data), sep=" ")))
  return(Means)
}
