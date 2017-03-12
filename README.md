# Coursera Course 9 Project - Shiny Application and Reproducible Pitch: Counting Words
========================================================


## Overview
========================================================

Count the number of words typed on a text area.

App for the course project of Coursera's Developing Data Products.

App built with shiny and published on shinyapps.io: https://mingadaddy.shinyapps.io/CountWords/
- One tab has the interface
- Another tab describes what the app does

Code for the app in github: https://github.com/mingaDaddy/countWordsShinyApp

This presentation was made using RStudio Presenter.

## Count Words
========================================================

The app is based on the *str_count* function of the package **stringr**. This way to check the number of words is really efficient.

In the test taken on shinnyapps.io, the app was able to count more than 100.000 of words in less than one second.

## The function nwords
========================================================

Use function *nwords* for counting words:.

```{r, echo=T}
require(stringr)
nwords <- function(string, pseudo=F){
        ifelse( pseudo,pattern <- "\\S+",pattern <- "[[:alpha:]]+")
        str_count(string, pattern)
}
nwords("This is a test without counting 1234 numbers", F)
nwords("This is a test with counting 1234 numbers", T)
```

## Conclusion
========================================================

The function *str_count*, using REGEXP patterns, is a powerful tool to count words easily and fast.

Other of the advantages of *str_count* is that it also helps if we would like to count on whole vectors as well.
