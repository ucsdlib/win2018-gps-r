x <- 1:4
x * 2
y <- 6:9
x + y
x > 2
a <- x > 3
a
x <- 1:4
log(x)

m <- matrix(1:12, nrow=3, ncol=4)
m * -1

# subsetting
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a','b','c', 'd', 'e')
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
x[c(-1,-5)]
x <- x[-4]
x
x[c("a","c")]
x[c(FALSE, FALSE, TRUE, FALSE, TRUE)]
x[x > 7]
x[names(x) == "a"]
x <- c(a=4.5, b=6.2, c=7.1, d=4.8, e=7.5)
x
x[names(x) != "a"]
x[names(x) != c("a", "c")]
names(x) != c("a","c")


