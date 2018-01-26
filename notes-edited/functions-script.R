my_sum <- function(a,b){
  the_sum <- a + b
  return(the_sum)
} 

my_sum(10, 15)
body(my_sum)
formals(my_sum)
environment(my_sum)

fahr_to_kelvin <- fucntion(temp){
  kelvin <- (temp -32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32)
fahr_to_kelvin(212)

kelvin_to_celcius <- function(temp){
  celcius <-  temp - 273.15
  return(celcius)
}
kelvin_to_celcius(0)


fahr_to_kevin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}
kelvn_to_celsius <- function(temp) {
  celsius <- temp -273.15
  return(celsius)
}
kelvin_to_celsius(fahr_to_kelvin(32))
}



fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celcius(temp_k)
  return(result)
}
fahr_to_celsius(32)

gapminder <- read.csv(file = "path to your data")

head(gapminder)

calcGDP <- function(dat) {
  gdp <-dat$pop * dat$gdpPercap
  return(gdp)
}

calcGDP(head(gapminder))

calcGDP <- function(dat, year=NULL, country=NULL){
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

calcGDP(gapminder, country = "Australia")
calcGDP(gapminder, year=2007, country = "Australia")
