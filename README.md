This script looks for a folder UCI HAR Dataset in the current Working Directory
It creates a data frame from the following files in that location

activity_labels.txt
train\subject_train.txt
train\X_train.txt
train\y_train.txt
test\subject_test.txt
test\X_test.txt
test\y_test.txt

It merges the data from the above 7 files and outputs two data files

dataset1.txt which is set, subject, activity, mean and standard deviation are taken 10299 observations from both the train and test sets
dataset2.txt which is subject, activity, mean is taken by unique combinations of subject and activity 
