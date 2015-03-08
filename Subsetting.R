##Subset using numeric index
x<-c("b", "c","d","f","g")
x[1]
x[1:4]

##Subset using logical index
x[x>"b"]

##Create logical vector
u<-x>"a"
u

## subsetting list
x<- list (foo 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]

x<- list (foo 1:4, bar = 0.6, baz ="hello")
x[[c (1, 3)]]


## subsetting matrics
x<- matrix(1:6,2,3)
x[1,2]
x[1,]## first row of meterix
x[,2] ## second column of matrix

x[1, 2, drop = FALSE] ## to preserve dimension of the object, default is set to TRUE
x[1, , drop = FALSE] ## you gtet 1 by 3 matrix with values  of 1 3 and 5


## Partial matching - to not type the full word each time
x<- list(aardvark = 1:5)
x$a ## looks only for elements starting with a

x[["a"]] ## expect exact match
x[["a"], exact = FALSE] ## to switch off exact matching

## Removing missing values - create logical vectors
x<- c(1,2,NA,4,NA)
bad<- is.na(x)
x[!bad]

## Multiple values
x<- c(1,2,NA,4,NA)
y<- c("a","b",NA, "f", NA)
good<- complete.cases(x,y) ## function gives vector that specifies position in both values with missing values
good

##subsetting good values
x[good]
y[good]

## geeting only rows with not missing values
airquality[1:6, ]
good<- complete.cases(airquality)
airquality [good,][1:6,] 

## Vectorised operations - without loopig thru code
## Add element 1 with 1, 2 with 2 and so on (pararel)
x<- 1:4; y<-6:9
x+y ## Add element 1 with 1,
x>2 ## logical vector
y==8
x*y

## Vectorised operations - matrix

x<- matrix (1:4, 2, 2); y<- matrix (rep(10,4)2,2,)
x*y ## element-wise multipl (pararel 1 with 1 and so on)
x%*% y ## true matrix multipl

