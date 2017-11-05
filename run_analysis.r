# This is a script to download data for course project and create a tidy set.



dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFile <- "dataset.zip"
dataFolder <- "./project/data"

# To remove # if(!file.exists("./project")){dir.create("./project")}
if(!file.exists(dataFile)){
download.file(dataUrl,dataFile,mode="wb")
unzip(dataFile)
}

