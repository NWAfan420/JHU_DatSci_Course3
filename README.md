# JHU_DatSci_Course3
Contains solutions for the John Hopkins University 'Getting and Cleaning Data' course project on Coursera.

This repository includes the following documents:
- run_analysis.R: The R script used to transform the UCI HAR dataset into
  a clean dataset, summarizing mean/std variables for each test subject
  and each activity.
- README.md: The document you are currently reading. This should describe the
  contents of the repository and give a descrpition of the data manipulation
  process contained in the run_analysis.R file.
- CodeBook.md: A text document, which should provide an updated version of 
  the codebook for the original data (i.e. the features_info.txt and
  features.txt documents) with information about the new variables, and how
  these were calculated.
  
The run_analysis.R script performs the following steps to process the 
UCI HAR datasets:
1) The subject_train.txt, X_train.txt and y_train.txt files are read
   into R and combined to form a training dataframe with all included
   variables, as well as the test subject and activity.
   The same process is applied to the test versions of these files.
   The training and test dataframes are then appended to create a master
   dataframe, containing all variables and observations.
2) This dataframe is filtered to only include the mean() and std()
   of each measurement.
3) The mean of each of these variables is calculated, after grouping by
   test subject and activity. The result is the final clean dataframe.
