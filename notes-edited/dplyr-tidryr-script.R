gapminder <- read.csv(file = "data/gapminder-FiveYEarData.csv", header = TRUE)
str(gapminder)
mean(gapminder[gapminder$continent == "Africa", "gdpPercap"])
mean(gapminder[gapminder$continent == "Americas", "gdpPercap"])
mean(gapminder[gapminder$continent == "Asia", "gdpPercap"])

# most used fucntion : selection(), filter(), group_by(), summarize(), mutate() %>%
year_country_gdp <- select(gapminder, year, country, gdpPercap)
head(year_country_gdp)
str(gapminder)

year_country_gdp <- gapminder %>% select(year, country, gdpPercap)
head(year_country_gdp)

year_country_gdp_euro <- gapminder %>% 
  filter(continent =="Europe") %>% 
  select(year, country, gdpPercap)
head(year_country_gdp_euro)


lifeExp_country_year_africa<- gapminder %>% 
  filter(continent=="Africa") %>% 
  select(lifeExp, country, year)

head(lifeExp_country_year_africa)

str(gapminder)
str(gapminder %>% group_by(continent))

gdp_bycontinents <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_gdpPercap=mean(gdpPercap))
gdp_bycontinents


gpd_bycontinets_byyear <- gapminder %>% 
  group_by(continent, year) %>% 
  summarize(mean_gdpPercap=mean(gdpPercap),
            sd_gdpPercap=sd(gdpPercap),
            mean_pop=mean(pop),
            sd_pop=sd(pop))
  
  gdp_pop_bycontinents_byyear
  
  install.packages("tidyr")
  
  
  library("tidyr")
  str(gapminder)
  # tidyr fucntions : gather()
  
  
  str(gap_wide)
  gap_long <- gap_wide %>% 
    gather(obstype_year, obs_values, starts_with('pop'),
            starts_with('lifeExp'), starts_with('gdpPercap'))
  str(gap_long)
  dplyr:
    filter
  select
  mutate
  
  1
  tidyr:
    gather
  spread
  separate
  