
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cgrasch

The goal of cgrasch is to demonstrate, and to some extent, demystify the
Rasch model. There are just two main functions, one to create a Rasch
model, and one to draw a Wright map, plus some helper functions.

For in-earnest Rasch and IRT work, please see one of the many packages
available on CRAN, some of which are:

- {eRm}

- {mirt}

- {TAM}

- {irt}

- {dexter}

- {RaschPy}

## Installation

You can install the development version of cgrasch from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("rich-a-rd/cgrasch")
```

## Example

The main function of this package is `cg_rm()`, which takes dichotomous
item scores and creates a Rasch model.

``` r
# library(cgrasch)
# data(dichotomous)
# model <- dichotomous |> 
#   cg_rm()
# model
```

The package includes a toy dataset of 9 candidates’ scores on 10
dichotomous items.

``` r
# dichotomous |> 
#   tidyr::pivot_wider(names_from = item, values_from = response) |> 
#   flextable::flextable()
```

There is also a function, `wright_map()`, which draws a Wright map of
the model.

``` r
# map <- model |> 
#   wright_map()
# map
```
