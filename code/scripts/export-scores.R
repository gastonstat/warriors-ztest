# Reads data tables of season 2015 and 2016
# and exports vectors of scored points

dat15 <- read.csv('../../data/clean/warriors_games2015.csv', 
                stringsAsFactors = FALSE)

dat16 <- read.csv('../../data/clean/warriors_games2016.csv', 
                  stringsAsFactors = FALSE)

scores15 <- dat15$scored
scores16 <- dat16$scored

# export vectors as .Rda
save(scores15, scores16, file = '../../data/clean/scores.RData')
