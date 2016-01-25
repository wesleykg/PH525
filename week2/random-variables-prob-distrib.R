## Random variable epopulationercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/epopulationtdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
population <- unlist( read.csv(filename) )

#1
mean(population)

#2
set.seed(1)
ransam <- sample(population, size = 5)
abs(mean(population) - mean(ransam))

#3
set.seed(5)
ransam <- sample(population, size = 5)
abs(mean(population) - mean(ransam))

## Null distribution epopulationercises

#1

n <- 1000
null <- vector("numeric",n)
for (i in 1:n) {
  control <- sample(population,12)
  treatment <- sample(population,12)
  null[i] <- mean(treatment) - mean(control)
}


