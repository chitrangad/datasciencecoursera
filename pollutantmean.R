setwd("C:/Users/Chits/Documents/Coursera Data Science Certification/Course 2/Assignments/")
pollutantmean <- function(directory, pollutant, id = 1:332)
  {
  directory1<- paste(getwd(),directory,sep="/")
  filelist <- list.files(directory1,full.names = TRUE)
#print(filelist)
  data1<-data.frame()
    for(i in id) {
    currfile <-read.csv(filelist[i],header=TRUE,sep=",")
    #print(currfile)
    data1 <- rbind(data1,currfile)
    }
  return(mean(data1[,pollutant],na.rm=T))
}