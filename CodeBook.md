a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

This script looks for a folder UCI HAR Dataset in the current Working Directory
It creates several data frame from the reading the following txt files in below location

activity_labels.txt       -> creates DF activity_labels Factor of 6 values and the numeric representation for merging later
train\subject_train.txt   -> creates subject_train DF for merging laster
train\X_train.txt         -> creates X_train DF for merging later
train\y_train.txt         -> creates y_train DF for merging later
test\subject_test.txt 
test\X_test.txt 
test\y_test.txt


It merges the data from the above 7 files and outputs two data files

dataset1.txt              -> creates DT which is merge subject_train, X_train, and y_trainsubject, activity, mean and standard deviation are taken 10299 observations from both the train and test sets 
dataset2.txt which is subject, activity, mean is taken by unique combinations of subject and activity
