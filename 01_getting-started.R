## Getting Started exercises
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)

#1
micedat <- read.csv(filename)
str(micedat)

#2
micedat[12, 2]

#3
weight <- micedat$Bodyweight
weight[11]

#4
length(weight)

#5
mean(weight[13:24])

#6
set.seed(1)
sample(weight[13:24], size = 1)

## dplyr video
library(dplyr)

controls <- filter(micedat, Diet == "chow")
controls <- select(controls, Bodyweight)
unlist(controls)

controls <- filter(micedat, Diet == "chow") %>% select(Bodyweight) %>% unlist
mean(controls)

##dplyr exercises

