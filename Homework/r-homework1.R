## Due 1/18 - By Start of Class
## How to submit your homework:
#1. Download the r-homework1.R script and open in Rstudio
#2. Rename `r-homework1.R` to `yourlastname_sudentID_r-homework1.R`
#3. Type the answers in the uncommented lines (those without #). Notice, for some lines, we have 
#gotten you started with names of objects.
#4. Save the script file.
#5.Upload the file to tritonEd (we are working on getting that set up). Alternately, attach the file and email to 
# timdennis@ucsd.edu by 1/18 before 6:30pm. NOTE: Please use your UCSD email address when sending an email. 

# To help us identify you in the logs we use for grading please add your name and id number below:

print('Your Name') # add your name in between the quotes
print('Your student ID number') #add your A number between the quotes

# For each exercise you must make sure the work is printed to the console. With objects, we can
# easily just add the object name (vector, matrix, data.frame) on a single line and it will print
# out.  For subsetting, your subsetting expression will print to the console. 

### Exercise 1 : Making Vectors (7.5 points)

#Start by making a vector named 'myvector' with the numbers 1 through 26.
#Create another vector named, 'myvectimestwo' by multiply the vector by 2, and give the resulting vector
#names A through Z (hint: there is a built in vector called `LETTERS`)
# ANSWER:

myvector <- #vector 1-26
myvectimestwo <- #mulitply myvector by 2
names(myvectimestwo) <- #add A-Z names to the vector: see ?LETTERS
myvectimestwo #print out vector to the console

# ### Exercise 2 : Matrix (7.5 points)
# 
# 1. Make a matrix called "mymatrix" containing the numbers 1:50, with 5 columns and 10 rows. Print the matrix out.
# 2. Make the "mymatrix" matrix above fill by row, not by column (its default behaviour). Print out the matrix.
# (hint: read the documentation for `matrix`!)
# 
# ANSWER: 
mymatrix <- #containing numbers 1:50
mymatrix <- #mymatrix above but fill by row not column: see ?matrix

# ### Exercise 3 : Data Frame (15 points)
#   
#You can create a new data frame right from within R with the following syntax:
# df <- data.frame(id = c('a', 'b', 'c'),
#                  x = 1:3,
#                  y = c(TRUE, TRUE, FALSE),
#                  stringsAsFactors = FALSE)
#
# Make a data frame, called 'df', that holds the following information for yourself:
#   
# - first name
# - last name
# - lucky number
# 
# Column names should be first_name, last_name, & lucky_number
# Then use `rbind` to add an entry for someone else in the class or someone you know.
# Finally, use `cbind` to add a column named 'coffee' with each person's answer to the question, "Is it time for coffee break?"
# 
# ANSWER: 

df <- #my data frame containing columns for your first_name, last_name, lucky_number
df # print out this data frame
df2 <- # use the rbind function on 'df' to create an entry for someone else in the class or someone you know.
df2 # print to the console
df3 <- #use cbind to add a column, 'coffee' and responses for the questions; "Is it time fora coffee break?"
df3 #print data frame to the console


# ### Exercise 4 : Lists (5 points)
# 
# Given the following list:

xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
# 
# Using your knowledge of both list and vector subsetting, extract the **number 2** from xlist.
# Hint: the number 2 is contained within the "b" item in the list. Look up how to subset lists
#from the lecture notes. 
# 
# ANSWER: 



# ### Exercise 5 : Subsetting gapminder (15 points)
# To answer these questions, you will need gapminder data loaded. Below I'll load it from the 
# web. When you run it you should see a 'gapminder' data object in the 'Environment' on the 
# top right of RStudio.

gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")

# Fix each of the following common data frame subsetting errors:
# WRAP the answers in the head() function to reduce the output to the console and log. 
# For example, to get the first three rows and 2-3 columns:

head(gapminder[1:3, 2:3])

# 1. Extract observations collected for the year 1957
# 
# gapminder[gapminder$year = 1957,]
# ANSWER: 
head(gapminder[])

# 2. Extract all columns except 1 through to 4
# 
# gapminder[,-1:4]
# ANSWER: 
head(gapminder[])

# 3. Extract the rows where the life expectancy is longer the 80 years
# 
# gapminder[gapminder$lifeExp > 80]
# ANSWER: 
head(gapminder)

# 4. Extract the first row, and the fourth and fifth columns
# (`lifeExp` and `gdpPercap`).
# 
# gapminder[1, 4, 5]
# ANSWER: 
head(gapminder[])


# 5. Advanced: extract rows that contain information for the years 2002
# and 2007
# 
# gapminder[gapminder$year == 2002 | 2007,]
# ANSWER: 
head(gapminder[])