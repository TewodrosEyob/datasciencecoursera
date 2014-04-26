Getting-and-Cleaning-Data
=========================

This README.md file explains how the run_analysis.R script works and includes most of the code from run-analysis.R

The CodeBook.md provides information on the following:

    Variables
    Data
    Transformations and other work
    Details of the run_analysis.R script

run_analysis.R script
 
 ##This run_analysis.R script combines several components of accelerometer
##data into 1 data set and well accomplishes the five requirements of the assignment if done according to the following instruction. 
##Instruction on how to use the script:
## Guide1. Download the data from the assignment home page         
## Guide2. Manually extract zip file contents
## Guide3. Set your working directory in a folder that contains the “UCI HAR Dataset“ folder(e.g "setwd("K:/Coursera/Getting data cleaning/getdata_projectfiles_UCI HAR Dataset")"(THIS ##IS CRUCIAL!!!)
## Guide4. The folder scheme used here are for WINDOWS OS
## 

##        
## Scripts to answer Q1(Reading, labeling and merging of appropriate datasets)
##
xtest = read.table(".\\UCI HAR Dataset\\test\\X_test.txt") ##Reading the respective data set
ytest = read.table(".\\UCI HAR Dataset\\test\\y_test.txt")##Reading the respective data set  		
xtrain = read.table(".\\UCI HAR Dataset\\train\\X_train.txt")##Reading the respective data set
ytrain = read.table(".\\UCI HAR Dataset\\train\\y_train.txt")##Reading the respective data set
subjectTest = read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")##The same as above
subjectTrain = read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")## The same as above
features = read.table(".\\UCI HAR Dataset\\features.txt",stringsAsFactors = FALSE)## The same as above
activityLabels = read.table(".\\UCI HAR Dataset\\activity_labels.txt", stringsAsFactors=FALSE)##The ##same as above
colnames(xtest)  =  features[,2] ##This is to assign variable names 
colnames(xtrain)  =  features[,2]  ##This is to assign variable names
colnames(ytest)  =  "activityCode"   ##This is to assign variable names
colnames(ytrain)  =  "activityCode"   ##This is to assign variable names
colnames(subjectTest)  =  "subject"    ##This is to assign variable names
colnames(subjectTrain)  =  "subject"    ##This is to assign variable names
testTable = cbind(subjectTest, ytest, xtest) ##This is to combine the test datasets
trainTable = cbind(subjectTrain, ytrain, xtrain) ##This is to combine the train datasets
allTable = rbind(testTable, trainTable)           ## This to Combine the Test and Train Datasets

##  
##      
## Scripts to answer Q2(Extracting and organizing variables positing mean and sd of ##measurements: I used the ## Pattern Matching and Replacement command “grep”)
##
##

meansv<-grep("mean\\(",names(allTable)) ##This is to extract the mean variables
stdv<-grep("std\\(",names(allTable))       ## This to extract the sd variables
extractv<-c(1, 2, meansv, stdv)             ##This is vectorizing them
means.std.df<-allTable[,extractv]            ##This is subsetting the variables and vectoring
##
##
##Scripts to answer Q3(Creating descriptive activity names to name the activities in the data set) 
## 
##     
activity = means.std.df[,2] ##This is to create a column variable for the activitycodes
means.std.a.df = cbind(means.std.df,activity)  ##this is to insert it
for (i in 1:length(means.std.df[,2])){
means.std.a.df$activity[i] = activityLabels[means.std.a.df$activityCode[i],"V2"] }##This is to label names for respective activitycodes in the newly created activity variable using the looping function “for”
  
##
##
##
## Scripts to answer Q4(Appropriately labeling the dataset with column names)
## 
##
colnames(means.std.a.df) = c("Subject",  "Activity Code",  "Time Body Acceleration Mean X",  "Time Body Acceleration Mean Y",  "Time Body Acceleration Mean Z",  "Time Gravity Acceleration Mean X",  "Time Gravity Acceleration Mean Y",  "Time Gravity Acceleration Mean Z",  "Time Body Acceleration Jerk Mean X",  "Time Body Acceleration Jerk Mean Y",  "Time Body Acceleration Jerk Mean Z",  "Time Body Gyro Mean X",  "Time Body Gyro Mean Y",  "Time Body Gyro Mean Z",  "Time Body Gyro Jerk Mean X",  "Time Body Gyro Jerk Mean Y",  "Time Body Gyro Jerk Mean Z",  "Time Body Acceleration Magnitude Mean",  "Time Gravity Acceleration Magnitude Mean",  "Time Acceleration Jerk Magnitude Mean",  "Time Body Gyro Magnitude Mean",  "Time Body Gyro Jerk Magnitude Mean",  "Frequency Body Acceleration Mean X",  "Frequency Body Acceleration Mean Y",  "Frequency Body Acceleration Mean Z",  "Frequency Body Acceleration Jerk Mean X",  "Frequency Body Acceleration Jerk Mean Y",  "Frequency Body Acceleration Jerk Mean Z",  "Frequency Body Gyro Mean X",  "Frequency Body Gyro Mean Y",  "Frequency Body Gyro Mean Z",  "Frequency Body Acceleration Magnitude Mean",  "Frequency Body Acceleration Jerk Magnitude Mean",  "Frequency Body Gyro Magnitude Mean",  "Frequency Body Gyro Jerk Magnitude Mean",  "Time Body Acceleration Standard Deviation X",  "Time Body Acceleration Standard Deviation Y",  "Time Body Acceleration Standard Deviation Z",  "Time Gravity Acceleration Standard Deviation X",  "Time Gravity Acceleration Standard Deviation Y",  "Time Gravity Acceleration Standard Deviation Z",  "Time Body Acceleration Jerk Standard Deviation X",  "Time Body Acceleration Jerk Standard Deviation Y",  "Time Body Acceleration Jerk Standard Deviation Z",  "Time Body Gyro Standard Deviation X",  "Time Body Gyro Standard Deviation Y",  "Time Body Gyro Standard Deviation Z",  "Time Body Gyro Jerk Standard Deviation X",  "Time Body Gyro Jerk Standard Deviation Y",  "Time Body Gyro Jerk Standard Deviation Z",  "Time Body Acceleration Magnitude Standard Deviation",  "Time Gravity Acceleration Magnitude Standard Deviation",  "Time Acceleration Jerk Magnitude Standard Deviation",  "Time Body Gyro Magnitude Standard Deviation",  "Time Body Gyro Jerk Magnitude Standard Deviation",  "Frequency Body Acceleration Standard Deviation X",  "Frequency Body Acceleration Standard Deviation Y",  "Frequency Body Acceleration Standard Deviation Z",  "Frequency Body Acceleration Jerk Standard Deviation X",  "Frequency Body Acceleration Jerk Standard Deviation Y",  "Frequency Body Acceleration Jerk Standard Deviation Z",  "Frequency Body Gyro Standard Deviation X",  "Frequency Body Gyro Standard Deviation Y",  "Frequency Body Gyro Standard Deviation Z",  "Frequency Body Acceleration Magnitude Standard Deviation",  "Frequency Body Acceleration Jerk Magnitude Standard Deviation",  "Frequency Body Gyro Magnitude Standard Deviation",  "Frequency Body Gyro Jerk Magnitude Standard Deviation",  "Activity")
          
            
##
##
## Scripts to answer Q5(Averaging of each of the 66 variables by activity and subjects and saving ##the second tidy dataset ) 
##
##				
split.means.std.a.df = split(means.std.a.df[,3:68], 
list(means.std.a.df$Subject, means.std.a.df$Activity))##This is to Split data by each variable
avg.by.subject.and.activity = sapply(split.means.std.a.df,colMeans)##This is to calculate means
Average.of.all.variables.for.each.subject.and.activity.combination = t(avg.by.subject.and.activity)##This is to transpose the data set for visibility
write.table(Average.of.all.variables.for.each.subject.and.activity.combination, file = "Average.of.all.variables.for.each.subject.and.activity.combination.txt")##This ##is to create and save the second tidy data set
            
            
            
