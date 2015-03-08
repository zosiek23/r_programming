getwd()
msg <- "Hello"
print (msg)
msg
y<- 1:20
t<-0:6
as.character(t)

[1] "0" "1" "2" "3" "4" "5" "6"
## list
x<- list(1, "a", TRUE, l+4i)
x<- list(1, "a", TRUE, 1+4i)
x
## matrix and dimensions
m<- matrix(nrow=2, ncol=3)
m

dim(m)

m<- matrix(1:6,nrow=2, ncol=3)
m

w<- 1:10
w
dim(w)<-c(2,5)
w

## binding columns or row binding (other way of creating matrics)
i<- 1:3
j<- 10:12

cbind(i,j)
rbind (i,j)

## factor - unordered and ordered - categorical data
x<- factor(c("yes","yes","yes","no","no"))
x
table(x)
unclass(x)## brings it to intiger

## factor - assign level important to linear modeling
## (normally levels assigned by alphabetical order)
## We want yes to be baselie level

x<- factor(c("yes","yes","yes","no","no"),
           levels = c("yes","no"))

## Missing values
v<-c(1,2,NA, 10, 3)
is.na(v)
is.nan(v)

d<-c(1,2,NA, NaN, 3)
is.na(d)
is.nan(d)

## Data Frame - store tabular data
## every row has a name
## created by calling read.table or read.csv
## we can create matrix : data.matrix()
x<- data.frame(foo =1:4, bar =c(T,T,F,F))
ncol(x)
nrow(x)

## All R objects can have names
x<-1:3
names(x)
names(x)<- c("foo","bar","nor")
x
names(x)




