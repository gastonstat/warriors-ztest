# Description: Download Raw data sets
# Source:      HTML files from www.basketball-reference.com
# Inputs:      url's of html files
# Outputs:     raw html data files


# www.basketball-reference.com
website <- 'http://www.basketball-reference.com/'

# raw data directory
rawdata_dir <- '../../data/raw/'

# ==========================================================

# URI for Warriors games in season 2015
warriors_2015 <- 'teams/GSW/2015_games.html'
url_2015 <- paste0(website, warriors_2015)

# output file path
html_2015 <- paste0(rawdata_dir, 'warriors_games2015.html')

# download html file (season 2015)
download.file(url = url_2015, destfile = html_2015)

# ==========================================================

# URI for Warriors games in season 2016
warriors_2016 <- 'teams/GSW/2016_games.html'
url_2016 <- paste0(website, warriors_2016)

# output file path
html_2016 <- paste0(rawdata_dir, 'warriors_games2016.html')

# download html file (season 2016)
download.file(url = url_2016, destfile = html_2016)

