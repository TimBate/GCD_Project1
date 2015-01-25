#Code Book
This describes the data set named "tidyData.txt" produced by the script "run_analysis.R".

The data set consists of 180 rows and 81 columns containing summary data derived from the 
"UCI HAR Dataset" found 
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

| Original variable | Related column |
-----------------------------------
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


