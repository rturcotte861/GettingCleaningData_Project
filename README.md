 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

# Code Book 

for GettingCleaningData_Project

The file describes the meaning of each column in the tidy data set: "TidyData_Step5.txt".

## The structure is as follow:
### [column position] Variable name

## Summary
The data set "TidyData_Step5.txt" is derived from an experimental dataset in which the sensor signals from an accelerometer and gyroscope from a smartphone (Samsung Galaxy S II) was recorded while participant were performing specific activities. More information on the original dataset can be found here: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". This modified data contains the average of the mean and the average of the standard deviation of several parameters (described below) for each subject and each activity. For a detailed description of how the orignal data was modified, please refer to the README.md file.


# GettingCleaningData_Project
Repository for the Getting and Cleaning Data Course Project


##############################################################################################
# Human Activity Recognition Using Smartphones Dataset
#
# This code has the purpose of tidying the data from the original source which can be download here:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# Read the README.md and CodeBook.md for description of the code and variables
#
# This code is divided into 
# 1. Load all necessary data and information
# 2. Build one data set
# 3. Tidying the data into two  distinct datasets
# 4. Generate Outputs
#
# Raphael Turcotte, 2015/06/08
#
##############################################################################################

### Load all necessary data and information

# Load required library
library(tidyr)
library(dplyr)

# Load activity and features labels
activity_labels_Table <-  read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names = c("Activity_num","Activity_labels"))
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, col.names = c("Feature_num","Features"))

# Load data from the training set
X_train <-  read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names = features[,2])
y_train <-  read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, col.names = "Activity_label")
subject_train <-  read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names = "Subject")

# Load data from the test set
X_test <-  read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, col.names = features[,2])
y_test <-  read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, col.names = "Activity_label")
subject_test <-  read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names = "Subject")

### Build one data set

# Make one data frame for the training set
train <- as.data.frame(c(subject_train, y_train, X_train)) # Creating the new data frame
colnamesTRAIN <- as.list(colnames(train)) # Get column names
train <- mutate(train, Set = "train") # Generate a train ID
train <- select(train, Set, get(colnamesTRAIN[[1]]):get(colnamesTRAIN[[length(colnamesTRAIN)]])) # Re-order columns for readibility

# Make one data frame for the test set
test <- as.data.frame(c(subject_test, y_test, X_test)) # Creating the new data frame
colnamesTEST <- as.list(names(test)) # Get column names
test <- mutate(test, Set = "test") # Generate a test ID
test <- select(test, Set, get(colnamesTEST[[1]]):get(colnamesTEST[[length(colnamesTEST)]])) # Re-order columns for readibility

# Delete unnecessary train and test variables from workspace
rm(subject_test, y_test, X_test, subject_train, y_train, X_train, features, colnamesTEST, colnamesTRAIN)

# Merge test and training data frames
Data <- merge(train, test, all = TRUE)
rm(train, test) # Deleting non-merged data frames

### Tidying the data

# Extracts only the measurements on the mean and standard deviation for each measurement.
Data <- select(Data,contains("Set"), contains("Subject"), contains("Activity_label"), contains("mean"), contains("std"))
Data <- select(Data,-contains("meanFreq"),-contains("angle")) # Remove angle and meanFrequency measurements.

# Uses descriptive activity names to name the activities in the data set
Data <- mutate(Data, Activity_label = activity_labels_Table[Activity_label,2])
rm(activity_labels_Table) # Deleting unnecessary variables from workspace

# Appropriately labels the data set with descriptive variable names.
# Explicitly define measurement domain
names(Data) <-sub("^f", "FrequencyDomain_", names(Data))
names(Data) <- sub("^t", "TimeDomain_", names(Data))

# Capitalize parameters
names(Data) <- gsub("gravity", "Gravity", names(Data))
names(Data) <- gsub(".mean", "_Mean", names(Data)) # Also replace "." by "_"

# Eliminate abbreviations
names(Data) <- gsub("Acc", "Acceleration", names(Data))
names(Data) <- gsub("Gyro", "Gyrometer", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub(".std", "_StandardDeviation", names(Data)) # Also replace "." by "_"
names(Data) <- gsub("BodyBody", "Body", names(Data)) # Clean up Body labels

# Make reference to X, Y, and Z more tidy
names(Data) <- sub("\\.", "", names(Data))
names(Data) <- sub("\\.", "", names(Data))
names(Data) <- sub("\\.", "_in_", names(Data))

# From the tidy data in "Data", a second, independent tidy data set is created set 
# with the average of each variable for each activity and each subject.
TidyData_Step5 <- group_by(Data, Set, Subject, Activity_label) # Define grouping variables
TidyData_Step5 <- summarise_each(TidyData_Step5, funs(mean)) # Evaluate the mean of all non-grouping variables for all groups

### Generate Outputs

# Save tidy data 2 as a txt file
write.table(TidyData_Step5, file = "TidyData_Step5.txt", row.name=FALSE)

# Remove "Data" from workspace
rm(Data)

