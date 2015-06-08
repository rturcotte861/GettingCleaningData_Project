# Code Book 

for GettingCleaningData_Project

The file describes the meaning of each column in the tidy data set: "TidyData_Step5.txt".

## The structure is as follow:
### [column position] Variable name

## Summary

## Variable description

### [1] "Set"
The original dataset was randomly partitioned into two sets: where 70% of the volunteers was selected for generating the training data and 30% the test data. Observations for this column identify the set in which a subjects are: "test" or "train".

### [2] "Subject"
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  Observations for this column identify individual subjects: 1-30.

### [3] "Activity_label"

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

### [4] "TimeDomain_BodyAcceleration_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean body acceleration in X evaluated in the time domain. The body acceleration in X was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [5] "TimeDomain_BodyAcceleration_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean body acceleration in Y evaluated in the time domain. The body acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [6] "TimeDomain_BodyAcceleration_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean body acceleration in Z evaluated in the time domain. The mean body acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [7] "TimeDomain_GravityAcceleration_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean gravity acceleration in X evaluated in the time domain. The gravity acceleration was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [8] "TimeDomain_GravityAcceleration_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean gravity acceleration in Y evaluated in the time domain. The gravity acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [9] "TimeDomain_GravityAcceleration_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean gravity acceleration in Z evaluated in the time domain. The gravity acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [10] "TimeDomain_BodyAccelerationJerk_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the body acceleration in X. The Jerk was obtained by deriving the body acceleration in X in the time domain.

### [11] "TimeDomain_BodyAccelerationJerk_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the body acceleration in Y. The Jerk was obtained by deriving the body acceleration in Y in the time domain.

### [12] "TimeDomain_BodyAccelerationJerk_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the body acceleration in Z. The Jerk was obtained by deriving the body acceleration in Z in the time domain.

### [13] "TimeDomain_BodyGyrometer_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean body gyrometer signal in X evaluated in the time domain. The gyroscope signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [14] "TimeDomain_BodyGyrometer_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean body gyrometer signal in Y evaluated in the time domain. The gyroscope signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [15] "TimeDomain_BodyGyrometer_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean body gyrometer signal in Z evaluated in the time domain. The gyroscope signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [16] "TimeDomain_BodyGyrometerJerk_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the gyroscope in X. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [17] "TimeDomain_BodyGyrometerJerk_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the gyroscope in Y. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [18] "TimeDomain_BodyGyrometerJerk_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean Jerk signal of the gyroscope in Z. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [19] "TimeDomain_BodyAccelerationMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the body acceleration in the time domain. The mean magnitude of body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [20] "TimeDomain_GravityAccelerationMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the gravity acceleration in the time domain. The mean magnitude of gravity acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [21] "TimeDomain_BodyAccelerationJerkMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the Jerk of the body acceleration in the time domain. The mean magnitude of the Jerk of the body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [22] "TimeDomain_BodyGyrometerMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the body gyrometer in the time domain. The mean magnitude of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [23] "TimeDomain_BodyGyrometerJerkMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the Jerk of the body gyrometer in the time domain. The mean magnitude of the Jerk of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [24] "FrequencyDomain_BodyAcceleration_Mean_in_X"

### [25] "FrequencyDomain_BodyAcceleration_Mean_in_Y"

### [26] "FrequencyDomain_BodyAcceleration_Mean_in_Z"

### [27] "FrequencyDomain_BodyAccelerationJerk_Mean_in_X"                     
### [28] "FrequencyDomain_BodyAccelerationJerk_Mean_in_Y"                     
### [29] "FrequencyDomain_BodyAccelerationJerk_Mean_in_Z"                     
### [30] "FrequencyDomain_BodyGyrometer_Mean_in_X"                            
### [31] "FrequencyDomain_BodyGyrometer_Mean_in_Y"                            
### [32] "FrequencyDomain_BodyGyrometer_Mean_in_Z"                            
### [33] "FrequencyDomain_BodyAccelerationMagnitude_Mean"                     
### [34] "FrequencyDomain_BodyBodyAccelerationJerkMagnitude_Mean"             
### [35] "FrequencyDomain_BodyBodyGyrometerMagnitude_Mean"                    
### [36] "FrequencyDomain_BodyBodyGyrometerJerkMagnitude_Mean"                
### [37] "Angle_TimeDomain_BodyAccelerationMean_Gravity"                      
### [38] "Angle_TimeDomain_BodyAccelerationJerkMean_GravityMean"              
### [39] "Angle_TimeDomain_BodyGyrometerMean_GravityMean"                     
### [40] "Angle_TimeDomain_BodyGyrometerJerkMean_GravityMean"                 
### [41] "Angle_GravityMean_in_X"                                             
### [42] "Angle_GravityMean_in_Y"                                             
### [43] "Angle_GravityMean_in_Z"


### [44] "TimeDomain_BodyAcceleration_StandardDeviation_in_X"
Observations in this column are the standard deviation for each subject and each activity of the mean body acceleration in X evaluated in the time domain. The body acceleration in X was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [45] "TimeDomain_BodyAcceleration_StandardDeviation_in_Y"
Observations in this column are the standard deviation for each subject and each activity of the mean body acceleration in Y evaluated in the time domain. The body acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.


### [46] "TimeDomain_BodyAcceleration_StandardDeviation_in_Z"
Observations in this column are the standard deviation for each subject and each activity of the mean body acceleration in Z evaluated in the time domain. The body acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [47] "TimeDomain_GravityAcceleration_StandardDeviation_in_X"
Observations in this column are the standard deviation for each subject and each activity of the mean gravity acceleration in X evaluated in the time domain. The gravity acceleration in X was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [48] "TimeDomain_GravityAcceleration_StandardDeviation_in_Y"
Observations in this column are the standard deviation for each subject and each activity of the mean gravity acceleration in Y evaluated in the time domain. The gravity acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [49] "TimeDomain_GravityAcceleration_StandardDeviation_in_Z"
Observations in this column are the standard deviation for each subject and each activity of the mean gravity acceleration in Z evaluated in the time domain. The gravity acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [50] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_X"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the body acceleration in X. The Jerk was obtained by deriving the body acceleration in X in the time domain.

### [51] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_Y"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the body acceleration in Y. The Jerk was obtained by deriving the body acceleration in Y in the time domain.

### [52] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_Z"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the body acceleration in Z. The Jerk was obtained by deriving the body acceleration in Z in the time domain.

### [53] "TimeDomain_BodyGyrometer_StandardDeviation_in_X"
Observations in this column are the standard deviation for each subject and each activity of the mean body gyrometer signal in X evaluated in the time domain. The gyroscope signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [54] "TimeDomain_BodyGyrometer_StandardDeviation_in_Y"
Observations in this column are the standard deviation for each subject and each activity of the mean body gyrometer signal in Y evaluated in the time domain. The gyroscope signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [55] "TimeDomain_BodyGyrometer_StandardDeviation_in_Z"
Observations in this column are the standard deviation for each subject and each activity of the mean body gyrometer signal in Z evaluated in the time domain. The gyroscope signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [56] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_X"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the gyroscope in X. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [57] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_Y"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the gyroscope in Y. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [58] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_Z"
Observations in this column are the standard deviation for each subject and each activity of the mean Jerk signal of the gyroscope in Z. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [59] "TimeDomain_BodyAccelerationMagnitude_StandardDeviation"
Observations in this column are the standard deviation for each subject and each activity of the mean magnitude of the body acceleration in the time domain. The mean magnitude of body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [60] "TimeDomain_GravityAccelerationMagnitude_StandardDeviation"
Observations in this column are the standard deviation for each subject and each activity of the mean magnitude of the gravity acceleration in the time domain. The mean magnitude of gravity acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [61] "TimeDomain_BodyAccelerationJerkMagnitude_StandardDeviation"
Observations in this column are the standard deviation for each subject and each activity of the mean magnitude of the Jerk of the body acceleration in the time domain. The mean magnitude of the Jerk of the body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [62] "TimeDomain_BodyGyrometerMagnitude_StandardDeviation"
Observations in this column are the standard deviation for each subject and each activity of the mean magnitude of the body gyrometer in the time domain. The mean magnitude of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [63] "TimeDomain_BodyGyrometerJerkMagnitude_StandardDeviation"
Observations in this column are the standard deviation for each subject and each activity of the mean magnitude of the Jerk of the body gyrometer in the time domain. The mean magnitude of the Jerk of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [64] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_X"            
### [65] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_Y"            
### [66] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_Z"            
### [67] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_X"        
### [68] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_Y"        
### [69] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_Z"        
### [70] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_X"               
### [71] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_Y"               
### [72] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_Z"               
### [73] "FrequencyDomain_BodyAccelerationMagnitude_StandardDeviation"        
### [74] "FrequencyDomain_BodyBodyAccelerationJerkMagnitude_StandardDeviation"
### [75] "FrequencyDomain_BodyBodyGyrometerMagnitude_StandardDeviation"       
### [76] "FrequencyDomain_BodyBodyGyrometerJerkMagnitude_StandardDeviation"   