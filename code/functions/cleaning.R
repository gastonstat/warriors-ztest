# Functionc to clean raw HTML file

# create vector of column indices to keep
keep_columns <- function() {
  c(1,  # game
    2,  # date
    3,  # time
    6,  # home or away
    7,  # opponent
    8,  # outcome (W, L)
    9,  # overtime
    10, # scored
    11, # received
    14  #streak
  )
}


# create vector of new column names
new_colnames <- function() {
  c('game',
    'date',
    'time',
    'home',
    'opponent',
    'outcome',
    'overtime',
    'scored',
    'received',
    'streak'
  )
}


# Reads raw html data, cleans it, and saves clean version
# Inputs: season number (2015 or 2016)
# Output: writes csv file to data/clean/ directory
clean_data <- function(season) {
  # read season raw html data
  rawdata_dir <- '../../data/raw/'
  html_file <- paste0(rawdata_dir, 'warriors_games', season, '.html')
  dataset <- readHTMLTable(html_file, which = 1, stringsAsFactors = FALSE)
  
  # remove dummy rows
  bad_rows15 <- which(dataset$G == 'G')
  dataset <- dataset[-bad_rows15, ]
  
  # keep relevant columns and rename them
  dataset <- dataset[ ,keep_columns()]
  names(dataset) <- new_colnames()
  
  # home
  dataset$home[dataset$home == "@"] <- 'home'
  dataset$home[dataset$home == ""] <- 'away'
  
  # overtime
  dataset$overtime[dataset$overtime == ""] <- 0
  dataset$overtime[dataset$overtime == "OT"] <- 1
  
  # export clean data
  write.csv(dataset, 
            file = paste0('../../data/clean/warriors_games', season, '.csv'),
            row.names = FALSE)
}
