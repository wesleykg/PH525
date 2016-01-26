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

## Central limit theorem exercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- read.csv(filename) 
dat <- na.omit( dat ) # Removes lines containing NAs

#1
library(dplyr)
x <- dat %>% filter(Diet == "chow" & Sex == "M") %>% 
  select(Bodyweight) %>% unlist
mean(x)

#2
library(rafalib)
popsd(x)

#3
set.seed(1)
randsample <- sample(x, size = 25)
mean(randsample)

#4
y <- dat %>% filter(Diet =="hf" & Sex == "M") %>% select(Bodyweight) %>% unlist
mean(y)

#5
popsd(y)

#6
set.seed(1)
randsample2 <- sample(y, size = 25)
mean(randsample2)

#7

