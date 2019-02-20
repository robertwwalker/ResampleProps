
<!-- README.md is generated from README.Rmd. Please edit that file -->
ResampleProps
=============

The goal of ResampleProps is to ...

Installation
------------

The `devtools` library for R allows package installation from GitHub

``` r
devtools::install_github("robertwwalker/ResampleProps")
```

Examples
========

There are four commands of similar structure: ResampleMean, ResampleProp, ResampleDiffMeans, ResampleDiffProps. I will show an example of a single mean. The proportions calculations rely on binary data transformed to a table. There is an option `tab.col` that allows one to select which column of the proportions table is of interest. This simply owes to R's alphabetizing factors.

A Single Mean
-------------

Resampling a single mean 1000 times is easy.

``` r
library(ResampleProps)
My.LNorm.Means <- ResampleMean(rlnorm(100))
summary(My.LNorm.Means)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>   1.019   1.442   1.560   1.560   1.670   2.111
```

### Plot of the Resampled Means

``` r
plot(density(My.LNorm.Means), main="1000 LogNormal Means")
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="100%" />

A Single Proportion
-------------------

Resampling a single proportion 1000 times is easy.

``` r
My.Props <- ResampleProp(rbinom(100, size=1, prob = 0.4))
summary(My.Props)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>  0.4400  0.5600  0.5900  0.5906  0.6300  0.7500
```

### Plot of the Resampled Proportions

``` r
plot(density(My.LNorm.Means), main="1000 LogNormal Means")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
