###Data Cleaning Project###############################################
#######################################################################
library(data.table)
library(dplyr)
# Step 1: Merge the training and the test sets to create one data set.
#######################################################################
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subjecttest <- read.table("test/subject_test.txt")

xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
subjecttrain <- read.table("train/subject_train.txt")

activitylabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

X <- rbind(xtest,xtrain)
y <- rbind(ytest,ytrain)
subject <- rbind(subjecttest,subjecttrain)

print("Step 1 Done")
#######################################################################
# Step 2: Extracts only the measurements on the mean and 
#         standard deviation for each measurement. 
#######################################################################
ft <- data.table(features)
meanStdFeatures <- ft[grepl("mean\\(\\)",V2)|grepl("std\\(\\)",V2)][,V2]
msX <- X[,meanStdFeatures]
msX <- data.table(msX)

print("Step 2 Done")
#######################################################################
# Step 3: Uses descriptive activity names to name the activities 
#         in the data set; 
#######################################################################
yt <- data.table(y)
at <- data.table(activitylabels)
setnames(at,names(at),c("ANUM","ACTIVITYLABEL"))
### will change ANUM to labels in Step 5

print("Step 3 Done")
#######################################################################
# Step 4: Appropriately labels the data set with descriptive variable 
#         names. 
#######################################################################
setnames(msX,names(msX),as.character(meanStdFeatures))

print("Step 4 Done")
#######################################################################
#######################################################################
# Step 5: Create tidy dataset
#######################################################################
st <- data.table(subject)
combinedData <- msX[,SUBJECT:=subject]
combinedData <- setcolorder(combinedData,c(67,1:66))
combinedData <- combinedData[,ANUM:=yt]
cdata <- merge(combinedData,at,by="ANUM")
cdata[,ANUM:=NULL]

tdata <- group_by(cdata,SUBJECT,ACTIVITYLABEL)
tdata <- summarise_each(tdata,funs(mean))
write.table(tdata,"tidyData.txt",row.name=FALSE)
print("Step 5 Done")
#######################################################################
