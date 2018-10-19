#' @export
ResampleDiffMeans <- function(vec.1, vec.2, k=1000) {
  ifelse((is.vector(vec.1) & is.numeric(vec.1) & is.vector(vec.2) & is.numeric(vec.2))  ,{
    vec.1 <- vec.1[stats::complete.cases(vec.1)]
    vec.2 <- vec.2[stats::complete.cases(vec.2)]
    Diff.Means <- sapply(1:k, function(x) { mean(vec.1[sample(1:length(vec.1), size=length(vec.1), replace=TRUE)])-mean(vec.2[sample(1:length(vec.2), size=length(vec.2), replace=TRUE)])})
  },stop(paste("Requires a numeric vector, not a",mode(vec.1),"or",mode(vec.2), sep=" ")))
  return(Diff.Means)
}
