
### Load all necessary data and information

# Loading required library
library(tidyr)
library(dplyr)

# Load activity and features labels
activity_labels_Table <-  read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names = c("Activity_num","Activity_labels"))
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, col.names = c("Feature_num","Features"))

# Loading data from the training set
X_train <-  read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names = features[,2])
y_train <-  read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, col.names = "Activity_label")
subject_train <-  read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names = "Subject")

# Loading data from the test set
X_test <-  read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, col.names = features[,2])
y_test <-  read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, col.names = "Activity_label")
subject_test <-  read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names = "Subject")

### Building one data set

# Making one data frame for the training set
train <- as.data.frame(c(subject_train, y_train, X_train)) # Creating the new data frame
colnamesTRAIN <- as.list(colnames(train)) # Get column names
train <- mutate(train, Set = "train") # Generate a train ID
train <- select(train, Set, get(colnamesTRAIN[[1]]):get(colnamesTRAIN[[length(colnamesTRAIN)]])) # Re-order columns for readibility

# Making one data frame for the test set
test <- as.data.frame(c(subject_test, y_test, X_test)) # Creating the new data frame
colnamesTEST <- as.list(names(test)) # Get column names
test <- mutate(test, Set = "test") # Generate a test ID
test <- select(test, Set, get(colnamesTEST[[1]]):get(colnamesTEST[[length(colnamesTEST)]])) # Re-order columns for readibility

# Deleting unnecessary train and test variables from workspace
rm(subject_test, y_test, X_test, subject_train, y_train, X_train, features, colnamesTEST, colnamesTRAIN)

# Merging test and training data frames
Data <- merge(train, test, all = TRUE)
rm(train, test) # Deleting non-merged data frames

### Tidying the data

# Extracts only the measurements on the mean and standard deviation for each measurement.
Data <- select(Data,contains("Set"), contains("Subject"), contains("Activity_label"), contains("mean"), contains("std"))
Data <- select(Data,-contains("meanFreq"))

#Uses descriptive activity names to name the activities in the data set
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

# Angle data reformatted
names(Data) <- sub("angle.tBodyAccelerationMean.Gravity.", "Angle_TimeDomain_BodyAccelerationMean_Gravity", names(Data))
names(Data) <- sub("angle.tBodyAccelerationJerkMean..GravityMean.", "Angle_TimeDomain_BodyAccelerationJerkMean_GravityMean", names(Data))
names(Data) <- sub("angle.tBodyGyrometerMean.GravityMean.", "Angle_TimeDomain_BodyGyrometerMean_GravityMean", names(Data))
names(Data) <- sub("angle.tBodyGyrometerJerkMean.GravityMean.", "Angle_TimeDomain_BodyGyrometerJerkMean_GravityMean", names(Data))
names(Data) <- sub("angle.X.GravityMean.", "Angle_GravityMean_in_X", names(Data))
names(Data) <- sub("angle.Y.GravityMean.", "Angle_GravityMean_in_Y", names(Data))
names(Data) <- sub("angle.Z.GravityMean.", "Angle_GravityMean_in_Z", names(Data))

# Make reference to X, Y, and Z more tidy
names(Data) <- sub("\\.", "", names(Data))
names(Data) <- sub("\\.", "", names(Data))
names(Data) <- sub("\\.", "_in_", names(Data))

# From the tidy data in "Data", a second, independent tidy data set is created set 
# with the average of each variable for each activity and each subject.
TidyData_Step5 <- group_by(Data, Set, Subject, Activity_label) # Define grouping variables
TidyData_Step5 <- summarise_each(TidyData_Step5, funs(mean)) # Evaluate the mean of all non-grouping variables for all groups

### Generating Outputs

# Save tidy data 2 as a txt file
write.table(TidyData_Step5, file = "TidyData_Step5.txt", row.name=FALSE)

# Remove "Data" from workspace
rm(Data)

