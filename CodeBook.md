This script looks for a folder UCI HAR Dataset in the current Working Directory
The script creates several data frame from the reading the following txt files in below location

activity_labels.txt       -> creates DF activity_labels Factor of 6 values and the numeric representation for merging later
train\subject_train.txt   -> creates subject_train DF for merging laster
train\X_train.txt         -> creates X_train DF for merging later
train\y_train.txt         -> creates y_train DF for merging later
test\subject_test.txt     -> creates subject_test DF for merging laster
test\X_test.txt           -> creates X_test DF for merging later
test\y_test.txt           -> creates y_test DF for merging later 


It merges the data from the above 7 files and outputs two data files

dataset1.txt              -> DT creating from merging two helper DF test and train, which in turn was created from the above 7 DF mentioned above. Final DT is a tidy dataset with subject, activity, mean and standard deviation are taken 10299 observations from both the train and test sets 
dataset2.txt              -> This DT is created from the above DT which takes the mean of all 10299 observations but summarized by unique subject and activity combinations.
