 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

for GettingCleaningData_Project

## Summary
The data set "TidyData_Step5.txt" is derived from an experimental dataset in which the sensor signals from an accelerometer and gyroscope from a smartphone (Samsung Galaxy S II) was recorded while participant were performing specific activities. More information on the original dataset can be found here: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". This modified data contains the average of the mean and the average of the standard deviation of several parameters (described below) for each subject and each activity. For a detailed description of how the orignal data was modified, please refer to the README.md file.


# GettingCleaningData_Project
Repository for the Getting and Cleaning Data Course Project


 Human Activity Recognition Using Smartphones Dataset

 This code has the purpose of tidying the data from the original source which can be download here:
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 Read the README.md and CodeBook.md for description of the code and variables

 This code is divided into:
 1. Load all necessary data and information
 2. Build one data set
 3. Tidying the data
 4. Create a second tidy data set with the average of each variable for each activity and each subject from the tidy data in "Data"
 5. Generate Outputs

 Raphael Turcotte, 2015/06/08

# Detailed Code Description

## 1. Load all necessary data and information

1.1 Load required library: dplyr and tidyr.

1.2 Load activity and features labels.

    - Files to load have no header and variable names are assigned for all columns.
    
1.3 Load data from the training set

  - Read the "X_train.txt" file without header and use features info to label column variables.
  - Read the "y_train.txt" file without header and label the column variable as "Activity_label".
  - Read the "subject_train.txt" file without header and label the column variable as "Subject".

1.4 Load data from the test set

  - Read the "X_test.txt" file without header and use features info to label column variables.
  - Read the "y_test.txt" file without header and label the column variable as "Activity_label".
  - Read the "subject_test.txt" file without header and label the column variable as "Subject".

## 2. Build one data set

2.1 Make one data frame for the training set

  - Merge all train-related tables as a single data frame (subject_train, y_train, and X_train).
  - Get column names of the new train data frame
  - Generate a train ID for all row of the new train data frame as the Set variable.
  - Re-order column by placing the Set variable at the begining for readibility.

2.2 Make one data frame for the test set

  - Merge all test-related tables as a single data frame (subject_test, y_test, and X_test).
  - Get column names of the new test data frame
  - Generate a test ID for all row of the new test data frame as the Set variable.
  - Re-order column by placing the Set variable at the begining for readibility.

2.3 Delete unnecessary train and test variables from workspace

2.4 Merge test and training data frames using merge() with the option "all = TRUE".

2.5 Delete remaining train and test variables from workspace

## 3. Tidying the data

3.1 Extracts only the measurements on the mean and standard deviation for each measurement.

  - Select only columns with names containing "Set", "Subject", "Activity_label", "mean", or "std" using select().
  - Remove columns with names containing "meanFreq" and "angle" using select().

3.2 Uses descriptive activity names to name the activities in the data set
  - Change the numeric activity label to the description of the activity with words.
  - Delete activy labels information outside of the main data frame.

3.3 Appropriately labels the data set with descriptive variable names.
  - Explicitly define measurement domain
  - Capitalize parameters
  - Eliminate abbreviations
  - Eliminate degenerate word recurrence
  - Make reference to X, Y, and Z more tidy

## 4. Create a second tidy data set with the average of each variable for each activity and each subject from the tidy data in "Data"

4.1 Define grouping variables Data, Set, Subject, and Activity_label using group_by.

4.2 Evaluate the mean of all non-grouping variables and return the result as a new data set.

## 5. Generate Outputs

5.1 Save new tidy data "TidyData_Step5.txt" using write.table with the option "row.name=FALSE"

5.2 Remove the first Tidy data "Data" from workspace such taht the output is the tidy data generated in step 4.

