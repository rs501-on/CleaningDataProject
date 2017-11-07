## This is a script to download data for course project and create a tidy set

# Clear the environment
rm(list=ls())

# Download data file if not already present
dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFile <- "dataset.zip"

if(!file.exists(dataFile)){
    download.file(dataUrl,dataFile,mode="wb")
    unzip(dataFile)
}

# Read the data
dataFolder <- "UCI HAR Dataset"

trainingSubjects <- read.table(file.path(dataFolder,"train","subject_train.txt"))
trainingValues <- read.table(file.path(dataFolder,"train","x_train.txt"))
trainingActivity <- read.table(file.path(dataFolder,"train","y_train.txt"))

testSubjects <- read.table(file.path(dataFolder,"test","subject_test.txt"))
testValues <- read.table(file.path(dataFolder,"test","x_test.txt"))
testActivity <- read.table(file.path(dataFolder,"test","y_test.txt"))

# Read features
features <- read.table(file.path(dataFolder,"features.txt"),as.is=TRUE)

# Read Activity labels
activityLabels <- read.table(file.path(dataFolder,"activity_labels.txt"))
colnames(activityLabels) <- c('activityId','activityType')

# Merge all data into one data set
allActivities <- rbind(cbind(trainingSubjects,trainingActivity,trainingValues),
                     cbind(testSubjects,testActivity,testValues))
# Assign column names for combined data set
colnames(allActivities) <- c("subjectId","activityId",features[,2])

# Determining set of columns to keep from combined data set
columnsToKeep <- grepl("subject|activity|mean|std",colnames(allActivities))
activitiesToKeep <- allActivities[,columnsToKeep]

# Merge activity values with descriptive activity names
activitiesWithNamesToKeep <- merge(activitiesToKeep,activityLabels, by = 'activityId',all.x = TRUE)

## Replacing data set Column Names with descriptive Names

# Extracting column names from dataset
columnNames <- colnames(activitiesWithNamesToKeep)

# Removing special characters
columnNames <- gsub("\\(\\)","",columnNames)

# Expanding abbreviated and incorrect column names
columnNames <- gsub("^f", "frequency", columnNames)
columnNames <- gsub("^t", "time", columnNames)
columnNames <- gsub("Acc", "Accelerometer", columnNames)
columnNames <- gsub("Gyro", "Gyroscope", columnNames)
columnNames <- gsub("Mag", "Magnitude", columnNames)
columnNames <- gsub("Freq", "Frequency", columnNames)
columnNames <- gsub("mean", "Mean", columnNames)
columnNames <- gsub("std", "StandardDeviation", columnNames)
columnNames <- gsub("BodyBody", "Body", columnNames)

# Applying corrected column names back to data set
colnames(activitiesWithNamesToKeep) <- columnNames

## Creating second tidy data set with the mean of each variable for each subject and each activity
secondTidySet <- aggregate(. ~subjectId + activityId + activityType, activitiesWithNamesToKeep, mean)

# Sorting data according to subjectId and activityId
secondTidySet <- secondTidySet[order(secondTidySet$subjectId,secondTidySet$activityId),]

# Writing second tidy data set to file
write.table(secondTidySet,"secondTidySet.txt",row.names=FALSE)

# End of script