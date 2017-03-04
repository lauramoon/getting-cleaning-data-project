# The user should provide the path to the directory containing
# the "UCI HAR Dataset" folder, as unzipped.
# The files and subdirectories should not be altered or moved.
# If the folder is in the working directory, the function requires no argument.

run_analysis <- function (directory = getwd()) {
  
  #The activity codes and subject IDs are provided in separate files.
  #We add them as columns to the end of the data
  testdatafile <- paste(directory, "/UCI HAR Dataset/test/X_test.txt", sep = "")
  testdata <- read.table(testdatafile)
  testactivityfile <- paste(directory, "/UCI HAR Dataset/test/y_test.txt", sep = "")
  testactivity <- read.table(testactivityfile)
  testsubjectfile <- paste(directory, "/UCI HAR Dataset/test/subject_test.txt", sep = "")
  testsubject <- read.table(testsubjectfile)
  alltestdata <- cbind(testdata, testactivity, testsubject)
  
  traindatafile <- paste(directory, "/UCI HAR Dataset/train/X_train.txt", sep = "")
  traindata <- read.table(traindatafile)
  trainactivityfile <- paste(directory, "/UCI HAR Dataset/train/y_train.txt", sep = "")
  trainactivity <- read.table(trainactivityfile)
  trainsubjectfile <- paste(directory, "/UCI HAR Dataset/train/subject_train.txt", sep = "")
  trainsubject <- read.table(trainsubjectfile)
  alltraindata <- cbind(traindata, trainactivity, trainsubject)
  
  #Then we combine the test data and the training data (#1 in assignment)
  alldata <- rbind(alltestdata, alltraindata)
  
  #The column names are found in features.txt.
  collabelfile <- paste(directory, "/UCI HAR Dataset/features.txt", sep = "")
  collabel <- read.table(collabelfile, stringsAsFactors = FALSE)
  labellist <- collabel$V2
  
  #We want to keep only those measurements with "mean()" and "std()" in the column name.
  keepcols <- grep("mean()|std()", labellist) 
  
  #We also don't want to throw out the activity and subject columns (the last two columns).
  keepcols <- c(keepcols, ncol(alldata)-1, ncol(alldata))
  
  #This is the data we want to keep (#2 in assignment)
  keepdata <- alldata[ , keepcols]
  
  #Next we replace the activity codes with the names from activity_labels.txt
  actlabelfile <- paste(directory, "/UCI HAR Dataset/activity_labels.txt", sep = "")
  actlabel <- read.table(actlabelfile)
  
  #The activity data is in the second to last column in keepdata.
  actcolnum <- ncol(keepdata) - 1
  
  #replace the numbers with activity names (#3 in assignment)
  keepdata[ , actcolnum] <- actlabel[keepdata[ , actcolnum], 2]
  
  #Get the column names for the dataset.
  labellistall <- c(labellist, "activity", "subject")
  keeplabel <- labellistall[keepcols]
  
  #Clean up the names
  keeplabel <- gsub("-", "", keeplabel)
  keeplabel <- gsub("()", "", keeplabel, fixed = TRUE)
  
  #Name the columens of keepdata. (#4 in assignment)
  colnames(keepdata) <- keeplabel
  
  #We could write this data to a file with the line:
  #write.table(keepdata, "keepdata.txt")

  #Create a second dataset with the average for each variable for each activity and subject.
  groupdata <- group_by(keepdata, activity, subject)
  meandata <- summarize_all(groupdata, mean)
  
  #Write this second dataset to a file.
  write.table(meandata, "meandata.txt", row.names = FALSE)

}
