# Getting-and-Cleaning-Data-Project

###Course Project Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###The following files in the zip package will be used(loaded) in the analysis:
<br/><b>'features.txt'</b>: List of all features.
<br/><b>'activity_labels.txt'</b>: Links the class labels with their activity name.
<br/><b>'train/X_train.txt'</b>: Training set.
<br/><b>'train/y_train.txt'</b>: Training labels.
<br/><b>'test/X_test.txt'</b>: Test set.
<br/><b>'test/y_test.txt'</b>: Test labels.
<br/><b>'train/subject_train.txt'</b>: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
<br/><b>'test/subject_test.txt'</b>: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

###The RunAnalysis.R does the following: 
<br/>1. Merges the training and the test sets to create one data set.
<br/>2. Extracts only the measurements on the mean and standard deviation for each measurement. 
<br/>3. Uses descriptive activity names to name the activities in the data set
<br/>4. Appropriately labels the data set with descriptive variable names. 
<br/>5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

