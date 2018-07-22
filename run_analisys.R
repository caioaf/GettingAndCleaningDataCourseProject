##########################################
#                                        #
# Coursera - Data Science Specialization #
# Data Cleansing - Caio Alves            #
#                                        #
##########################################
library(dplyr)

# Reads data
# (1) Merges train and test data
# (4) Label columns using information provided in dataset
subTest <- read.table("test/subject_test.txt", header = FALSE, col.names = c("subject"))
subTrain <- read.table("train/subject_train.txt", header = FALSE, col.names = c("subject"))
sub <- rbind(subTest, subTrain)

xLabels <- read.table("features.txt", col.names = c("id", "label"))
xTest <- read.table("test/x_test.txt", header = FALSE, col.names = xLabels$label)
xTrain <- read.table("train/x_train.txt", header = FALSE, col.names = xLabels$label)
x <- rbind(xTest, xTrain)

yTest <- read.csv("test/y_test.txt", header = FALSE, col.names = c("activity"))
yTrain <- read.csv("train/y_train.txt", header = FALSE, col.names = c("activity"))
y <- rbind(yTrain, yTest)
actinfo <- read.csv("activity_labels.txt", header = FALSE, sep = " ", col.names = c("id", "activity"))
actinfo$activity <- as.character(actinfo$activity)

# (2) Extracting only the measurements on the mean and standard deviation for each measurement.
filteredCols <-  grep(".*mean.*|.*std.*", colnames(x))
x <- x[,filteredCols]

# (4) Improving label names for X
colnames(x) <- gsub("[.]", "", colnames(x))
colnames(x) <- gsub("mean", "Mean", colnames(x))
colnames(x) <- gsub("std", "Std", colnames(x))

# (3) Using descriptive activity names to name the activities in the data set
for (i in 1:6) {
    y$activity[y$activity == i] <- actinfo[i,2]
}

# (1) Binding information in a centralized data.frame
dataset <- cbind(sub, x, y)

# (5) Creating independent tidy data set with the average of each variable for each activity and each subject.
tidy <- dataset %>% group_by(subject, activity) %>% summarise_all(funs(mean))
write.table(tidy, "tidy.txt")
