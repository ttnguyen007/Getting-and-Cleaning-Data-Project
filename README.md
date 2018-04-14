# Getting-and-Cleaning-Data-Project
This is the peer-graded assignment project for Getting and Cleaning Data on Coursera
The purpose of this project is to train students the ability to collect, work with, and clean a data set.
More specifically, the project requirement is to prepare tidy data that can be used for later analysis.

The dataset, used in this project, was collected by and from the following experiment:
        Human Activity Recognition Using Smartphones Dataset
        Version 1.0
        ==================================================================
        Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
        Smartlab - Non Linear Complex Systems Laboratory
        DITEN - Università degli Studi di Genova.
        Via Opera Pia 11A, I-16145, Genoa, Italy.
        activityrecognition@smartlab.ws
        www.smartlab.ws

The data can be downloaded from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset contains a few hundreds variables and thousands of observations. It is divided into test
and training data. It contains many many different acceleration measurements (variables known as
"features") from different activities (activity_labels) from different test subjects (subject_test).

Each test / train dataset contains the following:
 1 txt file contains the test subject info, for each observation
 1 txt file contains the activity, for each observation
 1 txt file contains the features, (these are the varibles in the data columns)
 1 txt file contains measurements/observations (X_train, X_test)
 1 txt file contains activity associated with those measurement data (y_train, y_test)

The project objective is defined as below:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each
  variable for each activity and each subject.

Please see my run_analysis.R
You must have dplyr package installed to run this R file.

So after importing (with read.table) all the txt files into R, I went ahead and labeled all the columns
of the test and the train dataframe. This required replacing the default column names (V1,V2,..) with
features.

The activity type (for each observation) is saved as a digit in a separate dataframe and needs to be merged
with observation dataframes. My tasks were made alot easier. Thanks to dplyr package.
I labeled the activity column by looking-up the corresponding names and adding this
new activity column to test and train dataset.

I added a column "Data" to distinguish test data from train data. I used cbind.
I then combined the test and train data, before doing a little bit of cleaning. I used rbind.

Cleaning activities include the following:
    Getting rid of duplicates. Duplicates do not contain mean or standard deviation requirements
    Keeping all columns with "mean", and "std"
    Getting rid of "angle" columns and unwanted "[-()]"
I now have a untidy dataset, please see "untidy_data.txt"

Lastly, to have a tidy data set, I used group_by and summarize_all to get the mean for each test subject
for each activity. I printed out the results into a file called "tidy_data.txt".
