# Twitter widget for Shiny/flexdashboard

This package contains the definition for a [htmlwidget](https://www.htmlwidgets.org/) widget able to embed a Twitter status within 
an R markdown page.

The main functionality is to allow to render a card representing a twitter status in HTML page created from R Markdown. The
widget has been tested with regular pages or dashboards, created with Flaxdashboard and Shiny.

## Installation

To install the latest stable version you can obtain the package from CRAN:
```r
install.packages("twitterwidget")
```

To install the latest development version:
```r
devtools::install_github("guivo/twitterwidget")
```

## Usage

The widget at the moment focuses on a very specific goal and it is indeed very easy to use. In Rmd page
you can place the following line where it is more convenient:
```r
library(twitterwidget)

optspars <- list(align="center")

twitterwidget('<statusid>', optpars)
```

The last line renders the twitter widget within the HTML page, allowing to visualize a specific status
in the region of the layout controlled by the block.

## Known issues

The javascript code doesn't properly render the content using the RStudio viewer, it is required to use
a more complete browser to check the result.

## Maintenance Status

The package is not under active development but the developer but in case of issue fixes can be
applied.
