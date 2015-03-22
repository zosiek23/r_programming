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
