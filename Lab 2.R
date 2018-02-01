```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
Team Work
choco <- read.csv("https://ds202-at-isu.github.io/labs/data/choco.csv")
head(choco)
names(choco)

library(ggplot2)
2.
ggplot(data= choco, aes(x=Review.Date))+geom_bar()

The number of ratings was gradually increasing, but in the past couple years, the number has significantly dropped.

Individual
1.
ggplot(data= choco, aes(x= Rating))+geom_histogram(binwidth=0.25)

This histogram is unimodel and appears to be fairly symmetric in shape. There also appears to be an outlier at a rating of 5.

2.
ggplot(data= choco, aes(x= Rating, y= Cocoa.Pct))+geom_point()

No the rating does not depend on the Cocoa percentage because this scatter plot shows that the cocoa percentages of the candy bars are given all types of ratings. For example, chocoalte bars with a cocoa percentage of 100% have ratings ranging between 1 and approximately 3.5.

3. 
p3 <- dplyr::filter(choco, Company.Location %in% c("U.S.A.", "France", "Canada"))
ggplot(data= p3, aes(x= Company.Location, y= Rating))+geom_boxplot()

All three locations have the same median, but the spreads for all three locations are different.