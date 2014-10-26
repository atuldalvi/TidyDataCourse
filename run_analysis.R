## Read Activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             stringsAsFactors = FALSE, 
                             col.names = c("Id", "ActivityName"))

## Read feature names
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

## Read test Data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", 
                       stringsAsFactors = FALSE, 
                       col.names =  unlist(features[,2]))

## Extracts only the measurements on the mean and standard deviation for each measurement
testData <- testData[,grep("mean\\.|std\\.", colnames(testData))]

## Read test activities
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                           stringsAsFactors = FALSE, 
                           col.names = c("Activity"))
## Read test subjects
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                           stringsAsFactors = FALSE, 
                           col.names = c("Subject"))

## Replace test activity numbers with activity names
testActivity$Activity <- activityLabels$ActivityName[match(testActivity$Activity,activityLabels$Id)]

## Merge all test data columns
testDataFull <- cbind(testSubjects, testActivity, testData)
##rm("testSubjects")
##rm("testActivity")
##rm("testData")

## Repeat above steps for Training data
## Read Training data
trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                           stringsAsFactors = FALSE, 
                           col.names =  unlist(features[,2]))

## Extracts only the measurements on the mean and standard deviation for each measurement
trainingData <- trainingData[,grep("mean\\.|std\\.", colnames(trainingData))]

## Read training activities
trainingActivity <- read.table("./UCI HAR Dataset/train//y_train.txt", 
                               stringsAsFactors = FALSE, 
                               col.names = c("Activity"))
## Read training subjects
trainingSubjects <- read.table("./UCI HAR Dataset/train//subject_train.txt", 
                               stringsAsFactors = FALSE, 
                               col.names = c("Subject"))

## Replace training activity numbers with activity names
trainingActivity$Activity <- activityLabels$ActivityName[match(trainingActivity$Activity,
                                                               activityLabels$Id)]

## Merge all training data columns
trainingDataFull <- cbind(trainingSubjects, trainingActivity, trainingData)

## Merge test and training data
tidyData <- rbind(testDataFull, trainingDataFull)

## Get mean data by Subject and Activity
meanData <- ddply(melt(tidyData, id.vars=c("Subject", "Activity")), .(Subject, Activity), summarise, MeanSamples=mean(value))

## Write mean data to txt file
write.table(meanData, file = "tidy-data-mean.txt", row.names = FALSE)