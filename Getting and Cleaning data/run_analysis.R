#Merges the training and the test sets to create one data set.

train_data <- read.table("train/X_train.txt")
test_data <- read.table("test/X_test.txt")
x_data <- rbind(train_data, test_data)

train_data <- read.table("train/subject_train.txt")
test_data <- read.table("test/subject_test.txt")
subj_data <- rbind(train_data, test_data)

train_data <- read.table("train/y_train.txt")
test_data <- read.table("test/y_test.txt")
activity_data <- rbind(train_data, test_data)

#Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("features.txt")
# find the features we want to use, just the "-mean()'s" and the "-std()'s"
used_features <- grep("-mean\\(\\)|-std\\(\\)",features[,2])
# strip out unused features
x_data <- x_data[,used_features]
# make all names lower case, from the used features
names(x_data) <- tolower(features[used_features, 2])
# strip out the ugly function call parens
names(x_data) <- gsub("\\(|\\)","",names(x_data))

#Uses descriptive activity names to name the activities in the data set

names(activity_data) <- "activity"
activity <- read.table("activity_labels.txt")
#Make underbars dashes
activity[, 2] = gsub("_", "-", tolower(as.character(activity[, 2])))
#Replace numbers with descriptive names
activity_data[,1] = activity[activity_data[,1],2]

#Appropriately labels the data set with descriptive activity names. 
names(subj_data) <- "subject"
tidy <- cbind(subj_data, activity_data, x_data)
write.table(tidy, "merged_tidy_data.txt", row.names=FALSE)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

numActivities <- nrow(activity)
numCols <- dim(tidy)[2]
uniqueSubjects <- unique(subj_data)[,1]
numSubjects <- length(uniqueSubjects)

data_summary <- tidy[1:(numSubjects*numActivities), ]

row = 1

#summarize by subject ant activity, 
for (s in 1:numSubjects) {
  for (a in 1:numActivities) {
    data_summary[row, 1] = uniqueSubjects[s]
    data_summary[row, 2] = activity[a, 2]
    idxs <- tidy[tidy$subject==s & tidy$activity==activity[a, 2], ]
    data_summary[row, 3:numCols] <- colMeans(idxs[, 3:numCols])
    row = row+1
  }
}
#write the final table
write.table(data_summary, "merged_tidy_data_avg.txt", row.names=FALSE)