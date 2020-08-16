# Code Book
Coursera Data Science Specialization Course  
Peer-graded Assignment: Getting and Cleanng Data Project
Author: Quan Nguyen

## Introduction
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Data
The project uses data from the UCI Machine Learning Repository: Human Activity Recognition and Smart Phone Data site: [Description here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Data for the project can be downloaded here: [Zip Archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This code book describes the variables, the data, and transformations that were performed to clean up the data.

## Processing

### Step 1: Merge training and test sets to create one data set
Data was downloaded from the source files and read in with names corresponding to the source files. The train and test data set had been combined together by columns before were merged into the full data set (*fullSet*).

### Step 2: Extract only measurements on mean and standard deviation
A names variable (*allNames*) that included the subject, activity, and all feature names was created. This variable was subsetted to include only the subject, activity, and variables that included mean and standard deviation (std).  This subsetted names variable was then used to extract the corresponding columns in the full data set. The result was saved as the *reducedSet*.

### Step 3: Use descriptive activities names for activity measurements
The coded values for activity were changed to the activity name. This change was accomplished by indexing the *activity_labels* variable. 

### Step 4: Appropriately Label the Dataset with Descriptive Variable Names
The *allNames* variable was subsetted in the same manner as the data. The resulting *reducedNames* variable was processed in a number of steps: capital letters were applied where appropriate, punctuation was removed, abbreviations "t" and "f" were changed to time and frequency. Finally, theses modified names were applied to the *reducedSet*.

### Step 5: Create tidy data set with average of each variable, by activity, by subject
The *reducedSet* from the end of Step 4 was grouped by subject, then by activity, and summarized so that the observations in each row were the means of the variable columns, for that subject/activity.  This was accomplished by applying the dply package verbs "group_by" and "summarise_each".  The resulting tidy data set was written to a file called "tidyDataset.txt".


## Variables

### Variables: Environment and data source
today           = today's date, later coerced to data and time  
mySystem        = description of computer hardware and software used in this analysis  
dataDescription = source project description from UCI Machine Learning Repository  
dataUrl         = URL for zip archive of source data  

### Variables: Imported files named according to sources file names
activity_labels = six activity codes and corresponding activity names  
features        = feature names for X_test, X_train  

subject_test    = test set subject number, 1-30  
X_test          = test set feature measurements  
y_test          = test set activity, coded 1-6  
  
Subject_train   = train set subject number, 1-30  
X_train         = train set feature measurements  
y_train         = train set activity, coded 1-6  
  
### Variables: Combined data sets
test            = subject_test, y_test, X_test combined, by columns  
train           = subject_train, y_train, X_train combined, by columns  
fullSet         = test, train, combined by rows  
  
### Variables: Column names
allNames        = set of names corresponding to fullSet, not yet applied  
meanStdColumns  = subject, activity, and all features with mean or standard deviation  
reducedSet      = fullSet subsetted with meanStdColumns  
reducedNames    = allNames subsetted with meanStdColumns, renamed to R conventions; applied to reducedSet  
  
### Variables: Tidy data set                  
tidyDataset     = data set with average of each variable, by activity, by subject                 





