pollutantmean <- function(directory,pollutant, id=1:332){
  if(identical(pollutant,"sulfate"))
  {
    x<-2
  }else if(identical(pollutant,"nitrate")){
    x<-3
  }
  i<-1
  setwd(directory)
  while(i<=length(id)){
    if(id[i]<10){
      t <-paste("00",id[i],sep="")
      loc<-paste(t,"csv",sep=".")
    }
    else if(id[i]<100){
      t <-paste("0",id[i],sep="")
      loc<-paste(t,"csv",sep=".")
    }
    else{
    loc<-paste(id[i],"csv",sep=".")
    }
    data <- read.csv(loc)
    id[i] <- mean(data[,x],na.rm = TRUE)
    i <- i+1
  }
  id
}