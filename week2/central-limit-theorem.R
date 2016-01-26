## Normal distribution exercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) ) #population weights

set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x, 5)
  averages5[i] <- mean(X)
}

set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x, 50)
  averages50[i] <- mean(X)
}

#1

hist(averages50)
hist(averages5)

#2

mean(averages50 <= 25) - mean(averages50 <= 23)

#3

pnorm( (25-23.9) / 0.43)  - pnorm( (23-23.9) / 0.43) 
