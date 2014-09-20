=Original Data

This document describes the format for "merged_tidy_data.csv" and "merged_tidy_data_avg.csv".  These files were created by combining multiple files from the following source:

* Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The exact makeup of these two files are shown in the following section.

= File: merged_tidy_data.csv

This file was created by merging the following files:

The following two feature files were concatenated together.
* train/X_train.txt 
* test/X_test.txt

The previous two files correspond to the below two files by row number.  These files identify the human subject, and are attached to the previous two files row-by-row.
* train/subject_train.txt
* test/subject_test.txt

Finally, we attach the activity file, row by row.  The activities are numeric in the following two files.  We resolve those to the descriptive activities using the file "activity_labels.txt"
* train/y_train.txt
* test/y_test.txt

The resulting file contains the following fields.  Fields that were note related to "mean" or "std" were removed.

* subject: The test subject ID that this row is for
* activity: The activity that this test subject performed (one of: laying, sitting, standing, walking, walking-downstairs, walking-upstairs)
* tbodyacc-mean-x: The following fields are all directly copied from the original source data, field names were changed to be lower case and remote ()'s
* tbodyacc-mean-y
* tbodyacc-mean-z
* tbodyacc-std-x
* tbodyacc-std-y
* tbodyacc-std-z
* tgravityacc-mean-x
* tgravityacc-mean-y
* tgravityacc-mean-z
* tgravityacc-std-x
* tgravityacc-std-y
* tgravityacc-std-z
* tbodyaccjerk-mean-x
* tbodyaccjerk-mean-y
* tbodyaccjerk-mean-z
* tbodyaccjerk-std-x
* tbodyaccjerk-std-y
* tbodyaccjerk-std-z
* tbodygyro-mean-x
* tbodygyro-mean-y
* tbodygyro-mean-z
* tbodygyro-std-x
* tbodygyro-std-y
* tbodygyro-std-z
* tbodygyrojerk-mean-x
* tbodygyrojerk-mean-y
* tbodygyrojerk-mean-z
* tbodygyrojerk-std-x
* tbodygyrojerk-std-y
* tbodygyrojerk-std-z
* tbodyaccmag-mean
* tbodyaccmag-std
* tgravityaccmag-mean
* tgravityaccmag-std
* tbodyaccjerkmag-mean
* tbodyaccjerkmag-std
* tbodygyromag-mean
* tbodygyromag-std
* tbodygyrojerkmag-mean
* tbodygyrojerkmag-std
* fbodyacc-mean-x
* fbodyacc-mean-y
* fbodyacc-mean-z
* fbodyacc-std-x
* fbodyacc-std-y
* fbodyacc-std-z
* fbodyaccjerk-mean-x
* fbodyaccjerk-mean-y
* fbodyaccjerk-mean-z
* fbodyaccjerk-std-x
* fbodyaccjerk-std-y
* fbodyaccjerk-std-z
* fbodygyro-mean-x
* fbodygyro-mean-y
* fbodygyro-mean-z
* fbodygyro-std-x
* fbodygyro-std-y
* fbodygyro-std-z
* fbodyaccmag-mean
* fbodyaccmag-std
* fbodybodyaccjerkmag-mean
* fbodybodyaccjerkmag-std
* fbodybodygyromag-mean
* fbodybodygyromag-std
* fbodybodygyrojerkmag-mean
* fbodybodygyrojerkmag-std

= File: merged_tidy_data_avg.csv

This file was created by grouping the previous file (merged_tidy_data.csv) by subject and activity.  The mean values for the remaining fields are provided.  The fields contained in this file are exactly the same as "merged_tidy_data.csv", except they are the mean values.