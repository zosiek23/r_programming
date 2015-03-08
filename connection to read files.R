## 
con<-file ("foo.txt","r")
data<- read.csv (con)
close(con)

## connection is usefull to read part of the file
x<-readlLines(con,10)