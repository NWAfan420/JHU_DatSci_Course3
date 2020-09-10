# Run_Analysis.R
################

# Code to extract testing and training data from the UCI HAR
# wearable tech database, and clean this data to produce a list
# of means for each mean/std variable per test subject per
# activity.

###################################################################
###################################################################

# 1) Merge the training and test sets to create one data set.

# Read in test data, test activity labels and test subjects:
test_data <- read.table('UCI HAR Dataset/test/X_test.txt')
test_labels <- read.table('UCI HAR Dataset/test/y_test.txt')
names(test_labels) <- 'activitylabel'
test_subjects <- read.table('UCI HAR Dataset/test/subject_test.txt')
names(test_subjects) <- 'subject'

# Combine the above three dataframes to one master test dataframe
test_master <- cbind(labels=test_labels,subjects=test_subjects,test_data)

# Read in train data, train activity labels and train subjects:
train_data <- read.table('UCI HAR Dataset/train/X_train.txt')
train_labels <- read.table('UCI HAR Dataset/train/y_train.txt')
names(train_labels) <- 'activitylabel'
train_subjects <- read.table('UCI HAR Dataset/train/subject_train.txt')
names(train_subjects) <- 'subject'

# Combine the above three dataframes to one master train dataframe
train_master <- cbind(train_labels,train_subjects,train_data)

# Append the train_master and test_master dataframes.
full_master <- rbind(train_master,test_master)

# Delete unused data to save space.
remove("test_data", "test_labels", "test_subjects",
       "train_data", "train_labels", "train_subjects",
       "test_master", "train_master")

###################################################################

# 2) Extract only the measurements on the mean and
#    standard deviation for each measurement.

# Read column names from features.txt:
columns <- read.table('UCI HAR Dataset/features.txt',
                      col.names = c('colnum','colname'))

# Filter column names for mean and standard deviation
columns_filtered <- columns[grep('-mean\\(\\)|-std\\(\\)',
                                 columns$colname),]

# Add current variable names (i.e. V1, V2...) to columns list.
columns_filtered$curr_names <- paste('V',
                                     columns_filtered$colnum,
                                     sep = '')

# Use these variable names to filter the full_master
# dataframe:
filtered_master <- full_master[c('activitylabel',
                                 'subject',
                                 columns_filtered$curr_names)]

# Delete unused data to save space.
remove("full_master", "columns")

###################################################################

# 3) Use descriptive activity names to name the activities 
#    in the data set.

# Read in the activity_labels.txt file to access
# the actual activities from their ID numbers
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt',
                              col.names = c('activitylabel',
                                            'activity'))

# Merge the master dataframe with the activity names
# by their shared variable, 'activitylabel'.
filtered_master <- merge(filtered_master,
                         activity_labels)

###################################################################

# 4) Appropriately label the data set with descriptive 
#    variable names.

# Use the colname field from the columns_filtered
# dataframe we created earlier to create a list of new desired
# column names.
new_names <- c(c('activitylabel',
                 'subject',
                 columns_filtered$colname,
                 'activity'))

# Convert these names to lowercase, and extract any 
# strange characters [i.e. () and -].
new_names <- tolower(gsub("\\(|\\)|\\-","",new_names))

# Add new variable names to the dataframe.
names(filtered_master) <- new_names

# Delete unused data to save space.
remove("activity_labels", "columns_filtered",
       "new_names")

###################################################################

# 5) From the data set in step (4), create a second, 
#    independent tidy data set with the average of each
#    variable for each activity and each subject.

# Firstly, rearrange the dataframe and set activity and subject
# to factors. Do not include activitylabel.
final_master <- filtered_master[c(69,2:68)]
final_master$activity <- factor(final_master$activity)
final_master$subject <- factor(final_master$subject)

# Use aggregate() to find the mean of each variable
# by activity/subject.
clean_df <- aggregate(final_master[3:68],
                      final_master[1:2],
                      mean)

# Sort the data to make the output a little tidier.
clean_df <- clean_df[order(clean_df$activity,clean_df$subject),]

# Delete unused data to save space.
remove("filtered_master", "final_master")

# Write the final clean_df to a permanent file:
write.table(clean_df,
            file = "Data/clean_activity_subject_summary.txt",
            row.names = FALSE)
