## Course project for Getting and Cleaning Data

Project Data Source -> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Project contains run_analysis.R script which does the following tasks
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each   activity and each subject.

Packages used:
* plyr
* reshape2

Processing done:
* Only mean and standard deviation for each measurement was extracted
* Dataset must be unzipped in the working directory for the script to work

To run script type the following at R prompt
$ Rscript run_analysis.R

Output of the script
tidy-data-mean.txt - Contains tidy data set with the average of each variable for each   activity and each subject.
