## code to prepare `dichotomous` dataset goes here

set.seed(1234)
dichotomous <- tibble::tibble(
  p = 9:1/10,
  person = LETTERS[1:9],
  item = list(c(1:10))
) |>
  tidyr::unnest(item) |>
  dplyr::group_by(person) |>
  dplyr::mutate(
    response = sample(
      c(0,1),
      size = n(),
      replace = TRUE,
      prob = c(1-unique(p), unique(p)))
  ) |>
  dplyr::select(!p) |>
  dplyr::mutate(response = ifelse(person == "A" & item == 1, NA, response)) |>
  dplyr::ungroup()

usethis::use_data(dichotomous, overwrite = TRUE)
