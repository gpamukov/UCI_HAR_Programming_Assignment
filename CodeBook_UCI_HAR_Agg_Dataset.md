
# UCI_HAR_Agg_Dataset.txt codebook

## Data Collection Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


## Variables selection
Feature Selection 
=================

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

AverageOftBodyAcc-XYZ
AverageOftGravityAcc-XYZ
AverageOftBodyAccJerk-XYZ
AverageOftBodyGyro-XYZ
AverageOftBodyGyroJerk-XYZ
AverageOftBodyAccMag
AverageOftGravityAccMag
AverageOftBodyAccJerkMag
AverageOftBodyGyroMag
AverageOftBodyGyroJerkMag
AverageOffBodyAcc-XYZ
AverageOffBodyAccJerk-XYZ
AverageOffBodyGyro-XYZ
AverageOffBodyAccMag
AverageOffBodyAccJerkMag
AverageOffBodyGyroMag
AverageOffBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional aggregation logic was applied on the set described above:
1. Group by (aggregate on) Subject and Activity (walking, laying, sitting etc):
2. Average (mean) values were calculated for each Subject/Activity and output in the final aggregated set (UCI_HAR_Agg_Dataset.txt)

## Codebook for UCI_HAR_Agg_Dataset.txt

 * Variable name: subjectid Position in file: 1 Description: Id of the subject (participating in the tests). Integer - range 1-30
 * Variable name: activitylabel Position in file: 2 Description: Label of the activity observed (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)
 * Variable name: averageoftbodyaccmeanx Position in file: 3 Description: Average of means of time domain signal of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccmeany Position in file: 4 Description: Average of means of time domain signal of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccmeanz Position in file: 5 Description: Average of means of time domain signal of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccstdx Position in file: 6 Description: Average of means of time domain signal of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccstdy Position in file: 7 Description: Average of means of time domain signal of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccstdz Position in file: 8 Description: Average of means of time domain signal of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccmeanx Position in file: 9 Description: Average of standard deviations of time domain signal of gravity acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccmeany Position in file: 10 Description: Average of standard deviations of time domain signal of gravity acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccmeanz Position in file: 11 Description: Average of standard deviations of time domain signal of gravity acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccstdx Position in file: 12 Description: Average of means of time domain signal of gravity senzor angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccstdy Position in file: 13 Description: Average of means of time domain signal gravity senzor angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccstdz Position in file: 14 Description: Average of means of time domain signalgravity senzor angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkmeanx Position in file: 15 Description: Average of means of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkmeany Position in file: 16 Description: Average of means of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkmeanz Position in file: 17 Description: Average of means of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkstdx Position in file: 18 Description: Average of standard deviations of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkstdy Position in file: 19 Description: Average of standard deviations of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkstdz Position in file: 20 Description: Average of standard deviations of time domain signal of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyromeanx Position in file: 21 Description: Average of means of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyromeany Position in file: 22 Description: Average of means of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyromeanz Position in file: 23 Description: Average of means of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrostdx Position in file: 24 Description: Average of standard deviations of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrostdy Position in file: 25 Description: Average of standard deviations of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrostdz Position in file: 26 Description: Average of standard deviations of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkmeanx Position in file: 27 Description: Average of means of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkmeany Position in file: 28 Description: Average of means of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkmeanz Position in file: 29 Description: Average of means of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkstdx Position in file: 30 Description: Average of standard deviations of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkstdy Position in file: 31 Description: Average of standard deviations of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkstdz Position in file: 32 Description: Average of standard deviations of time domain signal of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccmagmean Position in file: 33 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccmagstd Position in file: 34 Description: Average of standard deviation of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of body angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccmagmean Position in file: 35 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of gravity velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftgravityaccmagstd Position in file: 36 Description: Average of standard deviation of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of gravity angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkmagmean Position in file: 37 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean norm of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodyaccjerkmagstd Position in file: 38 Description: Average of standard deviations of magnitude of these three-dimensional signals were calculated using the Euclidean norm of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyromagmean Position in file: 39 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of gyro sensor derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyromagstd Position in file: 40 Description: Average of standard deviation of magnitude of these three-dimensional signals were calculated using the Euclidean normof of frequency domain signals of gyro sensor angular velocity derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkmagmean Position in file: 41 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoftbodygyrojerkmagstd Position in file: 42 Description: Average of standard deviations of magnitude of these three-dimensional signals were calculated using the Euclidean norm of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccmeanx Position in file: 43 Description: Average of means of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccmeany Position in file: 44 Description: Average of means of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccmeanz Position in file: 45 Description: Average of means of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccstdx Position in file: 46 Description: Average of standard deviations of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccstdy Position in file: 47 Description: Average of standard deviations of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccstdz Position in file: 48 Description: Average of standard deviations of frequency domain signals of body linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkmeanx Position in file: 49 Description: Average of means of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkmeany Position in file: 50 Description: Average of means of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkmeanz Position in file: 51 Description: Average of means of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkstdx Position in file: 52 Description: Average of standard deviations of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkstdy Position in file: 53 Description: Average of standard deviations of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccjerkstdz Position in file: 54 Description: Average of standard deviations of time domain signal  of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyromeanx Position in file: 55 Description: Average of means of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyromeany Position in file: 56 Description: Average of means of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyromeanz Position in file: 57 Description: Average of means of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyrostdx Position in file: 58 Description: Average of standard deviations of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyrostdy Position in file: 59 Description: Average of standard deviations of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodygyrostdz Position in file: 60 Description: Average of standard deviations of frequency domain signals of gyro sensor linear acceleration derived in time broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccmagmean Position in file: 61 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean norm of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodyaccmagstd Position in file: 62 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean norm of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodyaccjerkmagmean Position in file: 63 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean norm of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodyaccjerkmagstd Position in file: 64 Description: Average of standard deviations of magnitude of these three-dimensional signals were calculated using the Euclidean norm of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodygyromagmean Position in file: 65 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodygyromagstd Position in file: 66 Description: Average of standard deviations of magnitude of these three-dimensional signals were calculated using the Euclidean norm of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodygyrojerkmagmean Position in file: 67 Description: Average of means of magnitude of these three-dimensional signals were calculated using the Euclidean normof of Fast Fourier Transform of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
 * Variable name: averageoffbodybodygyrojerkmagstd Position in file: 68 Description: Average of standard deviations of magnitude of these three-dimensional signals were calculated using the Euclidean norm of Fast Fourier Transform of body angular velocity derived in time to obtain Jerk signals broken down by subjectid and activitylabel.
