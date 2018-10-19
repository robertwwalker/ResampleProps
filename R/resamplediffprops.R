ResampleDiffProps <- function(vec.1, vec.2, k=1000, tab.col=1) {
  vec.1 <- vec.1[stats::complete.cases(vec.1)]
  vec.2 <- vec.2[stats::complete.cases(vec.2)]
  Diff.Props <- sapply(1:k, function(x) { prop.table(table(vec.1[sample(1:length(vec.1), size=length(vec.1), replace=TRUE)]))[[tab.col]]-prop.table(table(vec.2[sample(1:length(vec.2), size=length(vec.2), replace=TRUE)]))[[tab.col]]})
  return(Diff.Props)
}
