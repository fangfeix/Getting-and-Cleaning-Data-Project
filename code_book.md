#This is the code book describing the variables used in RunAnalysis.R

##<br/>The RunAnalysis.R uses the following variables to perform the analysis:

<br/><b>test_subject</b>: subject of the test set
<br/><b>test_set</b>: test set
<br/><b>test_label</b>: activity label of the test set
<br/><b>train_subject</b>: subject of the training set
<br/><b>train_set</b>: training set
<br/><b>train_label</b>: activity label of the training set
<br/><b>features</b>: 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
<br/><b>test_train</b>: the test set and the training set merged into one dataset
<br/><b>subject</b>: merged subject for the test set and training set
<br/><b>label</b>: merged label for the test set and the training set
<br/><b>fullset</b>: a complete dataset with everything required for completing the course project
<br/><b>meanstdnames</b>: all column names of the measurements on the mean and standard deviation for each measurement
<br/><b>extracted</b>: only the measurements on the mean and standard deviation for each measurement
<br/><b>activity</b>: a list of activities including "WALKING", "WALKING_UPSTAIRS", 
"WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING" - for linking to the activity label in the complete dataset
