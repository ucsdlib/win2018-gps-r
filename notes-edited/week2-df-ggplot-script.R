cats <- read.csv(file="data/feline-data.csv")
cats
age <- c(2,3,5,12)
cats
cbind(cats, age)
nrow(cats)
length(age)
age <- c(4,5,8)
cats <- cbind(cats, age)
cats
newRow <- list("toroiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)
cats
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
cats
str(cats)
cats$coat <- as.character(cats$coat)
str(cats)
cats[-4,]
na.omit(cats)
cats <- na.omit(cats)
cats <- rbind(cats, cats)
cats
rownames(cats) <- NULL 
cats
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
str(gapminder)
typeof(gapminder$year)
length(gapminder)
typeof(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
head(gapminder)
tail(gapminder)


head(gapminder)
tail(gapminder, n=15)
gapminder[sample(nrow(gapminder), 5), ]

install.packages('ggplot2')
library(ggplot2)

gapminder <- read.csv('data/gapminder-FiveYearData.csv', header=TRUE)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

ggplot(data=gapminder,aes(x=year, y = lifeExp, color=continent)) + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + 
  geom_line() + geom_point()

ggplot(data= gapminder, aes(x= gdpPercap, y=lifeExp, color=continent)) + geom_point()

ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + geom_point(alpha=0.5) + scale_y_log10()

pwd <- ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + geom_point(alpha=0.5) + scale_y_log10() + 
  geom_smooth(method ="lm", size=1.5)

pwd

ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + geom_point(alpha=0.5) + scale_y_log10() + 
  geom_smooth(method ="lm", size=1.5)
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap))+geom_point(alpha=0.5,size=2,color='red')+scale_y_log10()+
  geom_smooth(method='lm',size=1.5)

ggplot(data = gapminder, aes(x= lifeExp, y = gdpPercap))+ geom_point( aes(color= continent), size = 1.5, shape=17)+ scale_y_log10()+
  geom_smooth( method = "lm", size = 1.5)

starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"),]
# starts.with == "A" | starts.wtih == "Z" 

ggplot(data = az.countries, aes(x=year, y=lifeExp, color=continent)) + geom_line() +  facet_wrap(~ country)

ggplot(data = az.countries, aes(x=year, y=lifeExp, color=continent)) + 
  geom_line() +  facet_wrap(~ country) +
  labs( 
    x = "Year",   # x axis title
    y = "Life Expectancy", # y axis title
    title = "Figure 1", # main title of figure
    color = "Continent" # title of legend
    ) +
  theme(axis.text.x = element_blank(), axis.ticks.x=element_blank())

ggplot(data = gapminder, aes(x = gdpPercap, fill=continent)) +
  geom_density(alpha=1) + facet_wrap(~ year) + scale_x_log10()


ggsave('~/path/to/figure/filename.png')
ggsave(pwd, '/~data/filename.png')

.eps
.jpg
.pdf
.png







