# Getting and Cleaning Data Course Project

This repository contains the following files:

| File Name | Description |
|:----------|:------------|
| README.md | This file |
| CodeBook.md | A description of the two datasets generated from the UCI HAR Dataset as part of this project |
| run_analysis.R | The R script used to process (load, annotate, merge, group and summarize) the data from ["Smartphone-Based Recognition of Human Activities and Postural Transitions Data Set"] (http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions) |

### Explaination of run_analysis.R
To use this script the original dataset must be downloaded from [HAPT\_Data\_Set.zip] (http://archive.ics.uci.edu/ml/machine-learning-databases/00341/HAPT%20Data%20Set.zip) under "Data Folder" at the site listed above. Unzip the file, and place run_analysis.R in the R working directory along with the unzipped directory "UCI HAR Dataset".

This is the directory structure you should have after unzipping:  

```
./UCI HAR Dataset  
./UCI HAR Dataset/activity_labels.txt  
./UCI HAR Dataset/features.txt  
./UCI HAR Dataset/features_info.txt  
./UCI HAR Dataset/README.txt
./UCI HAR Dataset/test
./UCI HAR Dataset/test/Inertial Signals
./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
./UCI HAR Dataset/test/subject_test.txt
./UCI HAR Dataset/test/X_test.txt
./UCI HAR Dataset/test/y_test.txt
./UCI HAR Dataset/train
./UCI HAR Dataset/train/Inertial Signals
./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
./UCI HAR Dataset/train/subject_train.txt
./UCI HAR Dataset/train/X_train.txt
./UCI HAR Dataset/train/y_train.txt
```

The script loads the following files into data tables:  

* features.txt  
* activity_labels.txt  
* X_train.txt  
* subject_train.txt
* y_train.txt
* X_test.txt
* y_test.txt
* subject_test.txt

The dataset arranged\_mean\_std\_training\_test\_data is created by:  
1. Annotating the data from X\_train.txt and X\_test.txt using features.txt  
2. Adding subject identifiers to each observation using identifiers from subject_train.txt and subject_test.txt  
3. Applying an 'activity' factor (created from activity_labels.txt)  
4. Selecting only columns of mean and standard deviation values  

The dataset grouped\_and\_summarized\_data is created by starting with arranged\_mean\_std\_training\_test\_data and doing the following:

1. Grouping by subject and activity  
2. Summarizing each subject/activity group with the mean of each column (except for the subject and activity columns). Since there were 30 subjects, all of whom performed 6 activities, the resulting dataset has 180 rows.  

##Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Luca Oneto(1) and Xavier Parra(2)   
1 - Smartlab, DIBRIS - UniversitÃ  degli Studi di Genova, Genoa (16145), Italy.   
2 - CETpD - Universitat PolitÃ¨cnica de Catalunya. Vilanova i la GeltrÃº (08800), Spain   
har '@' smartlab.ws 
www.smartlab.ws

