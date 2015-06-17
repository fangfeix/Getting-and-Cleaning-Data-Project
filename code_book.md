#This is the code book describing the variables used in RunAnalysis.R

###<br/>The RunAnalysis.R uses the following variables to perform the analysis:

<br/><b>test_subject</b>: subject of the test set
<br/><b>test_set</b>: test set
<br/><b>test_label</b>: activity label of the test set
<br/><b>train_subject</b>: subject of the training set
<br/><b>train_set</b>: training set
<br/><b>train_label</b>: activity label of the training set
<br/><b>features</b>: a list of all features
<br/><b>test_train</b>: the test set and the training set merged into one dataset
<br/><b>subject</b>: merged subjects for the test set and training set
<br/><b>label</b>: merged labels for the test set and the training set
<br/><b>fullset</b>: a complete dataset with everything required for running the analysis
<br/><b>meanstdnames</b>: all column names of the measurements on the mean and standard deviation for each measurement
<br/><b>extracted</b>: only the measurements on the mean and standard deviation for each measurement
<br/><b>activity</b>: a list of activities including "WALKING", "WALKING_UPSTAIRS", 
"WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING" - for linking to the activity labels in the merged dataset
