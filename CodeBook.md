This codebook is adapted from the features.txt and features_info.txt
documents included in the UCI HAR Dataset. It describes data in this
dataset, as well as the clean data produced by the run_analysis.R
script included in this repository.

=======================
==  UCI HAR Dataset  ==
=======================

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'. 

==========================================
==  clean_activity_subject_summary.txt  ==
==========================================

The clean_activity_subject_summary.txt file is a table produced by the run_analysis.R script. It
includes the 'activity' column, corresponding to the activity being performed by the test subject,
the 'subject' column, corresponding to the ID associated with a given test subject, and one 
column corresponding to each of the mean() and std() variables discussed above. 
These latter columns have been calculated by taking the mean of their associated raw column
across both the training and test data, grouped by the 'activity' and 'subject' values in the 
associated row. The units of each of these variables, therefore, remains the same in this new 
dataset as it was in the raw data.
A full list of columns is given below:

activity : The activity which was being undertaken at the time of the measurements. This can be either "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS" or "WALKING_UPSTAIRS". 
subject : An ID number associated with the test subject undertaking the measurements. This is a number from 1 to 30.
tbodyaccmeanx : Calculated from the tBodyAcc-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccmeany : Calculated from the tBodyAcc-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccmeanz : Calculated from the tBodyAcc-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccstdx : Calculated from the tBodyAcc-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccstdy : Calculated from the tBodyAcc-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccstdz : Calculated from the tBodyAcc-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccmeanx : Calculated from the tGravityAcc-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccmeany : Calculated from the tGravityAcc-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccmeanz : Calculated from the tGravityAcc-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccstdx : Calculated from the tGravityAcc-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccstdy : Calculated from the tGravityAcc-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccstdz : Calculated from the tGravityAcc-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkmeanx : Calculated from the tBodyAccJerk-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkmeany : Calculated from the tBodyAccJerk-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkmeanz : Calculated from the tBodyAccJerk-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkstdx : Calculated from the tBodyAccJerk-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkstdy : Calculated from the tBodyAccJerk-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkstdz : Calculated from the tBodyAccJerk-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyromeanx : Calculated from the tBodyGyro-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyromeany : Calculated from the tBodyGyro-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyromeanz : Calculated from the tBodyGyro-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrostdx : Calculated from the tBodyGyro-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrostdy : Calculated from the tBodyGyro-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrostdz : Calculated from the tBodyGyro-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkmeanx : Calculated from the tBodyGyroJerk-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkmeany : Calculated from the tBodyGyroJerk-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkmeanz : Calculated from the tBodyGyroJerk-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkstdx : Calculated from the tBodyGyroJerk-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkstdy : Calculated from the tBodyGyroJerk-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkstdz : Calculated from the tBodyGyroJerk-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccmagmean : Calculated from the tBodyAccMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccmagstd : Calculated from the tBodyAccMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccmagmean : Calculated from the tGravityAccMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tgravityaccmagstd : Calculated from the tGravityAccMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkmagmean : Calculated from the tBodyAccJerkMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodyaccjerkmagstd : Calculated from the tBodyAccJerkMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyromagmean : Calculated from the tBodyGyroMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyromagstd : Calculated from the tBodyGyroMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkmagmean : Calculated from the tBodyGyroJerkMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
tbodygyrojerkmagstd : Calculated from the tBodyGyroJerkMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccmeanx : Calculated from the fBodyAcc-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccmeany : Calculated from the fBodyAcc-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccmeanz : Calculated from the fBodyAcc-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccstdx : Calculated from the fBodyAcc-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccstdy : Calculated from the fBodyAcc-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccstdz : Calculated from the fBodyAcc-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkmeanx : Calculated from the fBodyAccJerk-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkmeany : Calculated from the fBodyAccJerk-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkmeanz : Calculated from the fBodyAccJerk-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkstdx : Calculated from the fBodyAccJerk-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkstdy : Calculated from the fBodyAccJerk-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccjerkstdz : Calculated from the fBodyAccJerk-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyromeanx : Calculated from the fBodyGyro-mean()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyromeany : Calculated from the fBodyGyro-mean()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyromeanz : Calculated from the fBodyGyro-mean()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyrostdx : Calculated from the fBodyGyro-std()-X variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyrostdy : Calculated from the fBodyGyro-std()-Y variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodygyrostdz : Calculated from the fBodyGyro-std()-Z variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccmagmean : Calculated from the fBodyAccMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodyaccmagstd : Calculated from the fBodyAccMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodyaccjerkmagmean : Calculated from the fBodyBodyAccJerkMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodyaccjerkmagstd : Calculated from the fBodyBodyAccJerkMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodygyromagmean : Calculated from the fBodyBodyGyroMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodygyromagstd : Calculated from the fBodyBodyGyroMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodygyrojerkmagmean : Calculated from the fBodyBodyGyroJerkMag-mean() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.
fbodybodygyrojerkmagstd : Calculated from the fBodyBodyGyroJerkMag-std() variable in the raw data. Gives the mean of this variable for each subject/activity pair across both test and training data.