# Twitter widget for Shiny/flexdashboard

This package contains the definition for a [htmlwidget](https://www.htmlwidgets.org/) widget able to embed a Twitter status within 
an R markdown page.

The main functionality is to allow to render a card representing a twitter status

## Installation

## Usage

```r
library(twitterwidget)

optspars <- list(align="center")

twitterwidget('<statusid>', optpars)
```
