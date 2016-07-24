
# run_analysis.R

## Purpose
Performs the following actions to generate UCI_HAR_Agg_Dataset.txt tidy aggregated dataset:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Applies activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* Creates independent tidy data set with the average of each variable for each activity and each subject. 

## Logic
Upon execution the scrip performs the following operations:
1. Retrieve dataset from the web to guarantee reproducible result:
* Download zip archive with the data
* Extract archive in data directory
2. Combine initial raw data set
* Prepare test data set:
  * Create relevant file names and paths (based on set_name parameter) for: subject, label, data
  * Read Subjects
  * Read Labels
  * Read Data (Read column names from features.txt and transform in valid variable names (rename to make the list unique))
  * Read Subjects
  * Column bind all parts to create final raw set (union all)
3. Extract only variables that are needed (measurements on the mean and standard deviation for each measurement) from the merged test/train set
4. Tidy the extracted set
* Standardize variable names (convert to tidy format) - remove all non alphanumeric characters and lowercase
* Lookup activity labels and format final tidy non agregated set
5. Create tidy aggregated set:
* Aggregate and create independent tidy data set with the average of each variable for each activity and each subject
* Apply proper column names on the aggregated set variables
6. Output final aggregated set

## Requirements 
In order to provide maximal performance (with minimal system resources) the script is using the 
following packages (should be installed prior the script execution):
1. dplyr
2. data.table

## Setup
The following setting can be adjusted under "VARIABLES AND FILES" section of the script
1. data_dir - changes the location of the data directory used by the script. Can be relative or absolute path.
2. url - url from which the archived raw dataset should be downloaded.
3. dest_file - file name of the local (destination) file that is used in the download process
