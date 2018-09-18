# Script Name: 1808GrammarOfGraphics-DSCI.R
# Purpose: Example of using ggplot and dplyr on caret dataset
# Authors: Deep Ganguli http://technology.stitchfix.com/blog/2015/03/17/grammar-of-data-science/
# License: Creative Commons Attribution-ShareAlike 4.0 International License.

##########
# Latest Changelog Entires:
# v0.00.01 - from twitter
# In this article he compares EDA in R and Python 
# R code goes below

library(ggplot2) # load package

? ggplot2

library(dplyr)  #load package

? dplyr

data(diamonds)  # load dataset that comes with ggplot

head(diamonds) # Return the First or Last Part of an Object
str(diamonds) # Compactly Display the Structure of an Arbitrary R Object
summary(diamonds) #  produce result summaries of the results of 
                  # various model fitting functions

# now some compact ggplot2 EDA code

# %>% operator (gross looking!) is a pipe 
  # which simply passes the output of the left operator 
  # as the first argument to the right operator

diamonds %>% 
  ggplot(aes(x = carat,y = price)) +  # aes is aesthetic mapping
  geom_point(alpha = 0.5) + # each data point as a point 
  facet_grid(~cut) + # facet the scatter plot on cut, color or clarity
  stat_smooth(method = lm, formula = y ~ poly(x,2)) + # fit a 2nd order lin. model
  theme_bw()

# With this simple visualization, 
  # we can quickly see that price increases with carat size,
   # the relationship is nonlinear, 
    # there are some outliers, 
    # and the relationship does not depend too heavily on cut. 

# Now lets use some extensions to GGplot 2; ie GGally and GGpairs

library(GGally) # a ggplot2 extentsion; gallery of plot templates

? GGally  # This doesn't work for the GGally package

?? GGally # So try this

diamonds %>% 
  mutate(volume = x*y*z) %>%    # in the pipe calculate the volume
  select(cut, carat, price, volume) %>% 
  sample_frac(0.5, replace = TRUE) %>% 
  ggpairs(axisLabels = "none") + 
  theme_bw() 

# mutate, select, and sample_frac (verbs!) 
# part of the grammar of graphics
# are part of the dplyr data manipulation library

######
# Keep a complete change log history at bottom of file.
# Complete Change Log History
# v0.00.00 - 1405-07 - Nick Wheeler made the blank script
