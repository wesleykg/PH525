## Random variable epopulationercises

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
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
set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(population, 5)
  averages5[i] <- mean(X)
}
hist(averages5) ##take a look
mean( abs( averages5 - mean(population) ) > 1)

#2
set.seed(1)
n <- 10000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(population, 5)
  averages5[i] <- mean(X)
}
hist(averages5) ##take a look
mean( abs( averages5 - mean(population) ) > 1)

#3
set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(population, 50)
  averages5[i] <- mean(X)
}
hist(averages5) ##take a look
mean( abs( averages5 - mean(population) ) > 1)

## Probability ditribution excercises

library(gapminder)
data("gapminder")
head(gapminder)

library(dplyr)

x <- gapminder %>% filter(year == '1952')
x <- x$lifeExp
hist(x)

#1
mean(x <= 40)

#2

mean(x <= 60) - mean(x <= 40)

#sapply() on a custom function

