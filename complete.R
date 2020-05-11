complete <- function(directory,id = 1:332){
  x<-id
  y<-0
  setwd(directory)
  i<-1
  while(i <=length(id)){
    if(x[i]<10)
      if(x[i]<10){
        t <-paste("00",x[i],sep="")
        loc<-paste(t,"csv",sep=".")
      }
    else if(x[i]<100){
      t <-paste("0",x[i],sep="")
      loc<-paste(t,"csv",sep=".")
    }
    else{
      loc<-paste(id[i],"csv",sep=".")
    }
    data <- read.csv(loc)
    y[i] <- sum(complete.cases(data))
    i<-i+i
  }
  data.frame(
    id=x,
    nobs = y)
}