#Code Book
This describes the data set named "tidyData.txt" produced by the script "run_analysis.R".

The data set consists of 180 rows and 81 columns containing summary data derived from the 
Human Activity Recognition Using Smartphones Dataset (Version 1.0), from here on referred to
as "UCI HAR Dataset". The data set can be found 
[here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
and described
[here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The first column is named "subject" and is an integer identifying the subject of the experiment.
The second column contains a factor describing the activity the subject was undertaking. This can
take the values "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS" or "WALKING_UPSTAIRS".
The remaining 79 columns contain summary data of various measurements taken from the UCI HAR Dataset.

Each of the columns from three to 81 were created by summarising a measure from the UCI HAR Dataset.
The measure was averaged over every entry relating to the subject and activity. For example, 
the variable tBodyAcc-mean()-X was averaged across each subject and activity and these averages
were stored in the column bodyaccelerationmeanx.

The following table summarises the relationship between the columns of the tidyData.txt data set and
the original variables:

| Column name | Original variable |
----------------- | -------------------
| bodyaccelerationmeanx | tBodyAcc-mean()-X |  
| bodyaccelerationmeany | tBodyAcc-mean()-Y |  
| bodyaccelerationmeanz | tBodyAcc-mean()-Z |  
| bodyaccelerationstandarddeviationx | tBodyAcc-std()-X |  
| bodyaccelerationstandarddeviationy | tBodyAcc-std()-Y |  
| bodyaccelerationstandarddeviationz | tBodyAcc-std()-Z |  
| gravityaccelerationmeanx | tGravityAcc-mean()-X |  
| gravityaccelerationmeany | tGravityAcc-mean()-Y |
| gravityaccelerationmeanz | tGravityAcc-mean()-Z |
| gravityaccelerationstandarddeviationx | tGravityAcc-std()-X |
| gravityaccelerationstandarddeviationy | tGravityAcc-std()-Y |
| gravityaccelerationstandarddeviationz | tGravityAcc-std()-Z |
| bodyaccelerationjerkmeanx | tBodyAccJerk-mean()-X |
| bodyaccelerationjerkmeany | tBodyAccJerk-mean()-Y |
| bodyaccelerationjerkmeanz | tBodyAccJerk-mean()-Z |
| bodyaccelerationjerkstandarddeviationx | tBodyAccJerk-std()-X |
| bodyaccelerationjerkstandarddeviationy | tBodyAccJerk-std()-Y |
| bodyaccelerationjerkstandarddeviationz | tBodyAccJerk-std()-Z |
| bodygyromeanx | tBodyGyro-mean()-X |
| bodygyromeany | tBodyGyro-mean()-Y |
| bodygyromeanz | tBodyGyro-mean()-Z |
| bodygyrostandarddeviationx | tBodyGyro-std()-X |
| bodygyrostandarddeviationy | tBodyGyro-std()-Y |
| bodygyrostandarddeviationz | tBodyGyro-std()-Z |
| bodygyrojerkmeanx | tBodyGyroJerk-mean()-X |
| bodygyrojerkmeany | tBodyGyroJerk-mean()-Y |
| bodygyrojerkmeanz | tBodyGyroJerk-mean()-Z |
| bodygyrojerkstandarddeviationx | tBodyGyroJerk-std()-X |
| bodygyrojerkstandarddeviationy | tBodyGyroJerk-std()-Y |
| bodygyrojerkstandarddeviationz | tBodyGyroJerk-std()-Z |
| bodyaccelerationmagnitudemean | tBodyAccMag-mean() |
| bodyaccelerationmagnitudestandarddeviation | tBodyAccMag-std() |
| gravityaccelerationmagnitudemean | tGravityAccMag-mean() |
| gravityaccelerationmagnitudestandarddeviation | tGravityAccMag-std() |
| bodyaccelerationjerkmagnitudemean | tBodyAccJerkMag-mean() |
| bodyaccelerationjerkmagnitudestandarddeviation | tBodyAccJerkMag-std() |
| bodygyromagnitudemean | tBodyGyroMag-mean() |
| bodygyromagnitudestandarddeviation | tBodyGyroMag-std() |
| bodygyrojerkmagnitudemean | tBodyGyroJerkMag-mean() |
| bodygyrojerkmagnitudestandarddeviation | tBodyGyroJerkMag-std() |
| frequencybodyaccelerationmeanx | fBodyAcc-mean()-X |
| frequencybodyaccelerationmeany | fBodyAcc-mean()-Y |
| frequencybodyaccelerationmeanz | fBodyAcc-mean()-Z |
| frequencybodyaccelerationstandarddeviationx | fBodyAcc-std()-X |
| frequencybodyaccelerationstandarddeviationy | fBodyAcc-std()-Y |
| frequencybodyaccelerationstandarddeviationz | fBodyAcc-std()-Z |
| frequencybodyaccelerationmeanfrequencyx | fBodyAcc-meanFreq()-X |
| frequencybodyaccelerationmeanfrequencyy | fBodyAcc-meanFreq()-Y |
| frequencybodyaccelerationmeanfrequencyz | fBodyAcc-meanFreq()-Z |
| frequencybodyaccelerationjerkmeanx | fBodyAccJerk-mean()-X |
| frequencybodyaccelerationjerkmeany | fBodyAccJerk-mean()-Y |
| frequencybodyaccelerationjerkmeanz | fBodyAccJerk-mean()-Z |
| frequencybodyaccelerationjerkstandarddeviationx | fBodyAccJerk-std()-X |
| frequencybodyaccelerationjerkstandarddeviationy | fBodyAccJerk-std()-Y |
| frequencybodyaccelerationjerkstandarddeviationz | fBodyAccJerk-std()-Z |
| frequencybodyaccelerationjerkmeanfrequencyx | fBodyAccJerk-meanFreq()-X |
| frequencybodyaccelerationjerkmeanfrequencyy | fBodyAccJerk-meanFreq()-Y |
| frequencybodyaccelerationjerkmeanfrequencyz | fBodyAccJerk-meanFreq()-Z |
| frequencybodygyromeanx | fBodyGyro-mean()-X |
| frequencybodygyromeany | fBodyGyro-mean()-Y |
| frequencybodygyromeanz | fBodyGyro-mean()-Z |
| frequencybodygyrostandarddeviationx | fBodyGyro-std()-X |
| frequencybodygyrostandarddeviationy | fBodyGyro-std()-Y |
| frequencybodygyrostandarddeviationz | fBodyGyro-std()-Z |
| frequencybodygyromeanfrequencyx | fBodyGyro-meanFreq()-X |
| frequencybodygyromeanfrequencyy | fBodyGyro-meanFreq()-Y |
| frequencybodygyromeanfrequencyz | fBodyGyro-meanFreq()-Z |
| frequencybodyaccelerationmagnitudemean | fBodyAccMag-mean() |
| frequencybodyaccelerationmagnitudestandarddeviation | fBodyAccMag-std() |
| frequencybodyaccelerationmagnitudemeanfrequency | fBodyAccMag-meanFreq() |
| frequencybodyaccelerationjerkmagnitudemean | fBodyBodyAccJerkMag-mean() |
| frequencybodyaccelerationjerkmagnitudestandarddeviation | fBodyBodyAccJerkMag-std() |
| frequencybodyaccelerationjerkmagnitudemeanfrequency | fBodyBodyAccJerkMag-meanFreq() |
| frequencybodygyromagnitudemean | fBodyBodyGyroMag-mean() |
| frequencybodygyromagnitudestandarddeviation | fBodyBodyGyroMag-std() |
| frequencybodygyromagnitudemeanfrequency | fBodyBodyGyroMag-meanFreq() |
| frequencybodygyrojerkmagnitudemean | fBodyBodyGyroJerkMag-mean() |
| frequencybodygyrojerkmagnitudestandarddeviation | fBodyBodyGyroJerkMag-std() |
| frequencybodygyrojerkmagnitudemeanfrequency | fBodyBodyGyroJerkMag-meanFreq() |

For information on how the original variables were obtained, please refer to the ReadMe.txt
file found in the original data set. A section has been included below for ease of reference.

## Reference
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012




## Appendix
The following section is from the ReadMe.txt file included with the original data set. This explains how
the original variables were obtained.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The dataset includes the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
