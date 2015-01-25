# Getting and Cleaning Data project 1
This is Project 1 for the course Getting and Cleaning Data.

In this repository you will find:
 * ReadMe.md - this file
 * tidyData.txt - a data set derived from mobile phone accelerometer data
 * run_analysis.R - the R script used to create tidyData.txt
 * CodeBook.md - a file describing the data in tidyData.txt
 
The original data used to produce tidyData.txt can be found in a zip file located 
[here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
A description of this original data can be found
[here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The tidyData.txt file can be reproduced by executing the run_analysis.R script in the same 
directory as the original data set. That is, the directory should contain both run_analysis.R
and the folder labelled "UCI HAR Dataset" which is contained in the zip file linked above.

If the script is executed without the original data set, it will attempt to download and 
unzip the data set automatically.

Please consult CodeBook.md for information on the tidyData.txt data set.