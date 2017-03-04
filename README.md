# Getting and Cleaning Data Course Project
This is the final project for the Coursera course Getting and Cleaning Data

## The Files
This repo contains two files: run_analysis.R and CodeBook.md. 

run_analysis.R is an R script containing a single function, run_analysis(), that processes a dataset of measurements calculated from raw data collected from accelerometers in Samsung Galaxy S smartphones. This function produces a tidy dataset of means on each of a subset of the measurements for each person (subject) and activity (such as walking or sitting). This process is described in detail below.

CodeBook.md provides a codebook describing each of the variables in the final, submitted dataset.

## The Data
The README file in the original dataset provides the following description of the data collection:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

Any publications using this data should cite:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data used in this analysis was obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The Analysis
The run_analysis() function in the run_analysis.R script in this repo does the following:
### 1. Merges the training and test datasets to create one dataset. 
First, the subject and activity columns are added to the measurements data with cbind(), and then the two sets (training and test) are merged with rbind().
### 2. Extracts the measurements ("features" in the original) on the mean and standard deviation.
The features list provides all of the names of the measurement variables. The run_analysis script keeps only the measurements with feature names containing "mean()" and "std()" using grep() on the list of features.
### 3. Uses descriptive activity names to name the activities in the data set
The activities column originally contained only a number. The script uses the list of activity names to replace the number in the dataset with the corresponding name.
### 4. Appropriately labels the data set with descriptive variable names
The script cleans up the measurement names by removing dashes and parentheses and adds the names as column names to the dataset. A fuller explanation of these names is found in CodeBook.md.
### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
The script groups the dataset by both activity and subject and then applys the mean function in the summarize_all function to produce a second dataset with only the mean values for each measurement for each activity and subject. It writes this dataset to "meandata.txt" The column names remain the same, but should be understood as means of the values identified and described in CodeBook.md.

This dataset is tidy because (1) each column contains a different variable, (2) each row contains a different observation (in this case, a different activity and subject), and (3) the single table forms a single observational unit (in this case, processed data collected from a single set of observations).

The second, submitted dataset should load properly with the read.table() function with all default arguments. 
