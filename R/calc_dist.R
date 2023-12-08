#' Calculate string distance matrix
#'
#' @param x Character vector of medication names to be standardised
#' @param ... Additional arguments to `stringdistmatrix`
#'
#' @return Matrix of string distances
#' @export
#'
#' @examples
#' drugs <- c("Paracetamol", "Paracetomol")
#' calc_dist(drugs)
calc_dist <- function(x, ...) {
  stringdistmatrix(
    x,
    standard_names$name,
    ...
  )
}
