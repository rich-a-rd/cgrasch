#' Apply the Rasch model to dichotomous data.
#'
#' @param df A dataframe of candidate response data to dichotomous items. The
#' dataframe should be in long format with person, item and response variables.
#' Missing data is allowed.
#'
#' @returns A list of outputs
#' @export
#'
#' @examples
#' data(dichotomous)
#' model <- dichotomous |>
#'   cg_rm()
#' model
cg_rm <- function(df, sensitivity) {

  if(missing(sensitivity)) sensitivity <- .00001

  candidate_data <- df

persons <- tib # Keep adding to the table of abilities over however many iterations

items <- tib # Keep adding to the table of difficulties over however many iterations

sum_squares <- dbl # Keep updating this value until it is close to zero, or the sensitivity

# purrr::accumulate(
#   .x = list(items),
#   .f = ~ if(sum_squares > sensitivity) {
#     .x |>
#       run_helper
#   } else {
#     .x
#   }
# )

  output <- list(
    person_abilities = persons,
    item_difficulties = items,
    final_person_abilities = persons |> dplyr::select(person, last_col),
    final_item_difficulties = items |> dplyr::select(item, last_col),
    final_sum_squares = final_ss
  )

  return(output)
}
