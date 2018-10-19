#' @export
ResampleProp <- function(vec.data, k=1000, tab.col=1) {
  vec.data <- vec.data[stats::complete.cases(vec.data)]
 prop.comp <- sapply(1:k, function(x) { prop.table(table(vec.data[sample(1:length(vec.data), size=length(vec.data), replace=TRUE)]))[[tab.col]]})
 prop.comp
}
