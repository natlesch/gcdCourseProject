#TODO: uncomment line below and set working directory to where data files reside if necessary
#setwd("r/data")

#install necessary packages
#install.packages("reshape2")
library(reshape2)

#Column Naming Setup
studyColumnNames <- read.table("features.txt")
colnames(studyColumnNames)[1] <- "columnIndexOriginal"
colnames(studyColumnNames)[2] <- "columnName"
columnInclusionReference <- grepl("mean",studyColumnNames$columnName) | grepl("std",studyColumnNames$columnName) | grepl("Mean",studyColumnNames$columnName)
studyColumnNames <- cbind(studyColumnNames,columnInclusionReference)
#updateColumnIndex <- studyColumnNames$columnIndexOriginal + 2
studyColumnNames$columnIndexModified <-studyColumnNames$columnIndexOriginal + 2

rm(columnInclusionReference)


#Load and combine Data from Test Folder
test.subjectTest <- read.table("test/subject_test.txt")
test.XTest <- read.table("test/X_test.txt")
test.YTest <- read.table("test/y_test.txt")

useNames <- studyColumnNames$columnName
colnames(test.XTest) <- useNames

test.boundXY <- cbind(test.YTest,test.XTest)
test.boundXYSubject <- cbind(test.subjectTest,test.boundXY)

colnames(test.boundXYSubject)[1] <- "SubjectID"
colnames(test.boundXYSubject)[2] <- "ActivityID"

rm(test.XTest)
rm(test.YTest)
rm(test.boundXY)
rm(test.subjectTest)

#Load and Combine Data from Train Folder
train.subjectTrain <- read.table("train/subject_train.txt")
train.XTrain <- read.table("train/X_train.txt")
train.YTrain <- read.table("train/y_train.txt")

colnames(train.XTrain) <- useNames

train.boundXY <- cbind(train.YTrain,train.XTrain)
train.boundXYSubject <- cbind(train.subjectTrain,train.boundXY)

colnames(train.boundXYSubject)[1] <- "SubjectID"
colnames(train.boundXYSubject)[2] <- "ActivityID"

rm(train.XTrain)
rm(train.YTrain)
rm(train.boundXY)
rm(train.subjectTrain)

rm(useNames)

#merge to form complete dataset
#completeDataSet <- merge(test.boundXYSubject,train.boundXYSubject)
completeDataSet <- rbind(test.boundXYSubject,train.boundXYSubject)

rm(test.boundXYSubject)
rm(train.boundXYSubject)

#remove extraneous columns keeping only mean/std columns
ColumnIndexForInclusion <- studyColumnNames[(studyColumnNames$columnInclusionReference == TRUE),"columnIndexModified"]
refinedDataSet <- completeDataSet[,c(1:2,ColumnIndexForInclusion)]

rm(ColumnIndexForInclusion)
rm(studyColumnNames)
rm(completeDataSet)

#create friendly names for activities
activityLabels <- read.table("activity_labels.txt")
colnames(activityLabels)[1] = "activityID"
colnames(activityLabels)[2] = "activityLabel"

refinedDataSet <- merge(refinedDataSet,activityLabels, by.x="ActivityID",by.y="activityID")
#remove activityID (unnecessary)
refinedDataSet <- subset(refinedDataSet,select=-c(ActivityID))

rm(activityLabels)


#Create dataset for activity averages by activyt/subject
meltedData <-melt(refinedDataSet,id=c("SubjectID","activityLabel"))
averagedData <- dcast(meltedData,SubjectID + activityLabel ~ variable, mean)
newColNames <- paste(colnames(averagedData),"_AVG")
newColNames[1] <- "SubjectID"
newColNames[2]<- "ActivityLabel"
colnames(averagedData) <- newColNames

rm(meltedData)
rm(refinedDataSet)
rm(newColNames)

#write out resulting dataset to file
#write.table(averagedData, file="resultAveragedData.txt",row.name=FALSE)
averagedData
rm(averagedData)