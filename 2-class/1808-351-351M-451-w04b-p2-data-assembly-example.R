# DSCI 351-451 File reading for Data Assembly and Cleaning
# By Alan Curran, Roger French

# Reading and sorting files 

# Always try to use `relative paths` to your files.  
    # "." is the current directory
    # and ".." is one directory up, from the current directory
# As opposed to explicity, OS dependent paths, such as H:\Git....

# Try reading in a file to check the formatting and location
    # "read.csv" does this well

  dat <- read.csv("./data/sdle-sf/sdle-sf01_2013_12_24_0000.dat", skip = 1)

# create a vector of all files in this directory with the desired pattern
    # list.files will give you a directory listing of the file names, 

  files <- list.files(path = "./data/sdle-sf/", pattern = "2013_12_24")

# Define dat_total

  dat_total <- NULL

# We can now use a for loop through all of the file names we want to read
  for (i in files) {
  
    # read each file and remove the first 2 rows
    dat <- read.csv(paste0("./data/sdle-sf/", i), skip = 1) 
    dat <- dat[-c(1,2),]
    
    # rbind data to organize it
    dat_total <- rbind(dat_total, dat)
  
  }

# "rbind" is row bind, and "cbind" is column bind

  