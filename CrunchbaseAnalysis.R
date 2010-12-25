# Load prerequisite libraries
library(ggplot2)

# Bring in the Crunchbase database, get its dimensions and header names
cb <- read.csv("/Personal/Data/Crunchbase/companydata.csv",header=TRUE)
colnames <- names(cb)
nrows <- dim(cb)[1]
ncols <- dim(cb)[2]

test.object <- c(1,2,3)
