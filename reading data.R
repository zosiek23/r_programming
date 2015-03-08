## Reading data
data<- read.table("foo.txt")
## default seperator is comma
data<- read.csv("foo.csv")

## Reading large data
comment.char = ""

## use colclass argument to rerad dta faster!
tabALL<-read.table("datatables.txt", colClasses=classes)

## nrows - amount of rows read -helps memory usage

## data 1.5 mil and 120 col requires:
## 1.5 *120*8bytes -->1.34 GB; but actually needed twice as memory

## dput use to create fiel with the same object
## dump used for multiple objects


