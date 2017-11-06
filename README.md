# README.md file for Getting and Cleaning Data project

## The R script run_analysis.r is used to retrieve the data from the source location and transform it to produce the final "second tidy data set". The variables in the second tidy data set is described in the CodeBook.md. 

The steps in the script also described in the comments within the script itself are:
* If dataset files do not exist locally, download from source and unzip
* Read the training data sets, test data sets, features file and activity labels file.
* Combine the training and test data sets into a Combined data set
* Use the values in the features file to label the columns of the Combined data set
* Using grepl, identify the columns containing the variables and subset into subsetted data set.
* Merge activity values with descriptive activity names
* Extract and clean up column names by removing special characters, expanding abbreviations and removing typos.
* Apply corrected column names back to subsetted data set
* Generate "second tidy data set" by generating average of all values for each subject and each activity. 
* Write the "second tidy data set" back to file as "secondTidySet.txt"

