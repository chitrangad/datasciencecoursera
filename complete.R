setwd("C:/Users/Chits/Documents/Coursera Data Science Certification/Course 2/Assignments/")
complete <- function(directory, id = 1:332)
{
  directory1<- paste(getwd(),directory,sep="/")
  filelist <- list.files(directory1,full.names = TRUE)
  data1<- data.frame()
  for (i in id)
  {
    currfile <-read.csv(filelist[i],header=TRUE,sep=",")
    currfile <- na.omit(currfile)
    obs <- nrow(currfile)
    data1 <- rbind(data1,data.frame(i,obs))
  }
  return(data1)
}
