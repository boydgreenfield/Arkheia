# File-Name:       CrunchBaseAnalysis.R
# Date:            2010-12-24                                
# Author:          Nick Greenfield
# Purpose:         Brief visualization of tech start-ups by state
# Data Used:       2004_Election_Counties.shp
# Packages Used:   spdep
# Output File:     
# Data Output:     
# Machine:         Nick Greenfield's MacBook Pro

# Load prerequisite libraries
gpclibPermit()
library(spdep)

# Bring in the Crunchbase database, get its dimensions and header names
cb <- read.csv("/Personal/Data/Crunchbase/companydata.csv",header=TRUE)
colnames <- names(cb)
nrows <- dim(cb)[1]
ncols <- dim(cb)[2]

# Add a shapepoly of the US
USA <- readShapePoly("/Personal/Arkheia/2004_Election_Counties/2004_Election_Counties.shp")
