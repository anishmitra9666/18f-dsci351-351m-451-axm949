# Script Name: tea_time_class_1.R
# Purpose: Learning R 
# Authors: Alan Curran, Roger French 
# License: Creative Commons Attribution-NonCommercial-ShareAlike- 4.0 International License.  
# Latest Changelog Entires: v0.00.01 - tea_time_class1.R - Ethan Started it

# Basics of R
# Math operations 
  2 + 2
  8 / 4
  2 * 3
  3 ^ 3
  a = 3
  b = 3
  a + b

# Assignment operator is usually used instead of =
# It is directional
# = works in most cases too but may cause problems

  a <- 3
  b <- 6
  
  a <- b
  a
  
  a <- 3
  b <- 6
  
  a -> b
  a

# Object classes
# numerics
  a <- 5
  class(a)
# integers
  b <- as.integer(42)
  class(b)
# logicals
  c <- TRUE
  class(b)
# characters
  d <- "hello world"
  class(c)
# factors
  e <- as.factor(c("1", "1", "a", "1", "c", "a"))
  class(e)
  e
# quick note it you want to convert a factor to a numeric 
# You have to convert it to a character first, then a numeric


# R uses brackets to reference a data index
# data["row","column"]
# Standard organization for data set has varaibles as columns and observeations as rows
# Keep in mind that R indexing starts from 1, not 0
# Load a test data set
  data("iris")
  
  iris[1,2]

# Leaving a row or column input blank puts all values
# First column
  iris[,1]

# First row
  iris[1,]

# Data frames have associated column names
  colnames(iris)

# Columns can be called by name using $
# Rstudio features tab completion for thing like column names
  iris$Sepal.Length

# Functions are processes that take an input and give an output
# Rstudio has tab completion for function inputs
  max(iris$Petal.Length)
  mean(iris$Sepal.Width)
  sd(iris$Petal.Width)

# Functions can take multiple inputs, they can be named in the call or placed in order
  plot(x = iris$Sepal.Length, y = iris$Sepal.Width)

# x and y can be specified with x = ... in any order or the inputs can be given in order
# This plot is the same as the previous
  plot(iris$Sepal.Length, iris$Sepal.Width)

# Matrix operations
  mat <- matrix(data = 1:9, nrow = 3, ncol = 3)
  mat

# Element multiplication
  mat*mat

# Matrix multiplication
  mat %*% mat

# t() function is for transposing
  t(mat)
  mat %*% t(mat)

# Inverse matrix
  mat[2,3] <- 18
  solve(mat)
  solve(mat) %*% mat

# Structures in R
# for loops
  for (i in 1:5) {
      print(i)
  }

# While loops 
  i <- 10
  while (i > 5) {
        i <- i - 1
        print(i)
  }

# if statments
  dave <- TRUE

# if (dave) {} also works
  if (dave == TRUE) {
      print("good morning dave")
  }

# User defined functions
  math <- function(a,b) {
    c <- a + b*2
    # return defines what the output of the function is
    return(c)
  }
  math(2,6)

