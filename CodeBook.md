Code book:

Original data was derived from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

'README.txt' explaines the detailes of data collection

Brief summary

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals calculated:

mean(): Mean value
std(): Standard deviation

The following procedures were applied to the raw data files:

Loading packages
Reading data
Merging files
Extracting measurement data
Naming activities
Setting labels
Writing raw data to the file rawdata.txt
Melting the data
Calculating means
Renaming columns
Casting melt data
Writing tidy data to the file tidydata.txt

Variables in the tidy dataset:

There are two ID variables:

"subject" "activity"

And substantial variables:

"meanmeanfastfouriertransformbodyaccjerkMEANfrequencyx" "meanmeanfastfouriertransformbodyaccjerkMEANfrequencyy" "meanmeanfastfouriertransformbodyaccjerkMEANfrequencyz" "meanmeanfastfouriertransformbodyaccjerkMEANx" "meanmeanfastfouriertransformbodyaccjerkMEANy" "meanmeanfastfouriertransformbodyaccjerkMEANz" "meanmeanfastfouriertransformbodyaccjerkSDx" "meanmeanfastfouriertransformbodyaccjerkSDy" "meanmeanfastfouriertransformbodyaccjerkSDz" "meanmeanfastfouriertransformbodyaccmagMEAN" "meanmeanfastfouriertransformbodyaccmagMEANfrequency" "meanmeanfastfouriertransformbodyaccmagSD" "meanmeanfastfouriertransformbodyaccMEANfrequencyx" "meanmeanfastfouriertransformbodyaccMEANfrequencyy" "meanmeanfastfouriertransformbodyaccMEANfrequencyz" "meanmeanfastfouriertransformbodyaccMEANx" "meanmeanfastfouriertransformbodyaccMEANy" "meanmeanfastfouriertransformbodyaccMEANz" "meanmeanfastfouriertransformbodyaccSDx" "meanmeanfastfouriertransformbodyaccSDy" "meanmeanfastfouriertransformbodyaccSDz" "meanmeanfastfouriertransformbodybodyaccjerkmagMEAN" "meanmeanfastfouriertransformbodybodyaccjerkmagMEANfrequency" "meanmeanfastfouriertransformbodybodyaccjerkmagSD" "meanmeanfastfouriertransformbodybodygyrojerkmagMEAN" "meanmeanfastfouriertransformbodybodygyrojerkmagMEANfrequency" "meanmeanfastfouriertransformbodybodygyrojerkmagSD" "meanmeanfastfouriertransformbodybodygyromagMEAN" "meanmeanfastfouriertransformbodybodygyromagMEANfrequency" "meanmeanfastfouriertransformbodybodygyromagSD" "meanmeanfastfouriertransformbodygyroMEANfrequencyx" "meanmeanfastfouriertransformbodygyroMEANfrequencyy" "meanmeanfastfouriertransformbodygyroMEANfrequencyz" "meanmeanfastfouriertransformbodygyroMEANx" "meanmeanfastfouriertransformbodygyroMEANy" "meanmeanfastfouriertransformbodygyroMEANz" "meanmeanfastfouriertransformbodygyroSDx" "meanmeanfastfouriertransformbodygyroSDy" "meanmeanfastfouriertransformbodygyroSDz" "meanmeantimebodyaccjerkmagMEAN" "meanmeantimebodyaccjerkmagSD" "meanmeantimebodyaccjerkMEANx" "meanmeantimebodyaccjerkMEANy" "meanmeantimebodyaccjerkMEANz" "meanmeantimebodyaccjerkSDx" "meanmeantimebodyaccjerkSDy" "meanmeantimebodyaccjerkSDz" "meanmeantimebodyaccmagMEAN" "meanmeantimebodyaccmagSD" "meanmeantimebodyaccMEANx" "meanmeantimebodyaccMEANy" "meanmeantimebodyaccMEANz" "meanmeantimebodyaccSDx" "meanmeantimebodyaccSDy" "meanmeantimebodyaccSDz" "meanmeantimebodygyrojerkmagMEAN" "meanmeantimebodygyrojerkmagSD" "meanmeantimebodygyrojerkMEANx" "meanmeantimebodygyrojerkMEANy" "meanmeantimebodygyrojerkMEANz" "meanmeantimebodygyrojerkSDx" "meanmeantimebodygyrojerkSDy" "meanmeantimebodygyrojerkSDz" "meanmeantimebodygyromagMEAN" "meanmeantimebodygyromagSD" "meanmeantimebodygyroMEANx" "meanmeantimebodygyroMEANy" "meanmeantimebodygyroMEANz" "meanmeantimebodygyroSDx" "meanmeantimebodygyroSDy" "meanmeantimebodygyroSDz" "meanmeantimegravityaccmagMEAN" "meanmeantimegravityaccmagSD" "meanmeantimegravityaccMEANx" "meanmeantimegravityaccMEANy" "meanmeantimegravityaccMEANz" "meanmeantimegravityaccSDx" "meanmeantimegravityaccSDy" "meanmeantimegravityaccSDz"

To run a script apply run_analysis.R in R