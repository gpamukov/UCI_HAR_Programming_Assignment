## =========================================================================================================
## Author: Georgi Pamukov
## Date: 2016/07/24
## Description: 
## Performs the following actions to generate UCI_HAR_Agg_Dataset.txt tidy aggregated dataset:
## * Merges the training and the test sets to create one data set.
## * Extracts only the measurements on the mean and standard deviation for each measurement.
## * Applies activity names to name the activities in the data set
## * Appropriately labels the data set with descriptive variable names.
## * Creates independent tidy data set with the average of each variable for each activity and each subject.
## Reqiured libraries: dplyr, data.table
## =========================================================================================================

## =========================================================================================================
## LIBRARIES
## =========================================================================================================
library(dplyr)
library(data.table)

## =========================================================================================================
## VARIABLES AND FILES - can change configuration here
## =========================================================================================================
data_dir <- "./data"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_file <- "project_data.zip"

## =========================================================================================================
## FUNCTIONS
## =========================================================================================================
# Create relevant file names and paths (based on set_name parameter) for:
# * subject
# * label
# * data
# Bind in one set, clean temp variables and output
prep_dataset <- function (set_name){
    # Read Subjects
    subject_file_name <- paste("subject_", set_name, ".txt", sep = "")
    subject_file_path <- file.path(data_dir, "UCI HAR Dataset", set_name, subject_file_name, fsep = .Platform$file.sep)
    subject_dt <- fread(input = subject_file_path, header = FALSE, col.names = c("subjectid"), data.table = TRUE)
  
    # Read Labels
    label_file_name <- paste("y_", set_name, ".txt", sep = "")
    label_file_path <- file.path(data_dir, "UCI HAR Dataset", set_name, label_file_name, fsep = .Platform$file.sep)
    label_dt <- fread(input = label_file_path, header = FALSE, col.names = c("activitylabelid"), data.table = TRUE)
  
    # Read Data
    data_file_name <- paste("X_", set_name, ".txt", sep = "")
    data_file_path <- file.path(data_dir, "UCI HAR Dataset", set_name, data_file_name, fsep = .Platform$file.sep)
    # Read column names from features.txt and transform in valid variable names (rename if needed to make unique)
    data_file_col_names <- make.names((read.table(file.path(data_dir, "UCI HAR Dataset/features.txt"), sep=" ", stringsAsFactors = FALSE))$V2, unique = TRUE)
    data_dt <- fread(input = data_file_path, header = FALSE, col.names = c(data_file_col_names), data.table = TRUE)
  
    # Column bind all parts to create final raw set
    data <- cbind(subject_dt, label_dt, data_dt)
  
    # Clean up the mess
    subject_dt <- NULL
    label_dt <- NULL
    data_dt <- NULL
  
    data
}

## =========================================================================================================
## BEGINNING OF MAIN
## =========================================================================================================

# Retrieve dataset from the web to guarantee reproducible result ===========================================
# This section can be commeneted if dataset already available
# Download zip archive with the data
if(!file.exists(data_dir)){dir.create(data_dir)}
dest_file_full_pth <- file.path(data_dir, dest_file, fsep = .Platform$file.sep)
download.file(url, destfile = dest_file_full_pth, mode = "wb") # download binary

# Extract archive in data directory
unzip(dest_file_full_pth, files = NULL, list = FALSE, overwrite = TRUE, junkpaths = FALSE, exdir = data_dir, unzip = "internal", setTimes = FALSE)

# Combine init raw data set =================================================================================
# Prepare test data set
test_dt <- prep_dataset("test")

# Prepare train data set
train_dt <- prep_dataset("train")

# Merge train and test sets togeteher (union all)
raw_data_dt <- rbind(test_dt, train_dt)

# Clean the temp variables
test_dt <- NULL
train_dt <- NULL

# Extract mean and std ======================================================================================
# Extract only variables that are needed (measurements on the mean and standard deviation for each measurement)
extract_data_dt <- raw_data_dt %>% select(subjectid, activitylabelid, matches("(mean\\.{2,}[xyz]*$|std\\.{2,}[xyz]*$)"))

# Remove temp variable
raw_data_dt <- NULL

# Tidy the extracted set  ===================================================================================
# Standardize variable names (convert to tidy format) - remove all non alphanumeric characters and lowercase
names(extract_data_dt) <- gsub("\\W", "", tolower(names(extract_data_dt)))

# Lookup activity labels and format final tidy non agregated set
activity_labels_dt <- read.table(file.path(data_dir, "UCI HAR Dataset/activity_labels.txt"), sep=" ", col.names = c("activitylabelid", "activitylabel"), stringsAsFactors = TRUE)
tidy_data_full_dt <- left_join(extract_data_dt, activity_labels_dt) %>% select(-activitylabelid) %>% select(subjectid, activitylabel, tbodyaccmeanx:fbodybodygyrojerkmagstd)

# Remove temp variables
extract_data_dt <- NULL
activity_labels_dt <- NULL

# Create tidy aggregated set  ===============================================================================
# Aggregate and create independent tidy data set with the average of each variable for each activity and each subject
tidy_data_aggr_dt <- tidy_data_full_dt %>% group_by(subjectid, activitylabel) %>% summarise_each(funs(mean))

# Apply proper column names on the aggregated set variables
names(tidy_data_aggr_dt) <- sapply(names(tidy_data_aggr_dt), FUN = function (x){if (length(grep('(mean|std)',x)) > 0){paste('averageof', x, sep = "")}else{x}})

# Output final aggregated set  ==============================================================================
write.table(x = tidy_data_aggr_dt, file = file.path(data_dir, "UCI_HAR_Agg_Dataset.txt", fsep = .Platform$file.sep), row.names = FALSE)
