##Software Carpentry R Instructor Crib Sheet
####Tim Dennis, UCSD Lib. - GPS R 


####Before class:
* set up RStudio
* set up Socrative questions 
	* Room: QTKGZXF6G
  	* start quiz, student paced, ask students to use UCSD email
* put history in accessible place for students (DROPBOX)

**Intro to Software Carpentry:** http://swcarpentry.github.io/slideshows/introducing-software-carpentry/index.html#slide-0 

####Checklist for class:
* class website: http://ucsdlib.github.io/win2016-gps-intro-R/
* etherpad: https://public.etherpad-mozilla.org/p/gps-intro-r
* Tim's Rhistory: https://www.dropbox.com/XXX
* instructor's guide for R: http://swcarpentry.github.io/r-novice-gapminder/instructors.html
* have zip of data linked somewhere for students to download https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv

####SETUP (5 min)

* we're going to learn R for data analysis!
* real goal not to teach R, but teach basic concepts that you can use in any language
* we’re going to teach you some of the fundamentals of the R language as well as some best practices for organising code for scientific projects that will make your life easier
* why R?
	* we have to use something
	* it's free, well-documented, and runs on most machines
	* active community, especially among scientists
	* lots of code already written (and available for reuse!) for many different types of analyses
* download data and put in SWC workshop folder: https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv
	* don't worry if you see "python" in name, unzip and it should be called "data"
	* can embed link in workshop webpage for students to download

####INTRO TO RSTUDIO (10 min)

* RStudio is just a handy interface to work with R (some folks may have used the regular R console already)
	* R works the same, regardless of whether you're using the R console, R GUI, or RStudio
* When you open RStudio, you will be greeted by three panels:
    * The interactive R console (entire left)
    * Workspace/History (tabbed in upper right)
    * files/Plots/Packages/Help (tabbed in lower right)	
* Shortcuts: 

#### Intro to R (15)

* R as calculator - simple use 
	* much time spent in console working out code 
	* console `>` with blinking cursor, much like command line
	* "read, evaluate, print, loop" REPL - many languages adopt this paradigm (stata)

	```
	   1 + 100
   	   1 + 
	```

* if you hit return and R shows a "+" instead of >, waiting for you to comlete command, ESC or control+c will escape

\#R uses same order of opterations to lowest precedence:
1. Parentheses: ( )
2. Exponents: ^ or **
3. Divide: /
4. Multiply: *
5. Add: +
6. Subtract: -

`3+5*2` v. `(3+5) * 2`

* this can be hard to read 
(3 + (5 * (2 ^ 2))) # hard to read
3 + 5 * 2 ^ 2       # clear, if you remember the rules
3 + 5 * (2 ^ 2)     # if you forget some rules, this might help

* really small or large numbers get scientific notation
* `2/1000` #2e-04 shorthand for 10^XX So 2e-4 is shorthand for 2 * 10^(-4).
* `5e3 #note lack of minus` 

**Math functions - many built in functions**
* `sin(1)` #trig functions
* `log(1)` # natural log
* `log10(10)` #base-10 log
* `exp(0.5)` #e^(1/2)
* Dont worry about remembering functions, use google 
* use RSTudio's autocompletion feature if you can remember beginning of function
* Typing ? before function brings up help page in Rstudio

**Comparing things**
* `1 == 1 # equality (note two equals signs, read as "is equal to")` 
* `1 != 2  # inequality (read as "is not equal to")`
* `1 <  2  # less than`
* `1 <= 1  # less than or equal to`
* `1 > 0  # greater than`
* `1 >= -9 # greater than or equal to`
* Tip: dont' use == to compare numbers unless integers, computers represent decimals with a certain degree of precision
* ?all.equal
* `0.1+0.05==0.15`
* `all.equal(0.1+0.05, 0.15)`

**Variable & assignments**
* Store values in vars using assignment operator <-, like `x <- 1/40`
* Look in Environment tab in Rstudio
* our var can be used in place of a number in calculations `log(x)`
* Variables can be reassigned `x<-100`
* Assignement values can contain variable being assigned to
* `x <- x + 1 #notice how RStudio updates its description of x on the top right tab`
* right hand side can be any valid R expression & is evaluated prior assigment
* Variable names can contain letters, numbers, underscores and periods. 
* They cannot start with a number nor contain spaces at all.
* Can use = for assignment but less common among R users

**Vectorization**
* R is vectorized, meaning that variables and functions can have vectors as values
```
1:5
2^(1:5)
x <- 1:5
2^x
```

* more to come on this

**Managing your enviorment** 
* usefule commands for working with R session 
* `ls()` shows R ojects
* `ls` plain will print out code for that function (or any R function)
* Remove objects use `rm(x)`
* If you have a lot of objects and want to delete all, use rm(list=ls())
* In this case we are using ls() function inside another function that takes a list argument, so we are listing all objects and then deleting them with rm()
* arguments need the =, not <- `rm(list <- ls())` causes errors

**R packages**

* we can write our own packages or obtain package written by others.
* Over 7,000 packages on CRAN (the comprehensive R archive network)
* R & RStudio 
	- `installed.packages() #list packages`
	- `install.packages("packagename1", "packagename2") #install on or many packages`
	- `update.pakcages()`
	- remove.packages("packagename")
	- library(packagename) #make package available 

#### Project management with RStudio (10 min)
* most ppl tend to organize projects like so
* http://swcarpentry.github.io/r-novice-gapminder/fig/bad_layout.png
* Create project in RStudio called gps-r 
* Create a folder inside -- 
	- need screen shot 

#### Seeking help (5min)
To be able to access R help files for functions and operators. 
* R & every package provides help files for function. 
* to search: `?function_name` or `help(function_name)` 
* special operators:  `?"+"`
* packages can also have "vignettes" -- tutorials 
* use vignette() to see all
* vignette('vignette_name')
* `??function_name` will do fuzzy search for function help (if you don't know the exact name)
* don't know where to begin to find a package you need, look at CRAN taask views http://cran.at.r-project.org/web/views/ (cat based )

#### Data structures (21m)
Know R data types and the basic data structures commonly encountered. To be able to inspect R objects.

**R has basic 5 atomic types** - atomic b/c they can't be dcomposed into anything smaller.

* **logical** (e.g., TRUE, FALSE)
* **numeric**
  * integer (e.g, 2L, as.integer(3))
  * double (i.e. decimal) (e.g, -24.57, 2.0, pi)
* **complex** (i.e. complex numbers) (e.g, 1 + 0i, 1 + 4i)
* **text** (called “character” in R) (e.g, "a", "swc", 'This is a cat')

Fuctions used to inspect objects in R to determine type: 

typeof() # what is its atomic type?
is.logical() # is it TRUE/FALSE data?
is.numeric() # is it numeric?
is.integer() # is it an integer?
is.complex() # is it complex number data?
is.character() # is it character data?
str()  # what is it?

5 data structures: 

* vector
* factor
* list
* matrix
* data.frame

**Vectors**
* most common data structure, workhorse of R
* AKA 'atomic vectors' because they can only contain on data type
* building blocks of every other data structure
* `x <- vector()` creates an empty vector, by default logical 0 length vector

```
x <- vector(length = 10) # with a predefined length
x
```

* Should be 10 falses  above
```
x <- vector("character", length = 10)  # with a predefined length and type
x

```
* create a vector using the concatenate or combine fucntion c()

```
x <- c(10, 12, 45, 33)
x
```

* you can create a vectors using a sequence
```
series <- 1:10
series
```

 ```
 seq(10)
 seq(1, 10, by = 0.1) #from 1 to 10 by 0.1
 ```
 * you can use the c() to add elements to a vector
 
```
x
x <- c(x, 57)
x
```

* vectors can contain only one atomic type
* if you try to combing different types R will create a vector of LCD 
* called implicit coercion
* coercion rule goes: `logical -> integer -> numeric -> complex -> character`
* Sometimes you need to convert explicitly by using the `as.<class_name>`
* `as.numeric()` `as.character()`

```
as.character(x)
x<-c(TRUE,FALSE,1,5,2)
x
as.character(x)
```

* `as.complex(x)`
```
x <- 0:6
as.logical(x)

```
* 0 is FALSE while every other number is true
* common pattern in other languages

```
x <- c("a", "b", "c")
as.numeric(x) #throws warning
as.locgical(x) #no warning

```

**Special Objects**
* NA is special object in R that denotes a missing value - can occur in other types of vectors
* INF denote infinity (+ or -)
* NaN - not a number (0/0)
* NULL denotes data structure doesn't exists

* you can ask questions about the structure of vectors 

```
x <- 0:10
tail(x, n=2) # get the last 'n' elements
```

* `head(x, n=1 # get the first 'n' elements`
* `length(x)`
* `str(x)`
* Vectors can be named:
```
x <- 1:4
names(x) <- c("a", "b", "c", "d")
x
```

**Matricies**
* atomic vectors with added dimensions attributes
* create with matrix function, let's getnerate some data

```
set.seed(1) # make sure the random numbers are the same for each run
x <- matrix(rnorm(18), ncol=6, nrow=3)
x
```

* `str(x)`
* we can use `rownames` `colnames`, and `dimnames` to set or retrieve the column & row names
* `nrow` & `ncol` will give number of rows & cols (this works on data frames too)
* length will tell you number or elements

**Factors**
* special vectors that represent categorical data (sex, dogs breeds, etc.)
* can be ordered or unordered
* important for model functions such as aov(), lm(), glm() & in plot methods
* create with factor function

```
x <- factor(c("yes", "no", "no", "yes", "yes"))
x
```

* output similar to character vector but with levels 
* `str(x)`
* factors often look and behave like char vectors, they reallly are integers under the hood `no=1, yes=2`
* modeling fuctions basline (first) level is important, by default order is determined by alpha of words entered
* change this by specifying levels

```
x <- factor(c("case", "control", "control", "case"), levels = c("control", "case"))
str(x)
```

**Lists**
* compbine different types of data 
* act as containers
* can contain any data structure
* create using list or as.list()

```
x <- list(1, "a", TRUE, 1+4i)
x

```

* each element of list denoted by [[ 
* inside each list element is a atomic vector length of one
* more complex example 

```
xlist <- list(a = "Research Bazaar", b = 1:10, data = head(iris))
xlist

```

* list contains character vectors of one, numeric vector with 10 entries,  and a small data frame from a built-in dataset in R (see ?data)
* each list element named -- see $a instead of [[1]]
* lists can contain themselves `list(list(list(list())))`


####END day
* remove R history from dropbox (remind students to save first if they want it)
* give students links to complete R lessons (and intermediate lessons)
* sticky note feedback
