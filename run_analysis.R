#Reading files for Course Project

library(dplyr)

activity_labels <- read.table("./GCData/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./GCData/UCI HAR Dataset/features.txt")

X_train <- read.table("./GCData/UCI HAR Dataset/train/X_train.txt") 
X_test <- read.table("./GCData/UCI HAR Dataset/test/X_test.txt") 
y_train <- read.table("./GCData/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./GCData/UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./GCData/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./GCData/UCI HAR Dataset/test/subject_test.txt")


#Merging Data in X,y(activity), subjects to perform Task1
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)


#Column Naqmes are updated
names(activity_labels) <- c("Activity","Activity_Name")
names(features) <- c("Variable","Variable_Name")
names(y) <- "Activity"
names(subject) <- "Subject"


#4. Appropriately labels the data set with descriptive variable names. 

#Updadting variable names of X with descriptive variables available in file
#features
names(X) <- features$Variable_Name



#2. Extracts only the measurements on the mean and standard deviation for 
#each measurement. 

#Selecting the Column having "mean" or "std" using grepl
X_mean_std <- X[, (grepl("mean",names(X))|grepl("std",names(X)))]
#dimension is 
dim(X_mean_std)


#3.Uses descriptive activity names to name the activities in the data set

#Using merge y and activity_labels to get the descriptive activity name.
y_wth_lbl <- merge(y,activity_labels, by.x = "Activity", by.y ="Activity")


# 1-4. Merges the training and the test sets to create one data set.

#Merging the full data will give the output of 1 to 4 tasks
data_mrg <- cbind(X_mean_std,y_wth_lbl,subject)



#5. From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.

#Applying group_by on Activity,Activity_Name(optional),Subject
# and the mean of each column to get of each variable for each activity and 
#each subject.
tidy_data <- data_mrg %>%
    group_by(Activity,Activity_Name,Subject)%>%
    summarise_each(funs(mean))



#Writing data to file
write.table(tidy_data,"./GCData/UCI HAR Dataset/tidy_data.txt",row.names = F)
