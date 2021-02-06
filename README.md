## GetCleanDataProject
 Author: Ian Reid
 
### Raw data
 This project begins with a set of data on motion of human subjects, available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 A copy of that data is archived in this repository, in the directory "UCI HAR Dataset". 
 The data is divided into "Train" and "Test" subsets; the structures of the data files in the two subsets are identical. Each contains a subdirectory named "Inertial Signals". The file "UCI HAR Dataset/features_info.txt" briefly describes the data acquisition and the signal processing that has been applied to it. The description of the signal processing is not detailed enough to support repeating it, so this project begins with the measurements that were derived from the processing, in the "X_test.txt" and "X_train.txt"

### Tidying
 To put all the relevant information for each observation in one table, columns for subject(from files subject_....txt) and activity (from files y_....txt ) were added to the numeric columns in X_....txt. The feature names in "UCI HAR Dataset/feature.txt" were used as column names for the numeric columns. The data frames for the train and test subsets were then combined by a simple bind_rows operation.
 To extract columns containing means and standard deviations, the relevant column names were identified using grep. To exclude column names including the substring "meanFreq" instead of "mean()", the pattern "mean[^F]" was used for finding columns of means.
 The cryptic activity codes were replaced with text labels derived from "UCI HAR Dataset/activity_labels.txt". Abbreviations in the column names were expanded to longer,but less ambiguous, versions. Specifically, initial "t" was expanded to "TimeDomain", initial "f" to "FrequencyDomain", "Acc" to "Acceleration", "Gyro" to "Gyroscope", "Mag" to "Magnitude", "mean.." to "Mean", "std.." to "StandardDeviation", and "component" was appended to terminal "X", "Y", or "Z".
 
The tidied mean and standard deviation table have been saved in tab-separated format in the files TidyData/MeasurementMeansAndStandardDeviations.tsv.

### Summarization
 Summary data frames containing averaged measurements were derived from the mean and standard deviation table by sequentially grouping by activity or subject and using the summarize function to apply mean() by group to all the columns of numeric values. The resulting data frames were combined with the bind_rows function and saved in TidyData/AverageByActivityOrSubjectOfMeasurentMeansAndStandardDeviations.tsv.
 
 The processed data tables can be reproduced by running the script "run_analysis.R".
 
 The data columns in the two cleaned datasets are described in Codebook.md.
 