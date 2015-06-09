# README.md
 
For the R script called run_analysis.R
Written by Raphael Turcotte, 2015/06/08
Part of GettingCleaningData_Project

## Summary

The goal of this script is to tidy part of the data from the Human Activity Recognition Using Smartphones Dataset. The data to be tidied is the pre-process acceleration data from the text and train sets. The original data and the original variable descriptions are available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. This data is based on an experimental dataset in which the sensor signals from an accelerometer and gyroscope from a smartphone (Samsung Galaxy S II) was recorded while participant were performing specific activities. More information on the original dataset can be found here: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". 

This script is divided into 5 sections:
 1. Load all necessary data and information from test and train datasets.
 2. Build one data set by merging the test and train data sets.
 3. Tidying the data
  - Extracts only the measurements on the mean and standard deviation for each measurement for the step 2 data table.
  - Variables and labels are renames as needed.
 4. Create a second tidy data set
  - The new data set contains the average of each variable for each activity and each subject from the step 3 data table.
 5. Generate Outputs
  - The primary output is "TidyData_Step5.txt". It consists of the data table created in step 4.

Read CodeBook.md for a detail description of column variables in "TidyData_Step5.txt".

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
  - Eliminate degenerated word recurrence
  - Make reference to X, Y, and Z more tidy

## 4. Create a second tidy data set with the average of each variable for each activity and each subject from the tidy data obtained from steps 1-3.

4.1 Define grouping variables Set, Subject, and Activity_label using group_by.

4.2 Evaluate the mean of all non-grouping variables and return the result as a new data set.

## 5. Generate Outputs

5.1 Save new tidy data "TidyData_Step5.txt" using write.table with the option "row.name=FALSE"

5.2 Remove the first Tidy data "Data" from workspace such taht the output is the tidy data generated in step 4.

