+How to Use
+==========
+
+This project takes data from "Human Activity Recognition Using Smart Phones" project.
+This project can be found at the following location.
+
+http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
+
+You should download and unzip the following file.  Make sure that your R working
+directory is set to the folder that you unziped the above file to.
+This can be done with the R command, setwd.
+
+You should now execute the "run_analysis.R" command.  This will combine the files
+contained in the above archive into the following two files.
+
+* merged_tidy_data.csv
+* merged_tidy_data_avg.csv
+
+The first file, combines the test and training data sets into a single file.  It also 
+links together files containing the human subject, activity and collected data from
+that activity.  See CodeBook.md for more information on the contents of these files.
+
+The second file contains the average values grouped by test subject and activity.