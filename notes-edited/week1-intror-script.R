1 + 100
3+5*2
(3 + (5 * (2 ^ 2)))
3 + 5 * (2 ^ 2)
2/10000
5e3
sin(1)
log(1)
log10
exp(0.5) # e^/(1/2)
1 == 1 
1 != 2
1 <= 2
 x <- 1/40
 log(x)
x <- 100 
x <- x + 1
y <- x * 2
1:5
2^(1:5)
x <- 1:5
2^x
ls()
ls
rm(x)
rm(list = ls())
installed.packages()
install.packages("knitr")
update.packages()
remove.packages("")
library()

? all.equal




cats <- read.csv(file = "data/feline-data.csv")
cats

cats$weight
cats$coat
cats$weight + 2
paste("my cat is", cats$coat)
cats$weight + cats$coat 

typeof(cats$weight)
typeof(3.14)
typeof(1L)
typeof(cats$coat)
typeof(1+1i)
typeof(TRUE)
typeof('banana')
cats <- read.csv(file="data/feline-data.csv")
cats
typeof(cats$weight)
cats$weight + 2
class(cats)
cats <- read.csv(file="data/feline-data.csv")
cats

my_vector <- vector(length = 3)
my_vector
another_vector <- vector(mode="character", length = 3)
another_vector
str(another_vector)
str(cats$weight)
concat_vector <- c(2,6,3)
quiz_vector <- c(2,6,'3')
str(quiz_vector)
coercion <- c('a', TRUE)
str(coercion)
another_coercion_vecotr <- c(0, TRUE)
another_coercion_vecotr
str(another_coercion_vecotr)

charater_vector_example <- c('0','2','4')
charater_vector_example
str(charater_vector_example)
character_coerced_to_numeric <- as.numeric(charater_vector_example)
cats$likes_string <- as.logical(cats$likes_string)
str(cats$likes_string)
ab_vector <- c('a', 'b')
ab_vector
cancat_example <- c(ab_vector, 'gps')
cancat_example
myseries <- 1:10
myseries
seq(10)
seq(1,10, by=0.1)
sequence_example <- seq(10)
head(sequence_example, n=2)
tail(sequence_example, n=4)
length(sequence_example)
class(sequence_example)
typeof(sequence_example)
