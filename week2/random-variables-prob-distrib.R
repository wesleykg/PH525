## Random variable exercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) ) # weight for entire population

#1
mean(x)

#2
set.seed(1)
ransam <- sample(x, size = 5)
abs(mean(x) - mean(ransam))

#3
set.seed(5)
ransam <- sample(x, size = 5)
abs(mean(x) - mean(ransam))

## Null distribution exercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) ) # weight for entire population

#1




