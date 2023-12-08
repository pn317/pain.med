
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pain.med

<!-- badges: start -->
<!-- badges: end -->

The goal of pain.med is to facilitate standardisation of medication
names from questionnaire responses

## Installation

You can install the development version of pain.med from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pn317/pain.med")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pain.med)
drugs <- c("Paracetamol", "Paracetomol")
standardise(drugs)
#> Summary of matched names :
#> # A tibble: 2 × 2
#>   old         matched_to 
#>   <chr>       <chr>      
#> 1 Paracetamol Paracetamol
#> 2 Paracetomol Paracetamol
#> # A tibble: 2 × 2
#>   old         matched_to 
#>   <chr>       <chr>      
#> 1 Paracetamol Paracetamol
#> 2 Paracetomol Paracetamol
```
