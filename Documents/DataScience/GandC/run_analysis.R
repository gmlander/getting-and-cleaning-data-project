# READ each of the 8 txt files into individual data.frames

  #Training datasets
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

  #Testing datasets
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

  #Labelling datasets
features <- read.table("UCI HAR Dataset/features.txt", colClasses = c("character"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityId", "Activity"))


#--------------------------------------------------------
# 1

# MERGE training and test data.frames into one data.frame

# add subject ID and activity ID to xTrain and xTest, store results as trainData and testData
trainData <- cbind(subjectTrain, yTrain, xTrain)
testData <- cbind(subjectTest, yTest, xTest)

# merge train data and test data.
data <- rbind(trainData, testData)

# add column labels from second column of features data.frame
names(data) <- c("SubjectId", "ActivityId", features[,2])


#----------------------------------------------------------------
# 2

# EXTRACT mean and standard deviation measurements from data by subsetting
# data by columns 1 & 2 (SubjectId and ActivityId) plus any columns with std
# or mean in its name.

meanSD <- data[,c(1,2,grep("std|mean", names(data), value = FALSE))]


#----------------------------------------------------------------
# 3

# NAMES activities in the dataset with descriptive activity names. Uses
# the activities data.frame to create factor levels and labels for meanSD$ActivityId.
meanSD$ActivityId <- factor(meanSD$ActivityId, levels = activities$ActivityId, labels=activities$Activity)

#--------------------------------------------------------------------
# 4.

# LABELS the data with descriptive variable names:

# mean() --> Mean
names(meanSD) <- gsub("mean\\(\\)", "Mean", names(meanSD))

# std() --> SD
names(meanSD) <- gsub("std\\(\\)", "SD", names(meanSD))

# t --> Time
names(meanSD) <- gsub("^t", "Time", names(meanSD))

# f --> Frequency
names(meanSD) <- gsub("^f", "Frequency", names(meanSD))

# "-" --> "_"
names(meanSD) <- gsub("-", "_", names(meanSD))


#-----------------------------------------------------------------------
# 5
# CREATE tidy data set with the average of each variable for each activity and each subject.
# use ddply() to take the mean of each variable grouped by SubjectId and ActivityId.
# Use numcolwise(mean) as FUN arg of ddply so that only numeric variables are averaged.

library(plyr)

meanSD_grouped <- ddply(meanSD, .(SubjectId, ActivityId), numcolwise(mean))
names(meanSD_grouped)[-c(1,2)] <- paste0("Mean_", names(meanSD_grouped)[-c(1,2)])

# Write meanSD_grouped to tidy_grouped_means.txt.
write.table(meanSD_grouped, file = "tidy_grouped_means.txt")

# Optional -- 1: Write variable names for code book use.
# writeLines(names(meanSD_grouped), "codeNames.txt")

# Optional -- 2:
# - Inspect tidy_grouped_means.txt
# - force self to open eyes when looking
# - confirm file not jumbled dog doo
# - Success! Breathe sigh, drink beer.