# Description: Create clean csv files from raw html files
# Inputs:      Raw html files
# Outputs:     Clean csv files

# packages
library(XML)

# functions
source('../functions/cleaning.R')

# Cleaning raw data of season 2015
clean_data(2015)

# Cleaning raw data of season 2016
clean_data(2016)
