library(reshape2)
setwd("C:\\Users\\Feder\\Desktop\\UCI HAR Dataset")

# STEP 1. read and merge data sets.

stest <- read.table("test//subject_test.txt")
xtest <- read.table("test//X_test.txt")
ytest <- read.table("test//y_test.txt")

strain <- read.table("train//subject_train.txt")
xtrain <- read.table("train//X_train.txt")
ytrain <- read.table("train//y_train.txt")

names(strain) <- "subjectID"
names(stest) <- "subjectID"

fnames <- read.table("features.txt")
names(xtest) <- fnames$V2
names(xtrain) <- fnames$V2

names(ytest) <- "activity"
names(ytrain) <- "activity"

dstest <- cbind(stest, ytest, xtest)
dstrain <- cbind(strain, ytrain, xtrain)
dscombine <- rbind(dstrain, dstest)


# STEP 2. Extract mean and standard dev.

cols_mean_std <- grepl("mean\\(\\)", names(dscombine)) | grepl("std\\(\\)", names(dscombine))
cols_mean_std[1:2] <- TRUE
dscombine <- dscombine[, cols_mean_std]


# STEP 3) Use descriptive activity names. STEP 4) labels the data set  

dscombine$activity <- factor(dscombine$activity, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
write.table(dscombine, "dscombine.txt", row.name=FALSE)

# STEP 5. Create a new tidy data set with the average of each variable...

m <- melt(dscombine, id=c("subjectID","activity"))
dstidy <- dcast(m, subjectID+activity ~ variable, mean)
write.table(dstidy, "dstidy.txt", row.name=FALSE)