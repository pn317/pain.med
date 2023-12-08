#' Standardise pain medication names
#'
#' @param x Character vector of names to be standardised
#' @param ... Additional arguments passed to `calc_dist`
#' @param quiet Logical; (default = FALSE) if TRUE, run without messages
#'
#' @return Character vector the same length as `x`
#'
#' @export
#'
#' @examples
#' drugs <- c("Paracetamol", "Paracetomol")
#' standardise(drugs)
standardise <- function(x, ..., quiet = FALSE) {
  result <- tibble(old = x)
  dist <- calc_dist(x, ...)
  which_min <- apply(dist, 1, \(x) {
    ord <- order(x)
    standard_names$name[ord]
  })
  result %<>%
    mutate(matched_to = which_min[1,])
  if (!quiet) {
    cat("Summary of matched names :\n")
    result %>%
      distinct() %>%
      print()
  }
  return(result)
}
