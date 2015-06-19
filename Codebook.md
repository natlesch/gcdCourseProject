---
title: "SmartphoneSensorAnalysis_Codebook"
output: html_document
---

##Analysis on Smartphone Sensor Data

-raw data can be obtained from:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

*Course project for Coursera - John Hopkins University - Data Science Track - Getting and Cleaning Data*

This project goal is to combine separate text datasets obtained from smartphone sensor readings taken during various physical activities by subjects, combine datasets, and result a dataset showning measurement averages per subject per activity. This project was completed using the R environment.

**The data transformation process was comprised of the following tasks:**

* load text datasets from the test and training sequence into R environment
* combining the separate datasets into a single comprehensive dataset for each sequence
* combining the separate comprehensive sequence datasets into a master study dataset
* filter out measurements(variables) that don't contain mean or standard deviation data
* apply meaningful column names from the study documentation (included in data download)
* group by activity by subject and provide an average for each measurement


**Variables for the result dataset: **
*(all measurement data with exception of subjectID and activityLabel are measurement mean)*

* SubjectID

* ActivityLabel

* tBodyAcc-mean()-X_AVG

* tBodyAcc-mean()-Y_AVG

* tBodyAcc-mean()-Z_AVG

* tBodyAcc-std()-X_AVG

* tBodyAcc-std()-Y_AVG

* tBodyAcc-std()-Z_AVG

* tGravityAcc-mean()-X_AVG

* tGravityAcc-mean()-Y_AVG

* tGravityAcc-mean()-Z_AVG

* tGravityAcc-std()-X_AVG

* tGravityAcc-std()-Y_AVG

* tGravityAcc-std()-Z_AVG

* tBodyAccJerk-mean()-X_AVG

* tBodyAccJerk-mean()-Y_AVG

* tBodyAccJerk-mean()-Z_AVG

* tBodyAccJerk-std()-X_AVG

* tBodyAccJerk-std()-Y_AVG

* tBodyAccJerk-std()-Z_AVG

* tBodyGyro-mean()-X_AVG

* tBodyGyro-mean()-Y_AVG

* tBodyGyro-mean()-Z_AVG

* tBodyGyro-std()-X_AVG

* tBodyGyro-std()-Y_AVG

* tBodyGyro-std()-Z_AVG

* tBodyGyroJerk-mean()-X_AVG

* tBodyGyroJerk-mean()-Y_AVG

* tBodyGyroJerk-mean()-Z_AVG

* tBodyGyroJerk-std()-X_AVG

* tBodyGyroJerk-std()-Y_AVG

* tBodyGyroJerk-std()-Z_AVG

* tBodyAccMag-mean()_AVG

* tBodyAccMag-std()_AVG

* tGravityAccMag-mean()_AVG

* tGravityAccMag-std()_AVG

* tBodyAccJerkMag-mean()_AVG

* tBodyAccJerkMag-std()_AVG

* tBodyGyroMag-mean()_AVG

* tBodyGyroMag-std()_AVG

* tBodyGyroJerkMag-mean()_AVG

* tBodyGyroJerkMag-std()_AVG

* fBodyAcc-mean()-X_AVG

* fBodyAcc-mean()-Y_AVG

* fBodyAcc-mean()-Z_AVG

* fBodyAcc-std()-X_AVG

* fBodyAcc-std()-Y_AVG

* fBodyAcc-std()-Z_AVG

* fBodyAcc-meanFreq()-X_AVG

* fBodyAcc-meanFreq()-Y_AVG

* fBodyAcc-meanFreq()-Z_AVG

* fBodyAccJerk-mean()-X_AVG

* fBodyAccJerk-mean()-Y_AVG

* fBodyAccJerk-mean()-Z_AVG

* fBodyAccJerk-std()-X_AVG

* fBodyAccJerk-std()-Y_AVG

* fBodyAccJerk-std()-Z_AVG

* fBodyAccJerk-meanFreq()-X_AVG

* fBodyAccJerk-meanFreq()-Y_AVG

* fBodyAccJerk-meanFreq()-Z_AVG

* fBodyGyro-mean()-X_AVG

* fBodyGyro-mean()-Y_AVG

* fBodyGyro-mean()-Z_AVG

* fBodyGyro-std()-X_AVG

* fBodyGyro-std()-Y_AVG

* fBodyGyro-std()-Z_AVG

* fBodyGyro-meanFreq()-X_AVG

* fBodyGyro-meanFreq()-Y_AVG

* fBodyGyro-meanFreq()-Z_AVG

* fBodyAccMag-mean()_AVG

* fBodyAccMag-std()_AVG

* fBodyAccMag-meanFreq()_AVG

* fBodyBodyAccJerkMag-mean()_AVG

* fBodyBodyAccJerkMag-std()_AVG

* fBodyBodyAccJerkMag-meanFreq()_AVG

* fBodyBodyGyroMag-mean()_AVG

* fBodyBodyGyroMag-std()_AVG

* fBodyBodyGyroMag-meanFreq()_AVG

* fBodyBodyGyroJerkMag-mean()_AVG

* fBodyBodyGyroJerkMag-std()_AVG

* fBodyBodyGyroJerkMag-meanFreq()_AVG

* angle(tBodyAccMean,gravity)_AVG

* angle(tBodyAccJerkMean),gravityMean)_AVG

* angle(tBodyGyroMean,gravityMean)_AVG

* angle(tBodyGyroJerkMean,gravityMean)_AVG

* angle(X,gravityMean)_AVG

* angle(Y,gravityMean)_AVG

* angle(Z,gravityMean)_AVG