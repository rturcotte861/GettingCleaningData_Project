# Code Book 

for GettingCleaningData_Project

The file describes the meaning of each column in the tidy data set: "TidyData_Step5.txt".

## The structure is as follow:
### [column position] Variable name

## Summary
The data set "TidyData_Step5.txt" is derived from an experimental dataset in which the sensor signals from an accelerometer and gyroscope from a smartphone (Samsung Galaxy S II) was recorded while participant were performing specific activities. More information on the original dataset can be found here: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". This modified data contains the average of the mean and the average of the standard deviation of several parameters (described below) for each subject and each activity. For a detailed description of how the orignal data was modified, please refer to the README.md file.

## Variable description

### [1] "Set"
The original dataset was randomly partitioned into two sets: where 70% of the volunteers was selected for generating the training data and 30% the test data. This column identifies the set in which a subjects are: "test" or "train".

### [2] "Subject"
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. This column identifies individual subjects: 1-30.

### [3] "Activity_label"
Each subject performed six activities: wearing a smartphone (Samsung Galaxy S II) on the waist: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. This column identifies the activity.

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
Observations in this column are the average for each subject and each activity of the mean body acceleration in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [25] "FrequencyDomain_BodyAcceleration_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean body acceleration in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [26] "FrequencyDomain_BodyAcceleration_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean body acceleration in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [27] "FrequencyDomain_BodyAccelerationJerk_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean Jerk of the body acceleration in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [28] "FrequencyDomain_BodyAccelerationJerk_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean Jerk of the body acceleration in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [29] "FrequencyDomain_BodyAccelerationJerk_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean Jerk of the body acceleration in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [30] "FrequencyDomain_BodyGyrometer_Mean_in_X"
Observations in this column are the average for each subject and each activity of the mean body gyroscope signal in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [31] "FrequencyDomain_BodyGyrometer_Mean_in_Y"
Observations in this column are the average for each subject and each activity of the mean body gyroscope signal in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [32] "FrequencyDomain_BodyGyrometer_Mean_in_Z"
Observations in this column are the average for each subject and each activity of the mean body gyroscope signal in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [33] "FrequencyDomain_BodyAccelerationMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the body acceleration evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [34] "FrequencyDomain_BodyAccelerationJerkMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the Jerk of the body acceleration evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.
 
### [35] "FrequencyDomain_BodyGyrometerMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the body gyrometer evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [36] "FrequencyDomain_BodyGyrometerJerkMagnitude_Mean"
Observations in this column are the average for each subject and each activity of the mean magnitude of the Jerk of the body gyrometer evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [37] "TimeDomain_BodyAcceleration_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in X evaluated in the time domain. The body acceleration in X was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [38] "TimeDomain_BodyAcceleration_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in Y evaluated in the time domain. The body acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.


### [39] "TimeDomain_BodyAcceleration_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in Z evaluated in the time domain. The body acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [40] "TimeDomain_GravityAcceleration_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of gravity acceleration in X evaluated in the time domain. The gravity acceleration in X was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [41] "TimeDomain_GravityAcceleration_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of gravity acceleration in Y evaluated in the time domain. The gravity acceleration in Y was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [42] "TimeDomain_GravityAcceleration_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of gravity acceleration in Z evaluated in the time domain. The gravity acceleration in Z was obtained by separating the acceleration signal into body and gravity acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. The acceleration signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [43] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the body acceleration in X. The Jerk was obtained by deriving the body acceleration in X in the time domain.

### [44] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the body acceleration in Y. The Jerk was obtained by deriving the body acceleration in Y in the time domain.

### [45] "TimeDomain_BodyAccelerationJerk_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the body acceleration in Z. The Jerk was obtained by deriving the body acceleration in Z in the time domain.

### [46] "TimeDomain_BodyGyrometer_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyrometer signal in X evaluated in the time domain. The gyroscope signal in X was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [47] "TimeDomain_BodyGyrometer_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyrometer signal in Y evaluated in the time domain. The gyroscope signal in Y was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [48] "TimeDomain_BodyGyrometer_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyrometer signal in Z evaluated in the time domain. The gyroscope signal in Z was captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### [49] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the gyroscope in X. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [50] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the gyroscope in Y. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [51] "TimeDomain_BodyGyrometerJerk_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk signal of the gyroscope in Z. The Jerk was obtained by deriving the gyroscope signal in the time domain.

### [52] "TimeDomain_BodyAccelerationMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the body acceleration in the time domain. The standard deviation of magnitude of body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [53] "TimeDomain_GravityAccelerationMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the gravity acceleration in the time domain. The standard deviation of magnitude of gravity acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [54] "TimeDomain_BodyAccelerationJerkMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the Jerk of the body acceleration in the time domain. The standard deviation of magnitude of the Jerk of the body acceleration was calculated using the three-dimensional signals with the Euclidean norm.

### [55] "TimeDomain_BodyGyrometerMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the body gyrometer in the time domain. The standard deviation of magnitude of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [56] "TimeDomain_BodyGyrometerJerkMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the Jerk of the body gyrometer in the time domain. The standard deviation of magnitude of the Jerk of body gyrometer was calculated using the three-dimensional signals with the Euclidean norm.

### [57] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [58] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [59] "FrequencyDomain_BodyAcceleration_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of body acceleration in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [60] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk of the body acceleration in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [61] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk of the body acceleration in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [62] "FrequencyDomain_BodyAccelerationJerk_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of Jerk of the body acceleration in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [63] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_X"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyroscope signal in X evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [64] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_Y"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyroscope signal in Y evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [65] "FrequencyDomain_BodyGyrometer_StandardDeviation_in_Z"
Observations in this column are the average for each subject and each activity of the standard deviation of body gyroscope signal in Z evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [66] "FrequencyDomain_BodyAccelerationMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the body acceleration evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [67] "FrequencyDomain_BodyAccelerationJerkMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the Jerk of the body acceleration evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.
 
### [68] "FrequencyDomain_BodyGyrometerMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the body gyrometer evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.

### [69] "FrequencyDomain_BodyGyrometerJerkMagnitude_StandardDeviation"
Observations in this column are the average for each subject and each activity of the standard deviation of magnitude of the Jerk of the body gyrometer evaluated in the frequency domain after performing a fast-Fourier transform on the filtered signals.
