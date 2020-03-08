
# read clean data sets
dat15 <- read.csv('../../data/clean/warriors_games2015.csv')
dat16 <- read.csv('../../data/clean/warriors_games2016.csv')

# class intervals
breaks <- seq(70, 140, by = 10)
# fill color
colb <- '#5387D0'
# images directory
img_dir <- '../../images/'


# Histogram season 2015
png(paste0(img_dir, 'histogram-scored-points-2015.png'),
    width = 650, height = 550, pointsize = 18)
hist(dat15$scored, breaks = breaks, col = colb,
     main = 'Regular season 2015', las = 1,
     xlab = 'scored points', ylim = c(0, 30))
dev.off()


# Histogram season 2016
png(paste0(img_dir, 'histogram-scored-points-2016.png'),
    width = 650, height = 550, pointsize = 18)
hist(dat16$scored, breaks = breaks, col = colb,
     main = 'Regular season 2016', las = 1,
     xlab = 'scored points', ylim = c(0, 30))
dev.off()
