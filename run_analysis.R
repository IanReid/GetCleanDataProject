library(dplyr)
library(readr)

## Download raw data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip")
unzip("Dataset.zip")

## Merge the training and test data sets
# Load feature names
features <- read.table(fs::path("UCI HAR Dataset","features.txt"), col.names=c("index","label"))

# Load X table for test observations
X.test <- read.table(fs::path("UCI HAR Dataset","test","X_test.txt"), col.names = features$label)
# Load activity codes for test observations
y.test <- read.table(fs::path("UCI HAR Dataset","test","y_test.txt"), col.names = "activity")
# Load subject codes for test observations
subjects.test <- read.table(fs::path("UCI HAR Dataset","test","subject_test.txt"), col.names = "subject")
# Combine the three data frames into a tidy table
test.df <- bind_cols(subjects.test, y.test, X.test)
rm(list = c("X.test", "y.test", "subjects.test"))

# Load X table for training observations
X.train <- read.table(fs::path("UCI HAR Dataset","train","X_train.txt"), 
                      col.names = features$label)
# Load activity codes for training observations
y.train <- read.table(fs::path("UCI HAR Dataset","train","y_train.txt"), 
                      col.names = "activity")
# Load subject codes for training observations
subjects.train <- read.table(fs::path("UCI HAR Dataset","train","subject_train.txt"), 
                             col.names = "subject")
# Combine the three data frames into a tidy table
train.df <- bind_cols(subjects.train, y.train, X.train)
rm(list = c("X.train", "y.train", "subjects.train"))

# Combine the training and testing data sets
merged.df <- bind_rows(train.df, test.df)
rm(list=c("train.df", "test.df"))

## Extract means and standard deviations for each measurement
observations <- mutate(merged.df, observation = 1:dim(merged.df)[1])
mean_labels <-grep("mean[^F]", names(observations),value = TRUE)
means.table <- observations %>% 
  select(all_of(c("observation", "subject", "activity", mean_labels))) %>% 
  rename_with(function(x) {sub(".mean..", "", x, fixed = T)})

std_labels <-grep(".std..", names(observations),value = TRUE)
standard_deviation.table <- observations %>% 
  select(all_of(c("observation", "subject", "activity", std_labels))) %>% 
  rename_with(function(x) {sub(".std..", "", x, fixed = T)})

## Assign descriptive names to the activities in the data set
activity_labels <- read.table(fs::path("UCI HAR Dataset","activity_labels.txt"))
activities <- tolower(activity_labels$V2)
means.table <- mutate(means.table,activity = activities[activity])
standard_deviation.table <- mutate(standard_deviation.table,
                                   activity = activities[activity])

## Label the data set with descriptive variable names
#Expand abbreviations in existing names
means.table <- means.table %>% 
  rename_with(function(x) {sub("^t", "TimeDomain", x, fixed = F)}) %>%
  rename_with(function(x) {sub("^f", "FrequencyDomain", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Acc", "Acceleration", x, fixed = T)}) %>%
  rename_with(function(x) {sub("Gyro", "Gyroscope", x, fixed = T)}) %>%
  rename_with(function(x) {sub("Mag", "Magnitude", x, fixed = T)}) %>%
  rename_with(function(x) {sub("X$", "Xcomponent", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Y$", "Ycomponent", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Z$", "Zcomponent", x, fixed = F)}) 

standard_deviation.table <- standard_deviation.table %>% 
  rename_with(function(x) {sub("^t", "TimeDomain", x, fixed = F)}) %>%
  rename_with(function(x) {sub("^f", "FrequencyDomain", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Acc", "Acceleration", x, fixed = T)}) %>%
  rename_with(function(x) {sub("Gyro", "Gyroscope", x, fixed = T)}) %>%
  rename_with(function(x) {sub("Mag", "Magnitude", x, fixed = T)}) %>%
  rename_with(function(x) {sub("X$", "Xcomponent", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Y$", "Ycomponent", x, fixed = F)}) %>%
  rename_with(function(x) {sub("Z$", "Zcomponent", x, fixed = F)}) 

# Save tidy data
fs::dir_create("TidyData")
fs::dir_create(fs::path("TidyData","Dataset_1"))
write.table(means.table,fs::path("TidyData","Dataset_1","MeasurementMeans.tsv"),
            sep = "\t", row.names = FALSE)
write.table(standard_deviation.table,fs::path("TidyData","Dataset_1","MeasurementStandardDeviations.tsv"),
            sep = "\t", row.names = FALSE)

## Create a second tidy data set containing the average of each variable for each
## activity and each subject
fs::dir_create(fs::path("TidyData","Dataset_2"))

activity.means <- means.table %>% select(-c(subject, observation)) %>% group_by(activity) %>% 
  summarize(across(.cols = where(is.numeric), .fns = mean))
write.table(activity.means,fs::path("TidyData","Dataset_2","AverageByActivityOfMeasurementMeans.tsv"),
            sep = "\t", row.names = FALSE)

subject.means <- means.table %>% select(-c(activity, observation)) %>% group_by(subject) %>% 
  summarize(across(.cols = where(is.numeric), .fns = mean))
write.table(subject.means,fs::path("TidyData","Dataset_2","AverageBySubjectOfMeasurementMeans.tsv"),
            sep = "\t", row.names = FALSE)

activity.sds <- standard_deviation.table %>% select(-c(subject, observation)) %>% group_by(activity) %>% 
  summarize(across(.cols = where(is.numeric), .fns = mean))
write.table(activity.sds,fs::path("TidyData","Dataset_2","AverageByActivityOfMeasurementStandardDeviations.tsv"),
            sep = "\t", row.names = FALSE)

subject.sds <- standard_deviation.table %>% select(-c(activity, observation)) %>% group_by(subject) %>% 
  summarize(across(.cols = where(is.numeric), .fns = mean))
write.table(subject.sds,fs::path("TidyData","Dataset_2","AverageBySubjectOfMeasurementStandardDeviations.tsv"),
            sep = "\t", row.names = FALSE)

