complete <- function(directory, id = 1:332){
  mylist <- list.files(path = directory, pattern = ".csv")
  nobs <- numeric()
  for(i in id){
    mydata <- read.csv(mylist[i])
    nobs <- c(nobs, sum(complete.cases(mydata)))
  }
  data.frame(id, nobs)
}