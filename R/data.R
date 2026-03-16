#' Candidate response data to 10 dichotomous items.
#'
#' A minimal dataset, in long form, to run rasch functions on, and for explainer
#' vignettes to run.
#'
#' @format ## `dichotomous`
#' A data frame with 90 rows and 3 columns:
#' \describe{
#'   \item{person}{Candidate identifiers}
#'   \item{item}{items}
#'   \item{response}{Correct, incorrect responses indicated by 1s and 0s.}
#' }
#' @source "data/dichotomous.rda"
#' @examples
#' # View dichotmous response data in wide format
#' dichotomous |>
#' tidyr::pivot_wider(names_from = item, values_from = response)
#'
"dichotomous"
