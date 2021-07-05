corr <- function(directory, threshold = 0){
  mydata <- list.files(path = directory, pattern = ".csv")
  result <- vector(mode = "numeric", length = 0) 
  
  for(i in 1:332) 
  {
    goodfile <- na.omit(read.csv(mydata[i]))
    if(nrow(goodfile) > threshold ) {
      
      corvector <- cor(goodfile$sulfate, goodfile$nitrate)
      result <- append(result,corvector)
    }
  }
  result
}