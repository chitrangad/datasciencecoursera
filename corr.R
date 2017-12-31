setwd("C:/Users/Chits/Documents/Coursera Data Science Certification/Course 2/Assignments/")
corr <- function(directory, threshold= 0)
{
  directory1<- paste(getwd(),directory,sep="/")
  filelist <- list.files(directory1,full.names = TRUE)
  data1<- numeric(0)
  for (i in 1:332)
    {
      currfile<- read.csv(filelist[i],header=TRUE,sep=",")
      currfile<-na.omit(currfile)
      obs <-nrow(currfile)
      if(obs>threshold)
      {
        data1<- c(data1,cor(currfile$sulfate,currfile$nitrate))
      }
  }
      return(data1)
}
