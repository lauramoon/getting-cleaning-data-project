# CodeBook for the Getting and Cleaning Data Course Project

## Original Description of Data
The original dataset provides, in part, the following description of the measurement variables ("features"):


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 


"Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 


"Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


"These signals were used to estimate variables of the feature vector for each pattern:  


"'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


## Processed Data Variable Names
For each window of data for the features identified above, a long list of types of data were calculated, but the dataset for this project only retained the mean (including the frequency mean, where applicable) and standard deviation on each feature.

In the initial data collection, acceleration was measured in standard 'g' gravity units and angular motion in radians/second. However, the processed data provided in the original dataset described above were normalized and bounded within (-1, 1), so units are irrelevant.

The remainder of this CodeBook lists and describes each column name in the final dataset submitted with this project. A careful reader of the above description could determine the meaning of each column from the name alone, but an explicit description is provided here for convenience.

Note that in the submitted dataset, the values in each measurement column are the average of the values for that measurement, subject, and activity.

### 1. activity
The activity the subject was engaged in at the time the raw data was recorded.

### 2. subject
An integer identifying which of thirty test subjects was performing the activity.

### 3-5. tBodyAccmeanX, tBodyAccmeanY, tBodyAccmeanZ
The average acceleration of the subject's body in the X, Y, Z directions.

### 6-8. tBodyAccstdX, tBodyAccstdY, tBodyAccstdZ
The stadard deviation of the acceleration of of the subject's body in the X, Y, and Z direction.

### 9-11. tGravityAccmeanX, tGravityAccmeanY, tGravityAccmeanZ
The average acceleration due to gravity in the X, Y, and Z directions

### 12-14. tGravityAccstdX, tGravityAccstdY, tGravityAccstdZ
The standard deviation of acceleration due to gravity in the X, Y, and Z directions

### 15-17. tBodyAccJerkmeanX, tBodyAccJerkmeanY, tBodyAccJerkmeanZ
The average rate of change of acceleration of the subject's body in the X, Y, and Z directions

### 18-20. tBodyAccJerkstdX, tBodyAccJerkstdY, tBodyAccJerkstdZ
The standard deviation of rate of change of acceleration of the subject's body in the X, Y, and Z directions

### 21-23. tBodyGyromeanX, tBodyGyromeanY, tBodyGyromeanZ
The average angular velocity of the subject's body in the X, Y, and Z directions

### 24-26. tBodyGyrostdX, tBodyGyrostdY, tBodyGyrostdZ
The standard deviation of the angular velocity of the subject's body in the X, Y, and Z directions

### 27-29. tBodyGyroJerkmeanX, tBodyGyroJerkmeanY, tBodyGyroJerkmeanZ
The average rate of change of angular velocity of the subject's body in the X, Y, and Z directions

### 30-32. tBodyGyroJerkstdX, tBodyGyroJerkstdY, tBodyGyroJerkstdZ
The standard deviation of the rate of change of angular velocity of the subject's body in the X, Y, and Z directions

### 33. tBodyAccMagmean
The average magnitude of the acceleration of the subject's body

### 34. tBodyAccMagstd
The standard deviation of the magnitude of the acceleration of the subject's body

### 35. tGravityAccMagmean
The average magnitude of acceleration due to gravity

### 36. tGravityAccMagstd
The standard deviation of the magnitude of acceleration due to gravity

### 37. tBodyAccJerkMagmean
The average magnitude of the rate of change of acceleration of the subject's body

### 38. tBodyAccJerkMagstd
The standard deviation of the magnitude of the rate of change of acceleration of the subject's body

### 39. tBodyGyroMagmean
The average magnitude of the angular velocity of the subject's body

### 40. tBodyGyroMagstd
The standard deviation of the magnitude of the angular velocity of the subject's body

### 41. tBodyGyroJerkMagmean
The average magnitude of the rate of change of angular velocity of the subject's body

### 42. tBodyGyroJerkMagstd
The standard deviation of the magnitude of the rate of change of angular velocity of the subject's body

### 43-45. fBodyAccmeanX, fBodyAccmeanY, fBodyAccmeanZ
The average of the Fast Fourier Transform of the acceleration of the subject's body

### 46-48. fBodyAccmeanX, fBodyAccmeanY, fBodyAccmeanZ
The standard deviation of the Fast Fourier Transform of the acceleration of the subject's body

### 49-51. fBodyAccmeanFreqX, fBodyAccmeanFreqY, fBodyAccmeanFreqZ
The average frequency of the Fast Fourier Transform of the acceleration of the subject's body

### 52-54. fBodyAccJerkmeanX, fBodyAccJerkmeanY, fBodyAccJerkmeanZ
The average of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 55-57. fBodyAccJerkstdX, fBodyAccJerkstdY, fBodyAccJerkstdZ
The standard deviation of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 58-60. fBodyAccJerkmeanFreqX, fBodyAccJerkmeanFreqY, fBodyAccJerkmeanFreqZ
The average frequency of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 61-63. fBodyGyromeanX, fBodyGyromeanY, fBodyGyromeanZ
The average of the Fast Fourier Transform of the angular velocity of the subject's body

### 64-66. fBodyGyrostdX, fBodyGyrostdY, fBodyGyrostdZ
The standard deviation of the Fast Fourier Transform of the angular velocity of the subject's body

### 67-69. fBodyGyromeanFreqX, fBodyGyromeanFreqY, fBodyGyromeanFreqZ
The average frequency of the Fast Fourier Transform of the angular velocity of the subject's body

### 70. fBodyAccMagmean
The average of the magnitude of Fast Fourier Transform of the acceleration of the subject's body

### 71. fBodyAccMagstd
The standard deviation of the magnitude of the Fast Fourier Transform of the acceleration of the subject's body

### 72. fBodyAccMagmeanFreq
The average frequency of the magnitude of the Fast Fourier Transform of the acceleration of the subject's body

### 73. fBodyBodyAccJerkMagmean
The average of the magnitude of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 74. fBodyBodyAccJerkMagmean
The standard deviation of the magnitude of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 75. fBodyBodyAccJerkMagmeanFreq
The average frequency of the magnitude of the Fast Fourier Transform of the rate of change of acceleration of the subject's body

### 76. fBodyBodyGyroMagmean
The average of the magnitude of the Fast Fourier Transform of the angular velocity of the subject's body

### 77. fBodyBodyGyroMagstd
The standard deviation of the magnitude of the Fast Fourier Transform of the angular velocity of the subject's body

### 78. fBodyBodyGyroMagmeanFreq
The average frequency of the magnitude of the Fast Fourier Transform of the angular velocity of the subject's body

### 79. fBodyBodyGyroJerkMagmean
The average of the magnitude of the Fast Fourier Transform of the rate of change of angular velocity of the subject's body

### 80. fBodyBodyGyroJerkMagstd
The standard deviation of the magnitude of the Fast Fourier Transform of the rate of change of angular velocity of the subject's body

### 81. fBodyBodyGyroJerkMagmeanFreq
The average frequency of the magnitude of the Fast Fourier Transform of the rate of change of angular velocity of the subject's body
