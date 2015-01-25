###############
# Produces a tidy data set summarising the combined training and test data
# found in the UCI HAR Dataset. The summaries consist of taking the average of
# mean and standard deviation variables by subject and activity.
#
# The results of this script are described in the Readme and code book.
#
# This R script may be copied in to the same directory that contains the data
# folder.
#
# If the data has not been downloaded or unzipped, this script should do this
# automatically.
#
# This script requires the dplyr package to be installed.

# Load libraries
library(dplyr)


###############
# Download and/or Unzip if needed
if (!file.exists("UCI HAR Dataset")) {
  # Download and unzip the data if needed
  fileName <- "getdata-projectfiles-UCI HAR Dataset.zip"
  if (!file.exists(fileName)) {  
    print("Downloading file")
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
    download.file(fileURL, 
                  destfile = fileName,
                  mode = "wb")
  }
  
  print("Unzipping file")
  unzip(zipfile = fileName)  
}


###############
# Read information on data such as feature information and activity labels
print("Loading files")

featuresInfo <- read.table(file = "./UCI HAR Dataset/features.txt", 
                       header = FALSE, sep = " ", col.names = c("index", "feature"))
activityLabels <- read.table(file = "./UCI HAR Dataset/activity_labels.txt",
                             header = FALSE, col.names = c('id','activitylabel'))


###############
# Read the Training data such as X, y and subjects
trainX <- read.table(file = "./UCI HAR Dataset/train/X_train.txt",
                     header = FALSE, col.names = featuresInfo$feature)

trainy <- read.table(file = "./UCI HAR Dataset/train/y_train.txt",
                     header = FALSE, col.names = c('activity'))

trainSubject <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt",
                           header = FALSE, col.names = c('subject'))

trainSetID <- rep("training", times = length(trainSubject$subject))


###############
# Read the Test data such as X, y and subjects
testX <- read.table(file = "./UCI HAR Dataset/test/X_test.txt",
                   header = FALSE, col.names = featuresInfo$feature)

testy <- read.table(file = "./UCI HAR Dataset/test/y_test.txt",
                   header = FALSE, col.names = c('activity'))

testSubject <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt",
                      header = FALSE, col.names = c('subject'))

testSetID <- rep("test", times = length(testSubject$subject))


###############
# Combine tables
tabX <- rbind(trainX, testX)
taby <- rbind(trainy, testy)
subject <- rbind(trainSubject, testSubject)
setID <- factor(c(trainSetID, testSetID))

####
# Step 1 complete: Data merged into a single data set
# Note:
# This does not include tables that are discarded later.
# This was clarified on the forums.
####

###############
# Prepare and combine the data

# ID used to preserve row order
id <- seq(along.with = subject$subject)

# Reduce the X table to only those with means and stds
#
# Note:
# The last few variables (angles) are angles of means, not means themselves.
# The regular expression has bean chosen to exclude these deliberately.
# It wasn't clear if mean frequency should be included, so it was.
subX <- tabX[,grep("mean|std", featuresInfo$feature)]

####
# Step 2 complete: Only mean and std variables extracted
####

###############
# Rename the labels as appropriate
colnames(subX) <- c("bodyaccelerationmeanx",
                    "bodyaccelerationmeany",
                    "bodyaccelerationmeanz",
                    "bodyaccelerationstandarddeviationx",
                    "bodyaccelerationstandarddeviationy",
                    "bodyaccelerationstandarddeviationz",
                    "gravityaccelerationmeanx",
                    "gravityaccelerationmeany",
                    "gravityaccelerationmeanz",
                    "gravityaccelerationstandarddeviationx",
                    "gravityaccelerationstandarddeviationy",
                    "gravityaccelerationstandarddeviationz",
                    "bodyaccelerationjerkmeanx",
                    "bodyaccelerationjerkmeany",
                    "bodyaccelerationjerkmeanz",
                    "bodyaccelerationjerkstandarddeviationx",
                    "bodyaccelerationjerkstandarddeviationy",
                    "bodyaccelerationjerkstandarddeviationz",
                    "bodygyromeanx",
                    "bodygyromeany",
                    "bodygyromeanz",
                    "bodygyrostandarddeviationx",
                    "bodygyrostandarddeviationy",
                    "bodygyrostandarddeviationz",
                    "bodygyrojerkmeanx",
                    "bodygyrojerkmeany",
                    "bodygyrojerkmeanz",
                    "bodygyrojerkstandarddeviationx",
                    "bodygyrojerkstandarddeviationy",
                    "bodygyrojerkstandarddeviationz",
                    "bodyaccelerationmagnitudemean",
                    "bodyaccelerationmagnitudestandarddeviation",
                    "gravityaccelerationmagnitudemean",
                    "gravityaccelerationmagnitudestandarddeviation",
                    "bodyaccelerationjerkmagnitudemean",
                    "bodyaccelerationjerkmagnitudestandarddeviation",
                    "bodygyromagnitudemean",
                    "bodygyromagnitudestandarddeviation",
                    "bodygyrojerkmagnitudemean",
                    "bodygyrojerkmagnitudestandarddeviation",
                    "frequencybodyaccelerationmeanx",
                    "frequencybodyaccelerationmeany",
                    "frequencybodyaccelerationmeanz",
                    "frequencybodyaccelerationstandarddeviationx",
                    "frequencybodyaccelerationstandarddeviationy",
                    "frequencybodyaccelerationstandarddeviationz",
                    "frequencybodyaccelerationmeanfrequencyx",
                    "frequencybodyaccelerationmeanfrequencyy",
                    "frequencybodyaccelerationmeanfrequencyz",
                    "frequencybodyaccelerationjerkmeanx",
                    "frequencybodyaccelerationjerkmeany",
                    "frequencybodyaccelerationjerkmeanz",
                    "frequencybodyaccelerationjerkstandarddeviationx",
                    "frequencybodyaccelerationjerkstandarddeviationy",
                    "frequencybodyaccelerationjerkstandarddeviationz",
                    "frequencybodyaccelerationjerkmeanfrequencyx",
                    "frequencybodyaccelerationjerkmeanfrequencyy",
                    "frequencybodyaccelerationjerkmeanfrequencyz",
                    "frequencybodygyromeanx",
                    "frequencybodygyromeany",
                    "frequencybodygyromeanz",
                    "frequencybodygyrostandarddeviationx",
                    "frequencybodygyrostandarddeviationy",
                    "frequencybodygyrostandarddeviationz",
                    "frequencybodygyromeanfrequencyx",
                    "frequencybodygyromeanfrequencyy",
                    "frequencybodygyromeanfrequencyz",
                    "frequencybodyaccelerationmagnitudemean",
                    "frequencybodyaccelerationmagnitudestandarddeviation",
                    "frequencybodyaccelerationmagnitudemeanfrequency",
                    "frequencybodyaccelerationjerkmagnitudemean",
                    "frequencybodyaccelerationjerkmagnitudestandarddeviation",
                    "frequencybodyaccelerationjerkmagnitudemeanfrequency",
                    "frequencybodygyromagnitudemean",
                    "frequencybodygyromagnitudestandarddeviation",
                    "frequencybodygyromagnitudemeanfrequency",
                    "frequencybodygyrojerkmagnitudemean",
                    "frequencybodygyrojerkmagnitudestandarddeviation",
                    "frequencybodygyrojerkmagnitudemeanfrequency"
)

# Combine id, subject, y and sub set of X
combined <- cbind(id, setID, subject, taby, subX)

# Add the actual activity label
mergedData = arrange(merge(combined, activityLabels, by.x = "activity", by.y="id", all=TRUE), id)

# Re-arrange and prune columns, fix a few remaining labels
dataFrame <- mergedData[,c(2:4, 84, 5:83)]
colnames(dataFrame)[2] <- "setid"
colnames(dataFrame)[4] <- "activity"

####
# Step 3 and 4 complete
# It was simpler to rename the variables (step 4) before merging with 
# activities (step 3), hence the steps are completed together.
####

groupedData <- group_by(dataFrame, subject, activity)
summarisedData <- summarise(groupedData, 
          meanbodyaccelerationmeanx = mean(bodyaccelerationmeanx, na.rm = TRUE), 
          meanbodyaccelerationmeany = mean(bodyaccelerationmeany, na.rm = TRUE), 
          meanbodyaccelerationmeanz = mean(bodyaccelerationmeanz, na.rm = TRUE),
          meanbodyaccelerationstandarddeviationx = mean(bodyaccelerationstandarddeviationx, na.rm = TRUE),
          meanbodyaccelerationstandarddeviationy = mean(bodyaccelerationstandarddeviationy, na.rm = TRUE),
          meanbodyaccelerationstandarddeviationz = mean(bodyaccelerationstandarddeviationz, na.rm = TRUE),
          meangravityaccelerationmeanx = mean(gravityaccelerationmeanx, na.rm = TRUE),
          meangravityaccelerationmeany = mean(gravityaccelerationmeany, na.rm = TRUE),
          meangravityaccelerationmeanz = mean(gravityaccelerationmeanz, na.rm = TRUE),
          meangravityaccelerationstandarddeviationx = mean(gravityaccelerationstandarddeviationx, na.rm = TRUE),
          meangravityaccelerationstandarddeviationy = mean(gravityaccelerationstandarddeviationy, na.rm = TRUE),
          meangravityaccelerationstandarddeviationz = mean(gravityaccelerationstandarddeviationz, na.rm = TRUE),
          meanbodyaccelerationjerkmeanx = mean(bodyaccelerationjerkmeanx, na.rm = TRUE),
          meanbodyaccelerationjerkmeany = mean(bodyaccelerationjerkmeany, na.rm = TRUE),
          meanbodyaccelerationjerkmeanz = mean(bodyaccelerationjerkmeanz, na.rm = TRUE),
          meanbodyaccelerationjerkstandarddeviationx = mean(bodyaccelerationjerkstandarddeviationx, na.rm = TRUE),
          meanbodyaccelerationjerkstandarddeviationy = mean(bodyaccelerationjerkstandarddeviationy, na.rm = TRUE),
          meanbodyaccelerationjerkstandarddeviationz = mean(bodyaccelerationjerkstandarddeviationz, na.rm = TRUE),
          meanbodygyromeanx = mean(bodygyromeanx, na.rm = TRUE),
          meanbodygyromeany = mean(bodygyromeany, na.rm = TRUE),
          meanbodygyromeanz = mean(bodygyromeanz, na.rm = TRUE),
          meanbodygyrostandarddeviationx = mean(bodygyrostandarddeviationx, na.rm = TRUE),
          meanbodygyrostandarddeviationy = mean(bodygyrostandarddeviationy, na.rm = TRUE),
          meanbodygyrostandarddeviationz = mean(bodygyrostandarddeviationz, na.rm = TRUE),
          meanbodygyrojerkmeanx = mean(bodygyrojerkmeanx, na.rm = TRUE),
          meanbodygyrojerkmeany = mean(bodygyrojerkmeany, na.rm = TRUE),
          meanbodygyrojerkmeanz = mean(bodygyrojerkmeanz, na.rm = TRUE),
          meanbodygyrojerkstandarddeviationx = mean(bodygyrojerkstandarddeviationx, na.rm = TRUE),
          meanbodygyrojerkstandarddeviationy = mean(bodygyrojerkstandarddeviationy, na.rm = TRUE),
          meanbodygyrojerkstandarddeviationz = mean(bodygyrojerkstandarddeviationz, na.rm = TRUE),
          meanbodyaccelerationmagnitudemean = mean(bodyaccelerationmagnitudemean, na.rm = TRUE),
          meanbodyaccelerationmagnitudestandarddeviation = mean(bodyaccelerationmagnitudestandarddeviation, na.rm = TRUE),
          meangravityaccelerationmagnitudemean = mean(gravityaccelerationmagnitudemean, na.rm = TRUE),
          meangravityaccelerationmagnitudestandarddeviation = mean(gravityaccelerationmagnitudestandarddeviation, na.rm = TRUE),
          meanbodyaccelerationjerkmagnitudemean = mean(bodyaccelerationjerkmagnitudemean, na.rm = TRUE),
          meanbodyaccelerationjerkmagnitudestandarddeviation = mean(bodyaccelerationjerkmagnitudestandarddeviation, na.rm = TRUE),
          meanbodygyromagnitudemean = mean(bodygyromagnitudemean, na.rm = TRUE),
          meanbodygyromagnitudestandarddeviation = mean(bodygyromagnitudestandarddeviation, na.rm = TRUE),
          meanbodygyrojerkmagnitudemean = mean(bodygyrojerkmagnitudemean, na.rm = TRUE),
          meanbodygyrojerkmagnitudestandarddeviation = mean(bodygyrojerkmagnitudestandarddeviation, na.rm = TRUE),
          meanfrequencybodyaccelerationmeanx = mean(frequencybodyaccelerationmeanx, na.rm = TRUE),
          meanfrequencybodyaccelerationmeany = mean(frequencybodyaccelerationmeany, na.rm = TRUE),
          meanfrequencybodyaccelerationmeanz = mean(frequencybodyaccelerationmeanz, na.rm = TRUE),
          meanfrequencybodyaccelerationstandarddeviationx = mean(frequencybodyaccelerationstandarddeviationx, na.rm = TRUE),
          meanfrequencybodyaccelerationstandarddeviationy = mean(frequencybodyaccelerationstandarddeviationy, na.rm = TRUE),
          meanfrequencybodyaccelerationstandarddeviationz = mean(frequencybodyaccelerationstandarddeviationz, na.rm = TRUE),
          meanfrequencybodyaccelerationmeanfrequencyx = mean(frequencybodyaccelerationmeanfrequencyx, na.rm = TRUE),
          meanfrequencybodyaccelerationmeanfrequencyy = mean(frequencybodyaccelerationmeanfrequencyy, na.rm = TRUE),
          meanfrequencybodyaccelerationmeanfrequencyz = mean(frequencybodyaccelerationmeanfrequencyz, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeanx = mean(frequencybodyaccelerationjerkmeanx, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeany = mean(frequencybodyaccelerationjerkmeany, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeanz = mean(frequencybodyaccelerationjerkmeanz, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkstandarddeviationx = mean(frequencybodyaccelerationjerkstandarddeviationx, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkstandarddeviationy = mean(frequencybodyaccelerationjerkstandarddeviationy, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkstandarddeviationz = mean(frequencybodyaccelerationjerkstandarddeviationz, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeanfrequencyx = mean(frequencybodyaccelerationjerkmeanfrequencyx, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeanfrequencyy = mean(frequencybodyaccelerationjerkmeanfrequencyy, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmeanfrequencyz = mean(frequencybodyaccelerationjerkmeanfrequencyz, na.rm = TRUE),
          meanfrequencybodygyromeanx = mean(frequencybodygyromeanx, na.rm = TRUE),
          meanfrequencybodygyromeany = mean(frequencybodygyromeany, na.rm = TRUE),
          meanfrequencybodygyromeanz = mean(frequencybodygyromeanz, na.rm = TRUE),
          meanfrequencybodygyrostandarddeviationx = mean(frequencybodygyrostandarddeviationx, na.rm = TRUE),
          meanfrequencybodygyrostandarddeviationy = mean(frequencybodygyrostandarddeviationy, na.rm = TRUE),
          meanfrequencybodygyrostandarddeviationz = mean(frequencybodygyrostandarddeviationz, na.rm = TRUE),
          meanfrequencybodygyromeanfrequencyx = mean(frequencybodygyromeanfrequencyx, na.rm = TRUE),
          meanfrequencybodygyromeanfrequencyy = mean(frequencybodygyromeanfrequencyy, na.rm = TRUE),
          meanfrequencybodygyromeanfrequencyz = mean(frequencybodygyromeanfrequencyz, na.rm = TRUE),
          meanfrequencybodyaccelerationmagnitudemean = mean(frequencybodyaccelerationmagnitudemean, na.rm = TRUE),
          meanfrequencybodyaccelerationmagnitudestandarddeviation = mean(frequencybodyaccelerationmagnitudestandarddeviation, na.rm = TRUE),
          meanfrequencybodyaccelerationmagnitudemeanfrequency = mean(frequencybodyaccelerationmagnitudemeanfrequency, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmagnitudemean = mean(frequencybodyaccelerationjerkmagnitudemean, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmagnitudestandarddeviation = mean(frequencybodyaccelerationjerkmagnitudestandarddeviation, na.rm = TRUE),
          meanfrequencybodyaccelerationjerkmagnitudemeanfrequency = mean(frequencybodyaccelerationjerkmagnitudemeanfrequency, na.rm = TRUE),
          meanfrequencybodygyromagnitudemean = mean(frequencybodygyromagnitudemean, na.rm = TRUE),
          meanfrequencybodygyromagnitudestandarddeviation = mean(frequencybodygyromagnitudestandarddeviation, na.rm = TRUE),
          meanfrequencybodygyromagnitudemeanfrequency = mean(frequencybodygyromagnitudemeanfrequency, na.rm = TRUE),
          meanfrequencybodygyrojerkmagnitudemean = mean(frequencybodygyrojerkmagnitudemean, na.rm = TRUE),
          meanfrequencybodygyrojerkmagnitudestandarddeviation = mean(frequencybodygyrojerkmagnitudestandarddeviation, na.rm = TRUE),          
          meanfrequencybodygyrojerkmagnitudemeanfrequency = mean(frequencybodygyrojerkmagnitudemeanfrequency, na.rm = TRUE)
)

####
# Step 5 Complete
####

print("Exporting the tidy data set")
write.table(summarisedData, file = "tidyData.txt", row.names = FALSE)
