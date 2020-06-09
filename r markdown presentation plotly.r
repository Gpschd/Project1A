---
title: "p1"
author: "Gp Singh"
date: "09/06/2020"
output: ioslides_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(comment = "")
knitr::opts_chunk$set(warning=FALSE)
knitr::opts_chunk$set(message=FALSE)
```

## Instructions

Create a web page presentation using R Markdown that features a plot created with Plotly. Host your webpage on either GitHub Pages, RPubs, or NeoCities. Your webpage must contain the date that you created the document, and it must contain a plot created with Plotly. We would love to see you show off your creativity!

The rubric contains the following two questions:

1. Does the web page feature a date and is this date less than two months before the date that you're grading this assignment?
2. Is the web page a presentation and does it feature an interactive plot that appears to have been created with Plotly?

## Load and Prepare Data
```{r, echo = TRUE}
library(plotly)
data <- diamonds[sample(nrow(diamonds), 2500), 
                 c("carat", "price", "clarity", "depth")]
summary(data)
```

## Create 2D and 3D Scatter Plots
```{r, echo = TRUE}
p1 <- plot_ly(data, x = ~carat, y = ~price, color = ~carat,
        size = ~carat, text = ~paste("Clarity: ", clarity))

p2 <- plot_ly(data, x = ~carat, y = ~price, z = ~depth,
        color = ~carat, size = ~carat, 
        text = ~paste("Clarity: ", clarity)) 
```

## Show 2D Scatter Plot

```{r}
ggplotly(p1)
```

## Show 3D Scatter Plot

```{r}
ggplotly(p2)
```


## Thank You
## R Markdown

This is an R Markdown presentation. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document.

## Slide with Bullets

- Bullet 1
- Bullet 2
- Bullet 3

## Slide with R Output

```{r cars, echo = TRUE}
summary(cars)
```

## Slide with Plot

```{r pressure}
plot(pressure)
```
