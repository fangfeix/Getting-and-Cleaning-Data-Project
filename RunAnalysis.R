#read all files into R

test_subject <- read.table("./Project/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
test_set <- read.table("./Project//UCI HAR Dataset/test/X_test.txt", header = FALSE)
test_label <- read.table("./Project/UCI HAR Dataset/test/y_test.txt", header = FALSE)
train_subject <- read.table("./Project//UCI HAR Dataset//train//subject_train.txt", header = FALSE)
train_set <- read.table("./Project//UCI HAR Dataset//train//X_train.txt", header = FALSE)
train_label <- read.table("./Project//UCI HAR Dataset//train//y_train.txt", header = FALSE)
features <- read.table("./Project//UCI HAR Dataset//features.txt", header = FALSE)

# 1.Merges the training and the test sets to create one data set.

test_train <- rbind(test_set,train_set)
subject <- rbind(test_subject, train_subject)
label <- rbind(test_label, train_label)

names(subject) <- "Subject"
names(label) <- "ActivityLabel"
names(test_train) <- features$V2

fullset <- cbind(test_train, subject, label)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

meanstdnames <- names(fullset)[grep("mean\\(\\)|std\\(\\)", names(fullset))]
extracted <- fullset[,meanstdnames]
str(extracted)

# 3. Uses descriptive activity names to name the activities in the data set

activity <- read.table("./Project//UCI HAR Dataset//activity_labels.txt", header = F)

        # factorize column ActivityLabel
fullset[,"ActivityLabel"] <- as.factor(fullset[,"ActivityLabel"])
        # replace the levels with descriptive activity names
levels(fullset[,"ActivityLabel"]) <- activity$V2

# 4. Appropriately labels the data set with descriptive variable names. 
names(fullset) <- gsub("^t", "time", names(fullset))
names(fullset) <- gsub("^f", "frequency", names(fullset))
names(fullset) <- gsub("Acc", "Accelerometer", names(fullset))
names(fullset) <- gsub("Gyro", "Gyroscope", names(fullset))
names(fullset) <- gsub("Mag", "Magnitude", names(fullset))
names(fullset) <- gsub("BodyBody", "Body", names(fullset))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
averagedSet <- ddply(fullset, c("Subject","ActivityLabel"), numcolwise(mean))
write.table(averagedSet, file = "tidyDataSet.txt", row.names = FALSE)

