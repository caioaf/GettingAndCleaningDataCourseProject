# CodeBook

## Getting and Cleaning Data Course Project

### Columns

"1" "subject": subject that did the exercise
"2" "activity": which activity subject was doing

Columns 3 to 81 contain the average for each value. As described in 'features_info.txt':

'The features selected for this database com e from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.'

The set of variables that were estimated from these signals are

"3" "tBodyAccMeanX"
"4" "tBodyAccMeanY"
"5" "tBodyAccMeanZ"
"6" "tBodyAccStdX"
"7" "tBodyAccStdY"
"8" "tBodyAccStdZ"
"9" "tGravityAccMeanX"
"10" "tGravityAccMeanY"
"11" "tGravityAccMeanZ"
"12" "tGravityAccStdX"
"13" "tGravityAccStdY"
"14" "tGravityAccStdZ"
"15" "tBodyAccJerkMeanX"
"16" "tBodyAccJerkMeanY"
"17" "tBodyAccJerkMeanZ"
"18" "tBodyAccJerkStdX"
"19" "tBodyAccJerkStdY"
"20" "tBodyAccJerkStdZ"
"21" "tBodyGyroMeanX"
"22" "tBodyGyroMeanY"
"23" "tBodyGyroMeanZ"
"24" "tBodyGyroStdX"
"25" "tBodyGyroStdY"
"26" "tBodyGyroStdZ"
"27" "tBodyGyroJerkMeanX"
"28" "tBodyGyroJerkMeanY"
"29" "tBodyGyroJerkMeanZ"
"30" "tBodyGyroJerkStdX"
"31" "tBodyGyroJerkStdY"
"32" "tBodyGyroJerkStdZ"
"33" "tBodyAccMagMean"
"34" "tBodyAccMagStd"
"35" "tGravityAccMagMean"
"36" "tGravityAccMagStd"
"37" "tBodyAccJerkMagMean"
"38" "tBodyAccJerkMagStd"
"39" "tBodyGyroMagMean"
"40" "tBodyGyroMagStd"
"41" "tBodyGyroJerkMagMean"
"42" "tBodyGyroJerkMagStd"
"43" "fBodyAccMeanX"
"44" "fBodyAccMeanY"
"45" "fBodyAccMeanZ"
"46" "fBodyAccStdX"
"47" "fBodyAccStdY"
"48" "fBodyAccStdZ"
"49" "fBodyAccMeanFreqX"
"50" "fBodyAccMeanFreqY"
"51" "fBodyAccMeanFreqZ"
"52" "fBodyAccJerkMeanX"
"53" "fBodyAccJerkMeanY"
"54" "fBodyAccJerkMeanZ"
"55" "fBodyAccJerkStdX"
"56" "fBodyAccJerkStdY"
"57" "fBodyAccJerkStdZ"
"58" "fBodyAccJerkMeanFreqX"
"59" "fBodyAccJerkMeanFreqY"
"60" "fBodyAccJerkMeanFreqZ"
"61" "fBodyGyroMeanX"
"62" "fBodyGyroMeanY"
"63" "fBodyGyroMeanZ"
"64" "fBodyGyroStdX"
"65" "fBodyGyroStdY"
"66" "fBodyGyroStdZ"
"67" "fBodyGyroMeanFreqX"
"68" "fBodyGyroMeanFreqY"
"69" "fBodyGyroMeanFreqZ"
"70" "fBodyAccMagMean"
"71" "fBodyAccMagStd"
"72" "fBodyAccMagMeanFreq"
"73" "fBodyBodyAccJerkMagMean"
"74" "fBodyBodyAccJerkMagStd"
"75" "fBodyBodyAccJerkMagMeanFreq"
"76" "fBodyBodyGyroMagMean"
"77" "fBodyBodyGyroMagStd"
"78" "fBodyBodyGyroMagMeanFreq"
"79" "fBodyBodyGyroJerkMagMean"
"80" "fBodyBodyGyroJerkMagStd"
"81" "fBodyBodyGyroJerkMagMeanFreq"
