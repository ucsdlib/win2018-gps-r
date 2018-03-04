
# functions
# create a functions directory

my_sum <- function(a, b){
  the_sum <- a+b
  return(the_sum)
}

my_sum

# fahr_to_kelvin
fahr_to_kelvin <- function(temp) { #argument name in paren
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15  #body code execution
  return(kelvin) # stop and send result
}

#running function
#freezing point of water
fahr_to_kelvin(32)
#boiling point of water
fahr_to_kelvin(212)

challenge 1
# write a function to convert kelvin to celcius
# hint: sub 273.15
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

# combining functions
fahr_to_kelvin <- function(temp) { #argument name in paren
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15  #body code execution
  return(kelvin) # stop and send result
}

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}


kelvin_to_celsius(fahr_to_kelvin(32.0))


#challenge 2 
fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}
str(fahr_to_celsius)

calcGDP <- function(dat) {
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}

calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}

head(calcGDP(gapminder, year=2007))
calcGDP(gapminder, country="Australia")


calcGDP(gapminder, year=2007, country = "Australia")

calcGDP(gapminder, year = c(1952, 1987), country="New Zealand")

# subsetting
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a','b','c','d','e')
x

x[1]
x[4]
x[c(1,3)]
x[1:4]

1:4
c(1,2,3,4)
x[c(1,1,3)]
x[6]
x[0]

x[-2]
x[c(-1, -5)]
x[-(1:3)]

x <- x[-4]
x

# vectorization
x <- 1:4
x * 2
y <- 6:9
x + y

x > 2

a <-  x > 3
a

x <-  1:4
log(x)

m <- matrix(1:12, nrow=3, ncol=4)
m * -1


my_sum <- function(a,b){ # args
  the_sum <- a + b  #body
  return(the_sum) #reutrn result
}

my_sum(10,15)

body(my_sum)

formals(my_sum)


environment(my_sum)

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32)
gapminder <- read.csv(file = "data/gapminder-FiveYEarData.csv", header = TRUE)

gapminder
head(gapminder)

calcGDP <- function(dat){
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}

calcGDP(head(gapminder))

calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}


head(calcGDP(gapminder, year=2007))

str(gapminder)
mean(gapminder[gapminder$continent == "Africa", "gdpPercap"])

library("dplyr")

gapminder

mean(gapminder[gapminder$continent == "Americas", "gdpPercap"])

# 5 most common functions , select(), filter(), group_by(), summarize(), mutate() # not covered

library("dplyr")
# using select()
head(gapminder)
year_country_gdp <- select(gapminder, year, country, gdpPercap)
head(year_country_gdp)

# pipe %>%  
year_country_gdp <- gapminder %>%  select(year, country, gdpPercap)
head(year_country_gdp)


# filter() basics
year_country_gdp_euro <- gapminder %>% 
  filter(continent == "Europe")  %>% 
  select(year, country, gdpPercap)


head(year_country_gdp)

#using group_by()
str(gapminder)

str(gapminder %>% group_by(continent))
gdp_bycontinents <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_gdpPercap=mean(gdpPercap))

gdp_bycontinents

gdp_bycontinents_byyear <- gapminder %>% 
  group_by(continent, year) %>% 
  summarise(mean_gdpPercap=mean(gdpPercap),
            sd_gdpPercap=sd(gdpPercap),
            mean_pop=mean(pop),
            sd_pop=sd(pop))

gdp_bycontinents_byyear

# mutate ()

gdp_pop_bycontinents_byyear <- gapminder %>% 
  mutate(gdp_billion=gdpPercap*pop/10^9) %>% 
  group_by(continent, year) %>% 
  summarize(mean_gdpPercap=mean(gdpPercap),
            sd_gdpPercap=sd(gdpPercap),
            mean_pop=mean(pop),
            sd_pop=sd(pop),
            mean_gdp_billion=mean(gdp_billion),
            sd_gdp_billion=sd(gdp_billion))

gdp_pop_bycontinents_byyear


# intro to tidyr
gapminder$country <- as.character(gapminder$country)
gapminder $continent <- as.character(gapminder$continent)
str(gapminder)

download.file('https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv', 'data/gapminder_wide.csv')
gap_wide <- read.csv(file = "data/gapminder_wide.csv", stringsAsFactors = FALSE)
str(gap_wide)

gap_long <- gap_wide %>% 
  gather(obstype_year, obs_values, starts_with('pop'),
         starts_with('lifeExp'), starts_with('gdpPercap'))

str(gap_long)

gap_long <- gap_wide %>% gather(obstype_year, obs_value, -continent, -country)
str(gap_long)

gap_long <- gap_long %>%  separate(obstype_year, into=c('obs_type','year'), sep ="_")
gap_long$year <- as.integer(gap_long$year)
str(gap_long)


head(gap_long, n=25)


#using spread()

gap_normal <- gap_long %>% spread(obs_type, obs_value)
dim(gap_normal)
head(gap_normal, n=25)
dim(gapminder)
head(gapminder, n=25)
names(gap_normal)
names(gapminder)

gap_normal <- gap_normal[,names(gapminder)]
all.equal(gap_normal,gapminder)
head(gap_normal)
str(gap_normal)
head(gapminder)
str(gapminder)
gap_normal <- gap_normal %>% arrange(country, continent, year)
all.equal(gap_normal,gapminder)

gap_temp <- gap_long %>% unite(var_ID,continent,country,sep = "_")
str(gap_temp)

gap_temp <- gap_long %>% 
  unite(ID_var,continent, country, sep = "_") %>% 
  unite(var_names, obs_type,year,sep = "_")

str(gap_temp)

gap_wide_new <- gap_long %>% 
  unite(ID_var,continent,country,sep = "_") %>% 
  unite(var_name,obs_type,year,sep="_") %>% 
  spread(var_name,obs_value)

str(gap_wide_new)

gap_wide_betterID <- separate(gap_wide_new,ID_var,c("continent","country"), sep ="_")
gap_wide_betterID <- gap_long %>%
  unite(ID_var,continent,country,sep = "_") %>% 
  unite(var_name,obs_type,year,sep="_") %>% 
  spread(var_name,obs_value) %>% 
    separate(ID_var,c("continent","country"), sep="_")
str(gap_wide_betterID)
all.equal(gap_wide,gap_wide_betterID)  






