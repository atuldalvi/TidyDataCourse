##Code book.

For the UCI HAR Dataset, following data frames are created by the run_analysis.R script

All units are the same as used in the original data set

##tidyData
Obtained by merging test and training data from UCI HAR Dataset. Only mean and standard deviation for each measurements are extracted into tidyData.
Following are the variables present in this data frame
* Subject
* Activity
* tBodyAcc.mean...X          
* tBodyAcc.mean...Y
* tBodyAcc.std...Y
* tGravityAcc.mean...Y
* tGravityAcc.std...Y
* tBodyAccJerk.mean...Y
* tBodyAccJerk.std...Y
* tBodyGyro.mean...Y
* tBodyGyro.std...Y
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.std...Y
* tBodyAccMag.std..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.std..
* fBodyAcc.mean...X
* fBodyAcc.std...X
* fBodyAccJerk.mean...X
* fBodyAccJerk.std...X
* fBodyGyro.mean...X
* fBodyGyro.std...X
* fBodyAccMag.mean..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroJerkMag.mean..
* tBodyAcc.mean...Z
* tBodyAcc.std...Z
* tGravityAcc.mean...Z
* tGravityAcc.std...Z
* tBodyAccJerk.mean...Z
* tBodyAccJerk.std...Z
* tBodyGyro.mean...Z
* tBodyGyro.std...Z
* tBodyGyroJerk.mean...Z
* tBodyGyroJerk.std...Z
* tGravityAccMag.mean..
* tBodyAccJerkMag.std..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...Y
* fBodyAcc.std...Y
* fBodyAccJerk.mean...Y
* fBodyAccJerk.std...Y
* fBodyGyro.mean...Y
* fBodyGyro.std...Y
* fBodyAccMag.std..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroJerkMag.std..
* tBodyAcc.std...X
* tGravityAcc.mean...X
* tGravityAcc.std...X
* tBodyAccJerk.mean...X
* tBodyAccJerk.std...X
* tBodyGyro.mean...X
* tBodyGyro.std...X
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.std...X
* tBodyAccMag.mean..
* tGravityAccMag.std..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.std..
* fBodyAcc.mean...Z
* fBodyAcc.std...Z
* fBodyAccJerk.mean...Z
* fBodyAccJerk.std...Z
* fBodyGyro.mean...Z
* fBodyGyro.std...Z
* fBodyBodyAccJerkMag.mean..
* fBodyBodyGyroMag.std..

##meanData
Obtained by taking average of each variable for each activity and each subject in the tidyData dataset

Following are the variables in this dataset
* Subject
* Activity
* MeanSamples