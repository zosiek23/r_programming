pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  ## display list of files in the directory
  csv.title <- list.files(directory)
  csv.num <- as.numeric(sub('\\.csv$','', csv.title))
  
  ## Choose specific files
  choosen.data <- na.omit(csv.title[match(id, csv.num)])
  
  ## read selected data
  read.data <- lapply(file.path(directory,choosen.data ), read.csv) 
  col<- sapply(read.data, function(x) x[ ,pollutant]) 
  
  ## unlist sepcific pollutant
  poll<-unlist(col) 
  
  ## Calculate mean of that pollutant
  mean(poll, na.rm = TRUE)
}




## Examples found
pollutantmean <- function(directory, pollutant, id = 1:332) {
  file.names <- list.files(directory)
  file.numbers <- as.numeric(sub('\\.csv$','', file.names))
  selected.files <- na.omit(file.names[match(id, file.numbers)])
  selected.dfs <- lapply(file.path(directory,selected.files), read.csv) 
  e <- sapply(selected.dfs, function(x) x[ ,pollutant]) 
  n<-unlist(e) 
  mean(n, na.rm = TRUE)
}

## We need to unlist the output of sapply.
## So it would look like this :
  
selected.dfs <- lapply(file.path(directory,selected.files), read.csv) 
e <- sapply(selected.dfs, function(x) x[ ,pollutant]) 
n<-unlist(e) 
mean(n, na.rm = TRUE)


## Other example

pollutantmean <- function(directory, pollutant, id = 1:10) {
  filenames <- sprintf("%03d.csv", id)
  filenames <- paste(directory, filenames, sep="/")
  ldf <- lapply(filenames, read.csv)
  df=ldply(ldf)
  # df is your list of data.frames
  mean(df[, pollutant], na.rm = TRUE)
}


## Complete
## works only for first obs or when selcting from first obser
complete <- function(directory, id = 1:332) {
  # list files
  files_full <- list.files(directory, full.names = TRUE)
  files_toread <- files_full[id] # filter out unwanted files (tip: ?grep is better)
  output <- data.frame(id = id, nobs = 0)
  for (i in id) { 
    tmp <- read.csv(files_toread[i]) # read the data
    nobs <- sum(complete.cases(tmp)) # number of complete cases
    output[i, "nobs"] <- nobs
  }
  output
}

