# Getting and Cleaning Data Course Project

The experiments were carried out with a group of 30 volunteers aged 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity measurements at a constant rate of 50Hz. The experiments were video recorded to label the data manually. The obtained dataset was originally randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. In this dataset is the result of merging the original training and test datasets.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See the table below for details on the recorded features.

Notes:  

* Features are normalized and bounded within [-1,1]  
* Each feature vector is a row in the dataset  
* Some of the column names used by the researchers use repeated word fragments whose meaning I did not completely understand. It would be best to verify the intended meaning before using the data.  
 * For example, "fBodyAcc-meanFreq()-X" appears to indicate "frequency" twice  
 * For example, "fBodyBodyAccJerkMag-mean()" clearly indicates "Body" twice  

 
##Code Book for Dataset: arranged\_mean\_std\_training\_test\_data


| Column | Description | Units |
|:-------|:------------|:------|
| SubjectIdentifier | Subjects were volunteers aged 19 to 48, and are identified by the integers 1 through 30 | NA | 
| Activity | Measurements were made while subjects performed the following activities: **WALKING**, **WALKING_UPSTAIRS**, **WALKING_DOWNSTAIRS**, **SITTING**, **STANDING**, **LAYING** | NA | 
| tBodyAcc-mean()-X               | Mean time body acceleration along the x-axis | g |
| tBodyAcc-mean()-Y               | Mean time body acceleration along the y-axis | g |
| tBodyAcc-mean()-Z               | Mean time body acceleration along the z-axis | g |    
| tBodyAcc-std()-X                | Standard deviation time body acceleration along the x-axis | g |
| tBodyAcc-std()-Y                | Standard deviation time body acceleration along the y-axis | g |
| tBodyAcc-std()-Z                | Standard deviation time body acceleration along the z-axis| g |
| tGravityAcc-mean()-X            | Mean time gravitational acceleration along the x-axis | g |
| tGravityAcc-mean()-Y            | Mean time gravitational acceleration along the y-axis | g |
| tGravityAcc-mean()-Z            | Mean time gravitational acceleration along the z-axis | g |
| tGravityAcc-std()-X             | Standard deviation time gravitational acceleration along the x-axis | g |
| tGravityAcc-std()-Y             | Standard deviation time gravitational acceleration along the y-axis | g |
| tGravityAcc-std()-Z             | Standard deviation time gravitational acceleration along the z-axis | g |
| tBodyAccJerk-mean()-X           | Mean time body jerk acceleration along the x-axis | g |
| tBodyAccJerk-mean()-Y           | Mean time body jerk acceleration along the y-axis | g |
| tBodyAccJerk-mean()-Z           | Mean time body jerk acceleration along the z-axis | g |
| tBodyAccJerk-std()-X            | Standard deviation time body jerk acceleration along the x-axis | g |
| tBodyAccJerk-std()-Y            | Standard deviation time body jerk acceleration along the y-axis | g |
| tBodyAccJerk-std()-Z            | Standard deviation time body jerk acceleration along the z-axis | g |
| tBodyGyro-mean()-X              | Mean time triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyro-mean()-Y              | Mean time triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyro-mean()-Z              | Mean time triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyro-std()-X               | Standard deviation time triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyro-std()-Y               | Standard deviation time triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyro-std()-Z               | Standard deviation time triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyroJerk-mean()-X          | Mean time body jerk triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyroJerk-mean()-Y          | Mean time body jerk triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyroJerk-mean()-Z          | Mean time body jerk triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyroJerk-std()-X           | Standard deviation time body jerk triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyroJerk-std()-Y           | Standard deviation time body jerk triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyroJerk-std()-Z           | Standard deviation time body jerk triaxial angular velocity along the z-axis | rad/seg |
| tBodyAccMag-mean()              | Mean time body mag acceleration | g |
| tBodyAccMag-std()               | Standard deviation time body mag acceleration | g |
| tGravityAccMag-mean()           | Mean time gravitational mag acceleration | g |
| tGravityAccMag-std()            | Standard deviation time gravitational mag acceleration | g |
| tBodyAccJerkMag-mean()          | Mean time body jerk mag acceleration | g |
| tBodyAccJerkMag-std()           | Standard deviation time body jerk mag acceleration | g |
| tBodyGyroMag-mean()             | Mean time triaxial angular mag velocity | rad/seg |
| tBodyGyroMag-std()              | Standard deviation time triaxial angular mag velocity | rad/seg |
| tBodyGyroJerkMag-mean()         | Mean time body jerk triaxial angular mag velocity | rad/seg |
| tBodyGyroJerkMag-std()          | Standard deviation time body jerk triaxial angular mag velocity | rad/seg |
| fBodyAcc-mean()-X               | Mean frequency body acceleration along the x-axis | g |
| fBodyAcc-mean()-Y               | Mean frequency body acceleration along the y-axis | g |
| fBodyAcc-mean()-Z               | Mean frequency body acceleration along the z-axis | g |
| fBodyAcc-std()-X                | Standard deviation frequency body acceleration along the x-axis | g |
| fBodyAcc-std()-Y                | Standard deviation frequency body acceleration along the y-axis | g |
| fBodyAcc-std()-Z                | Standard deviation frequency body acceleration along the z-axis | g |
| fBodyAcc-meanFreq()-X           | Mean frequency frequency body acceleration along the x-axis | g |
| fBodyAcc-meanFreq()-Y           | Mean frequency frequency body acceleration along the y-axis | g |
| fBodyAcc-meanFreq()-Z           | Mean frequency frequency body acceleration along the z-axis | g |
| fBodyAccJerk-mean()-X           | Mean frequency body jerk acceleration along the x-axis | g |
| fBodyAccJerk-mean()-Y           | Mean frequency body jerk acceleration along the y-axis | g |
| fBodyAccJerk-mean()-Z           | Mean frequency body jerk acceleration along the z-axis | g |
| fBodyAccJerk-std()-X            | Standard deviation frequency body jerk along the x-axis | g |
| fBodyAccJerk-std()-Y            | Standard deviation frequency body jerk along the y-axis | g |
| fBodyAccJerk-std()-Z            | Standard deviation frequency body jerk along the z-axis | g |
| fBodyAccJerk-meanFreq()-X       | Mean frequency frequency body jerk acceleration along the x-axis | g |
| fBodyAccJerk-meanFreq()-Y       | Mean frequency frequency body jerk acceleration along the y-axis | g |
| fBodyAccJerk-meanFreq()-Z       | Mean frequency frequency body jerk acceleration along the z-axis | g |
| fBodyGyro-mean()-X              | Mean frequency body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-mean()-Y              | Mean frequency body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-mean()-Z              | Mean frequency body triaxial angular velocity along the z-axis | rad/seg |
| fBodyGyro-std()-X               | Standard deviation body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-std()-Y               | Standard deviation body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-std()-Z               | Standard deviation body triaxial angular velocity along the z-axis | rad/seg |
| fBodyGyro-meanFreq()-X          | Mean frequency frequency body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-meanFreq()-Y          | Mean frequency frequency body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-meanFreq()-Z          | Mean frequency frequency body triaxial angular velocity along the z-axis | rad/seg |
| fBodyAccMag-mean()              | Mean frequency body mag acceleration | g |
| fBodyAccMag-std()               | Standard deviation body mag acceleration | g |
| fBodyAccMag-meanFreq()          | Mean frequency frequency body mag acceleration | g |
| fBodyBodyAccJerkMag-mean()      | Mean frequency body body mag jerk acceleration | g |
| fBodyBodyAccJerkMag-std()       | Standard deviation frequency body body mag jerk acceleration | g |
| fBodyBodyAccJerkMag-meanFreq()  | Mean frequency frequency body body mag jerk acceleration | g |
| fBodyBodyGyroMag-mean()         | Mean frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroMag-std()          | Standard deviation frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroMag-meanFreq()     | Mean frequency frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-mean()     | Mean frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-std()      | Standard deviation frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-meanFreq() | Mean frequency frequency body body triaxial angular velocity | rad/seg |

##Code Book for Dataset: grouped\_and\_summarized\_data
This dataset has the same columns as the arranged\_mean\_std\_training\_test\_data dataset. However the dataset consists of means of the measurements recorded in arranged\_mean\_std\_training\_test\_data: Each row represents the mean of each observation of the given activity for the given subject.

| Column | Description | Units |
|:-------|:------------|:------|
| SubjectIdentifier | Subjects were volunteers aged 19 to 48, and are identified by the integers 1 through 30 | NA | 
| Activity | Measurements were made while subjects performed the following activities: **WALKING**, **WALKING_UPSTAIRS**, **WALKING_DOWNSTAIRS**, **SITTING**, **STANDING**, **LAYING** | NA | 
| tBodyAcc-mean()-X               | Mean time body acceleration along the x-axis | g |
| tBodyAcc-mean()-Y               | Mean time body acceleration along the y-axis | g |
| tBodyAcc-mean()-Z               | Mean time body acceleration along the z-axis | g |    
| tBodyAcc-std()-X                | Standard deviation time body acceleration along the x-axis | g |
| tBodyAcc-std()-Y                | Standard deviation time body acceleration along the y-axis | g |
| tBodyAcc-std()-Z                | Standard deviation time body acceleration along the z-axis| g |
| tGravityAcc-mean()-X            | Mean time gravitational acceleration along the x-axis | g |
| tGravityAcc-mean()-Y            | Mean time gravitational acceleration along the y-axis | g |
| tGravityAcc-mean()-Z            | Mean time gravitational acceleration along the z-axis | g |
| tGravityAcc-std()-X             | Standard deviation time gravitational acceleration along the x-axis | g |
| tGravityAcc-std()-Y             | Standard deviation time gravitational acceleration along the y-axis | g |
| tGravityAcc-std()-Z             | Standard deviation time gravitational acceleration along the z-axis | g |
| tBodyAccJerk-mean()-X           | Mean time body jerk acceleration along the x-axis | g |
| tBodyAccJerk-mean()-Y           | Mean time body jerk acceleration along the y-axis | g |
| tBodyAccJerk-mean()-Z           | Mean time body jerk acceleration along the z-axis | g |
| tBodyAccJerk-std()-X            | Standard deviation time body jerk acceleration along the x-axis | g |
| tBodyAccJerk-std()-Y            | Standard deviation time body jerk acceleration along the y-axis | g |
| tBodyAccJerk-std()-Z            | Standard deviation time body jerk acceleration along the z-axis | g |
| tBodyGyro-mean()-X              | Mean time triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyro-mean()-Y              | Mean time triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyro-mean()-Z              | Mean time triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyro-std()-X               | Standard deviation time triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyro-std()-Y               | Standard deviation time triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyro-std()-Z               | Standard deviation time triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyroJerk-mean()-X          | Mean time body jerk triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyroJerk-mean()-Y          | Mean time body jerk triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyroJerk-mean()-Z          | Mean time body jerk triaxial angular velocity along the z-axis | rad/seg |
| tBodyGyroJerk-std()-X           | Standard deviation time body jerk triaxial angular velocity along the x-axis | rad/seg |
| tBodyGyroJerk-std()-Y           | Standard deviation time body jerk triaxial angular velocity along the y-axis | rad/seg |
| tBodyGyroJerk-std()-Z           | Standard deviation time body jerk triaxial angular velocity along the z-axis | rad/seg |
| tBodyAccMag-mean()              | Mean time body mag acceleration | g |
| tBodyAccMag-std()               | Standard deviation time body mag acceleration | g |
| tGravityAccMag-mean()           | Mean time gravitational mag acceleration | g |
| tGravityAccMag-std()            | Standard deviation time gravitational mag acceleration | g |
| tBodyAccJerkMag-mean()          | Mean time body jerk mag acceleration | g |
| tBodyAccJerkMag-std()           | Standard deviation time body jerk mag acceleration | g |
| tBodyGyroMag-mean()             | Mean time triaxial angular mag velocity | rad/seg |
| tBodyGyroMag-std()              | Standard deviation time triaxial angular mag velocity | rad/seg |
| tBodyGyroJerkMag-mean()         | Mean time body jerk triaxial angular mag velocity | rad/seg |
| tBodyGyroJerkMag-std()          | Standard deviation time body jerk triaxial angular mag velocity | rad/seg |
| fBodyAcc-mean()-X               | Mean frequency body acceleration along the x-axis | g |
| fBodyAcc-mean()-Y               | Mean frequency body acceleration along the y-axis | g |
| fBodyAcc-mean()-Z               | Mean frequency body acceleration along the z-axis | g |
| fBodyAcc-std()-X                | Standard deviation frequency body acceleration along the x-axis | g |
| fBodyAcc-std()-Y                | Standard deviation frequency body acceleration along the y-axis | g |
| fBodyAcc-std()-Z                | Standard deviation frequency body acceleration along the z-axis | g |
| fBodyAcc-meanFreq()-X           | Mean frequency frequency body acceleration along the x-axis | g |
| fBodyAcc-meanFreq()-Y           | Mean frequency frequency body acceleration along the y-axis | g |
| fBodyAcc-meanFreq()-Z           | Mean frequency frequency body acceleration along the z-axis | g |
| fBodyAccJerk-mean()-X           | Mean frequency body jerk acceleration along the x-axis | g |
| fBodyAccJerk-mean()-Y           | Mean frequency body jerk acceleration along the y-axis | g |
| fBodyAccJerk-mean()-Z           | Mean frequency body jerk acceleration along the z-axis | g |
| fBodyAccJerk-std()-X            | Standard deviation frequency body jerk along the x-axis | g |
| fBodyAccJerk-std()-Y            | Standard deviation frequency body jerk along the y-axis | g |
| fBodyAccJerk-std()-Z            | Standard deviation frequency body jerk along the z-axis | g |
| fBodyAccJerk-meanFreq()-X       | Mean frequency frequency body jerk acceleration along the x-axis | g |
| fBodyAccJerk-meanFreq()-Y       | Mean frequency frequency body jerk acceleration along the y-axis | g |
| fBodyAccJerk-meanFreq()-Z       | Mean frequency frequency body jerk acceleration along the z-axis | g |
| fBodyGyro-mean()-X              | Mean frequency body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-mean()-Y              | Mean frequency body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-mean()-Z              | Mean frequency body triaxial angular velocity along the z-axis | rad/seg |
| fBodyGyro-std()-X               | Standard deviation body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-std()-Y               | Standard deviation body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-std()-Z               | Standard deviation body triaxial angular velocity along the z-axis | rad/seg |
| fBodyGyro-meanFreq()-X          | Mean frequency frequency body triaxial angular velocity along the x-axis | rad/seg |
| fBodyGyro-meanFreq()-Y          | Mean frequency frequency body triaxial angular velocity along the y-axis | rad/seg |
| fBodyGyro-meanFreq()-Z          | Mean frequency frequency body triaxial angular velocity along the z-axis | rad/seg |
| fBodyAccMag-mean()              | Mean frequency body mag acceleration | g |
| fBodyAccMag-std()               | Standard deviation body mag acceleration | g |
| fBodyAccMag-meanFreq()          | Mean frequency frequency body mag acceleration | g |
| fBodyBodyAccJerkMag-mean()      | Mean frequency body body mag jerk acceleration | g |
| fBodyBodyAccJerkMag-std()       | Standard deviation frequency body body mag jerk acceleration | g |
| fBodyBodyAccJerkMag-meanFreq()  | Mean frequency frequency body body mag jerk acceleration | g |
| fBodyBodyGyroMag-mean()         | Mean frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroMag-std()          | Standard deviation frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroMag-meanFreq()     | Mean frequency frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-mean()     | Mean frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-std()      | Standard deviation frequency body body triaxial angular velocity | rad/seg |
| fBodyBodyGyroJerkMag-meanFreq() | Mean frequency frequency body body triaxial angular velocity | rad/seg |

##Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Luca Oneto(1) and Xavier Parra(2)   
1 - Smartlab, DIBRIS - UniversitÃ  degli Studi di Genova, Genoa (16145), Italy.   
2 - CETpD - Universitat PolitÃ¨cnica de Catalunya. Vilanova i la GeltrÃº (08800), Spain   
har '@' smartlab.ws  
www.smartlab.ws  
