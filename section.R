#install.packages("plotly")
#install.packages("htmlwidgets")
#devtools::install_github("ropensci/plotly")
library(dplyr)
library(plotly)
library(ggplot2)

set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]
plot_ly(d, x = ~carat, y = ~price, color = ~carat, size = ~carat, text = ~paste("Clarity: ", clarity))
                                                                    