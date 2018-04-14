# Thanh Nguyen - Getting and Cleaning Data

# to save the Url provided in the course website
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


# the following arguments (f1,f2, test_path, ...) save the directory to the files inside the folder
# for easy access
f1 <- file.path(getwd(),"getting_cleaning_data.zip")
f2 <- file.path(getwd(),"UCI HAR Dataset");
test_path <- file.path(f2,"test")
train_path <- file.path(f2,"train")
train_inertial <- file.path(train_path,"Inertial Signals")
test_inertial <- file.path(test_path,"Inertial Signals")

# the following 2 lines will check if the files have been downloaded in the working directory,
# if not, download and unzip the folder in the working directory
if (!file.exists(f1)){download.file(url,f1)}
if (!file.exists("UCI HAR Dataset")) { unzip(f1) }


# the following lines 24-49 will import all data provided in the folder into R and save
# them as data frames for easy access
activity_labels <- read.table(file.path(f2,"activity_labels.txt"))
features <- read.table(file.path(f2,"features.txt"))
X_test <- read.table(file.path(test_path,"X_test.txt"))
y_test <- read.table(file.path(test_path,"y_test.txt"))
subject_test <- read.table(file.path(test_path,"subject_test.txt"))
X_train <- read.table(file.path(train_path,"X_train.txt"))
y_train <- read.table(file.path(train_path,"y_train.txt"))
subject_train <- read.table(file.path(train_path,"subject_train.txt"))
body_acc_x_test <- read.table(file.path(test_inertial,"body_acc_x_test.txt"))
body_acc_y_test <- read.table(file.path(test_inertial,"body_acc_y_test.txt"))
body_acc_z_test <- read.table(file.path(test_inertial,"body_acc_z_test.txt"))
body_gyro_x_test <- read.table(file.path(test_inertial,"body_gyro_x_test.txt"))
body_gyro_y_test <- read.table(file.path(test_inertial,"body_gyro_y_test.txt"))
body_gyro_z_test <- read.table(file.path(test_inertial,"body_gyro_z_test.txt"))
total_acc_x_test <- read.table(file.path(test_inertial,"total_acc_x_test.txt"))
total_acc_y_test <- read.table(file.path(test_inertial,"total_acc_y_test.txt"))
total_acc_z_test <- read.table(file.path(test_inertial,"total_acc_z_test.txt"))
body_acc_x_train <- read.table(file.path(train_inertial,"body_acc_x_train.txt"))
body_acc_y_train <- read.table(file.path(train_inertial,"body_acc_y_train.txt"))
body_acc_z_train <- read.table(file.path(train_inertial,"body_acc_z_train.txt"))
body_gyro_x_train <- read.table(file.path(train_inertial,"body_gyro_x_train.txt"))
body_gyro_y_train <- read.table(file.path(train_inertial,"body_gyro_y_train.txt"))
body_gyro_z_train <- read.table(file.path(train_inertial,"body_gyro_z_train.txt"))
total_acc_x_train <- read.table(file.path(train_inertial,"total_acc_x_train.txt"))
total_acc_y_train <- read.table(file.path(train_inertial,"total_acc_y_train.txt"))
total_acc_z_train <- read.table(file.path(train_inertial,"total_acc_z_train.txt"))


# The following 5 lines will replace random column names of train and test with Activity names
# Activity names were looked up from the table using corresponding values
features <- as.character(features$V2)
for(i in 1:length(X_test)) {colnames(X_test)[i] <- features[[i]]}
for(i in 1:length(X_train)) {colnames(X_train)[i] <- features[[i]]}
y_train <- as.character(activity_labels[match(y_train$V1,activity_labels$V1),2])
y_test <- as.character(activity_labels[match(y_test$V1,activity_labels$V1),2])


library(dplyr) # requires dplyr package

# The following 2 lines replace default column names with Subject for both test and train data
subject_test <- rename(subject_test, Subject=V1)
subject_train <- rename(subject_train, Subject=V1)

# The following 2 lines combine the columns to create a more specific data set
X_test <- cbind(Data = c("test"), subject_test, Activity=y_test, X_test)
X_train <- cbind(Data = c("train"), subject_train, Activity=y_train, X_train)

# The following line combines the test and train dataset
mergeddata <- rbind(X_test,X_train)
mergeddata <- mergeddata[ , !duplicated(colnames(mergeddata))] # get rid of duplicated columns in the data set
mergeddata <- select(mergeddata, Data:Activity, contains("mean"), contains("std"), -contains("angle")) # selecting only the mean and standard deviation columns

# to clean the mean and std and convert then into more readable names
names(mergeddata) = gsub('-mean', 'Mean', names(mergeddata))
names(mergeddata) = gsub('-std', 'Std', names(mergeddata))
names(mergeddata) <- gsub('[-()]', '', names(mergeddata))

# The following 3 lines group and summarize the mean of data based on per person and per activity
mergeddata2 <- group_by(mergeddata,Subject,Activity)
mergeddata2 <- select(mergeddata2, -Data)
summary_table <- summarize_all(mergeddata2,mean)

# The following 2 lines export the data table into 2 txt files as required.
write.table(mergeddata, file = "untidy_data.txt", sep = "\t",row.names = FALSE,col.names = TRUE)
write.table(summary_table, file = "tidy_data.txt", sep = "\t",row.names = FALSE, col.names = TRUE)