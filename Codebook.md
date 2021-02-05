## Code book
 This repository includes a raw dataset, in directory "UCI HAR Dataset", and two cleaned datasets in directories "TidyData/Dataset_1" and "TidyData/Dataset_2". This document describes the two cleaned datasets. The raw dataset is described by "UCI HAR Dataset/features_info.txt".
 
 See README.md for general information about the transformation of the raw dataset to the cleaned datasets. The script run_analysis.R will reproduce the processing.
 
 ### TidyData/Dataset_1/MeasurentMeans.tsv
 This file contains 36 tab-separated columns and 10,299 rows.
 The contents of this file were derived from "UCI HAR Dataset/test/X_test.txt" and "UCI HAR Dataset/train/X_train.txt" by adding information about subject (from subject_train.txt and subject_test.txt) and about activity (from y_train.txt and y_test.txt) and then merging the train and test datasets. A unique identifier for each row was added as a column named observation. Columns containing mean data were selected from the combined dataset and placed in a new table, along with the observation, subject, and activity columns. Numeric codes in the activity column were replaced by text descriptions taken from "UCI HAR Dataset/activity_labels.txt", and abbreviations in the original column names were expanded.
 Variables:
observation                                      integer     Unique row identifier for linking to MeasurementStandardDeviations.tsv
subject                                          integer     Identifier for observed human subject
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Mean acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Mean acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Mean acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Mean acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Mean acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Mean acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Mean derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Mean derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Mean derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Mean gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Mean gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Mean gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Mean magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Mean magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Mean magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Mean magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Mean FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Mean FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Mean FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Mean FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Mean FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Mean FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Mean FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
 
 ### TidyData/Dataset_1/MeasurementStandardDeviations.tsv
 This file contains 36 tab-separated columns and 10,299 rows.
 The contents of this file were derived from "UCI HAR Dataset/test/X_test.txt" and "UCI HAR Dataset/train/X_train.txt" by adding information about subject (from subject_train.txt and subject_test.txt) and about activity (from y_train.txt and y_test.txt) and then merging the train and test datasets. A unique identifier for each row was added as a column named observation. Columns containing standard deviation data were selected from the combined dataset and placed in a new table, along with the observation, subject, and activity columns. Numeric codes in the activity column were replaced by text descriptions taken from "UCI HAR Dataset/activity_labels.txt", and abbreviations in the original column names were expanded.
 Variables:
observation                                      integer     Unique row identifier for linking to MeasurementMeans.tsv
subject                                          integer     Identifier for observed human subject
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Standard deviation of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Standard deviation of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Standard deviation of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Standard deviation of the acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Standard deviation of the acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Standard deviation of the acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Standard deviation of the derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Standard deviation of the derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Standard deviation of the derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Standard deviation of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Standard deviation of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Standard deviation of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Standard deviation of the derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Standard deviation of the derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Standard deviation of the derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Standard deviation of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Standard deviation of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Standard deviation of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Standard deviation of the magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Standard deviation of the FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Standard deviation of the FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Standard deviation of the FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Standard deviation of the FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Standard deviation of the FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Standard deviation of the FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Standard deviation of the FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Standard deviation of the FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Standard deviation of the FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Standard deviation of the FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]

 
### TidyData/Dataset_2/AverageByActivityOfMeasurentMeans.tsv
 This file contains 34 tab-separated columns and 6 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementMeans.tsv" by dropping observation and subject columns, grouping the rows by activity, and calculating the column means within each group.
 Variables:
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Mean acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Mean acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Mean acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Mean acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Mean acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Mean acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Mean derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Mean derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Mean derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Mean gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Mean gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Mean gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Mean derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Mean magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Mean magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Mean magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Mean magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Mean FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Mean FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Mean FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Mean FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Mean FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Mean FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Mean FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Mean FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Mean FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 

### TidyData/Dataset_2/AverageByActivityOfMeasurementStandardDeviations.tsv
 This file contains 34 tab-separated columns and 6 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementStandardDeviations.tsv" by dropping observation and subject columns, grouping the rows by activity, and calculating the column means within each group.
 Variables:
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Average standard deviation of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Average standard deviation of the acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Average standard deviation of the acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Average standard deviation of the acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Average standard deviation of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Average standard deviation of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Average standard deviation of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Average standard deviation of the magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Average standard deviation of the FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Average standard deviation of the FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Average standard deviation of the FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Average standard deviation of the FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]

 
### TidyData/Dataset_2/AverageByActivityOfMeasurentMeans.tsv
 This file contains 34 tab-separated columns and 6 rows.
 This file contains 34 tab-separated columns and 6 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementMeans.tsv" by dropping observation and subject columns, grouping the rows by activity, and calculating the column means within each group.
 Variables:
observation                                      integer     Unique row identifier for linking to MeasurementStandardDeviations.tsv
subject                                          integer     Identifier for observed human subject
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Average mean acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Average mean acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Average mean acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Average mean acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Average mean acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Average mean acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Average mean derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Average mean derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Average mean derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Average mean gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Average mean gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Average mean gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Average mean magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Average mean magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Average mean magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Average mean magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Average mean FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Average mean FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Average mean FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Average mean FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 

### TidyData/Dataset_2/AverageByActivityOfMeasurementStandardDeviations.tsv
 This file contains 34 tab-separated columns and 6 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementStandardDeviations.tsv" by dropping observation and subject columns, grouping the rows by activity, and calculating the column means within each group.
 Variables:
activity                                         character   Description of observed activity 
TimeDomainBodyAcceleration.Xcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Average standard deviation of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Average standard deviation of the acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Average standard deviation of the acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Average standard deviation of the acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Average standard deviation of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Average standard deviation of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Average standard deviation of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Average standard deviation of the magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Average standard deviation of the FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Average standard deviation of the FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Average standard deviation of the FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Average standard deviation of the FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]

 
### TidyData/Dataset_2/AverageBySubjectOfMeasurentMeans.tsv
 This file contains 35 tab-separated columns and 35 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementMeans.tsv" by dropping observation and activity columns, grouping the rows by subject, and calculating the column means within each group.
 Variables:
subject                                          integer     Identifier for observed human subject
TimeDomainBodyAcceleration.Xcomponent            numeric     Average mean acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Average mean acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Average mean acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Average mean acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Average mean acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Average mean acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Average mean derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Average mean derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Average mean derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Average mean gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Average mean gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Average mean gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Average mean derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Average mean magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Average mean magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Average mean magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Average mean magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Average mean FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Average mean FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Average mean FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Average mean FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Average mean FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Average mean FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Average mean FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 

### TidyData/Dataset_2/AverageBySubjectOfMeasurementStandardDeviations.tsv
 This file contains 34 tab-separated columns and 30 rows.
 The contents of this file were derived from "TidyData/Dataset_1/MeasurementStandardDeviations.tsv" by dropping observation and activity columns, grouping the rows by subject, and calculating the column means within each group.
 Variables:
subject                                          integer     Identifier for observed human subject
TimeDomainBodyAcceleration.Xcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]
TimeDomainBodyAcceleration.Ycomponent            numeric     Average standard deviation of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAcceleration.Zcomponent            numeric     Average standard deviation of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Xcomponent         numeric     Average standard deviation of the acceleration due to gravity in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Ycomponent         numeric     Average standard deviation of the acceleration due to gravity in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainGravityAcceleration.Zcomponent         numeric     Average standard deviation of the acceleration due to gravity in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyAccelerationJerk.Xcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Ycomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyAccelerationJerk.Zcomponent        numeric     Average standard deviation of the derivative of the acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscope.Xcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Ycomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
TimeDomainBodyGyroscope.Zcomponent               numeric     Average standard deviation of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Xcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Ycomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
TimeDomainBodyGyroscopeJerk.Zcomponent           numeric     Average standard deviation of the derivative of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]   
TimeDomainBodyAccelerationMagnitude              numeric     Average standard deviation of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyAccelerationJerkMagnitude          numeric     Average standard deviation of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeMagnitude                 numeric     Average standard deviation of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]
TimeDomainBodyGyroscopeJerkMagnitude             numeric     Average standard deviation of the magnitude of the derivative of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Xcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Ycomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAcceleration.Zcomponent       numeric     Average standard deviation of the FFT transform of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyAccelerationJerk.Xcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the x direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Ycomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the y direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationJerk.Zcomponent   numeric     Average standard deviation of the FFT transform of the derivative of acceleration of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyGyroscope.Xcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the x direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Ycomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the y direction, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyGyroscope.Zcomponent          numeric     Average standard deviation of the FFT transform of the gyroscope reading of subjects's body in the z direction, normalized to range [-1.0, +1.0]  
FrequencyDomainBodyAccelerationMagnitude         numeric     Average standard deviation of the FFT transform of the magnitude of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyAccelerationJerkMagnitude numeric     Average standard deviation of the FFT transform of the magnitude of the derivative of subject's body acceleration, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeMagnitude        numeric     Average standard deviation of the FFT transform of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0] 
FrequencyDomainBodyBodyGyroscopeJerkMagnitude    numeric     Average standard deviation of the FFT transform of the derivative of the magnitude of subject's gyroscope reading, normalized to range [-1.0, +1.0]




