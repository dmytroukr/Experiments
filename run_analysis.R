setwd('C:/Samsung data')
## Reading all files and checking their structure
subject_test <- read.table('./test/subject_test.txt')
str(subject_test)
subject_train <- read.table('./train/subject_train.txt')
str(subject_train)
y_test <- read.table('./test/y_test.txt')
str(y_test)
y_train <- read.table('./train/y_train.txt')
str(y_train)
X_test <- read.table('./test/X_test.txt')
str(X_test)
X_train <- read.table('./train/X_train.txt')
str(X_train)
## Merging data frames (adding observations) + checking their structure
subjects <- rbind(subject_test, subject_train)
str(subjects)
attrs <- rbind(y_test, y_train)
str(attrs)
activities <- rbind(X_test, X_train)
str(activities)
## Merging data frames (linking IDs to observations) + checking their structure
ids <- cbind(subjects, attrs)
str(ids)
total <- cbind(ids, activities)
str(total)
summarize_each(total)
## Installing required packages
install.packages("data.table")
install.packages("reshape2")
install.packages("dplyr")
install.packages("tidyr")
## Loading required packages
library(data.table)
library(reshape2)
library(dplyr)
library(tidyr)
## Adding data names + checking the resulting structure
featureslabels <- read.table('./features.txt')
names(total) <- c("subject","activity",as.character(featureslabels[,2]))
str(total)
## Extracting only means and standard deviations + checking the outcomes
total <- total[,c(1, 2, grep("mean|std",names(total)))]
str(total)
## Attaching activities names + checking the resulting structure
activities <- read.table('./activity_labels.txt')
activities[,2] <- tolower(activities[,2])
activities[,2] <- gsub("_", "", activities[,2])
total$activity <- activities[total$activity, 2]
str(total)
## Renaming with descriptive variable names + checking the resulting structure
names(total) <- tolower(names(total))
names(total) <- gsub("-", "", names(total))
names(total) <- sub ("\\(\\)", "", names(total))
names(total)<-gsub("std()", "SD", names(total))
names(total)<-gsub("mean()", "MEAN", names(total))
names(total)<-gsub("^t", "time", names(total))
names(total)<-gsub("^f", "fastfouriertransform", names(total))
names(total)<-gsub("freq", "frequency", names(total))
names(total)<-gsub("Acc", "Accelerometer", names(total))
names(total)<-gsub("Gyro", "Gyroscope", names(total))
names(total)<-gsub("Mag", "Magnitude", names(total))
names(total)<-gsub("BodyBody", "Body", names(total))
str(total)
## Writing raw data to a file
write.table(total, "rawdata.txt", row.name=FALSE)
### Melting the data + checking the resulting structure
totalmelt <- melt(total, id = c("subject", "activity"))
str(totalmelt)
### Calculating means + checking the resulting structure
totalmelt <- aggregate(totalmelt$value, 
by = list(subject = totalmelt$subject,
activity = totalmelt$activity,
variable = totalmelt$variable),
FUN = mean)
str(totalmelt)
### Renaming columns + checking the resulting structure
totalmelt <- rename(totalmelt, mean = x)
str(totalmelt)
### Casting melt data + checking the resulting structure
totalcast <- dcast(totalmelt, formula = subject + activity ~ variable, value.var = "mean")
str(totalcast)
## Writing data to a file
write.table(totalcast, "tidydata.txt", row.name=FALSE)