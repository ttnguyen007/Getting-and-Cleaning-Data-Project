Variables
Each row contains, for a given subject and activity, 79 averaged signal measurements.

Identifiers

Subject identifier, integer, ranges from 1 to 30.

Activity identifier, string with 6 possible values:

WALKING: subject was walking,
WALKING_UPSTAIRS: subject was walking upstairs,
WALKING_DOWNSTAIRS: subject was walking downstairs,
SITTING: subject was sitting,
STANDING: subject was standing,
LAYING: subject was laying.

Average of measurements
All measurements are floating-point values, normalised and bounded within [-1,1].


Time-domain signals
Average time-domain body acceleration in the X, Y and Z directions:
tBodyAccMeanX,
tBodyAccMeanY,
tBodyAccMeanX.

Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
tBodyAccStdX,
tBodyAccStdY,
tBodyAccStdZ.

Average time-domain gravity acceleration in the X, Y and Z directions:
tGravityAccMeanX,
tGravityAccMeanY,
tGravityAccMeanZ.

Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
tGravityAccStdX,
tGravityAccStdY,
tGravityAccStdZ.

Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
tBodyAccJerkMeanX,
tBodyAccJerkMeanY,
tBodyAccJerkMeanZ.

Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
tBodyAccJerkStdX,
tBodyAccJerkStdY,
tBodyAccJerkStdZ.

Average time-domain body angular velocity in the X, Y and Z directions:
tBodyGyroMeanX,
tBodyGyroMeanY,
tBodyGyroMeanZ.

Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
tBodyGyroStdX,
tBodyGyroStdY,
tBodyGyroStdZ.

Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
tBodyGyroJerkMeanX,
tBodyGyroJerkMeanY,
tBodyGyroJerkMeanZ.

Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
tBodyGyroJerkStdX,
tBodyGyroJerkStdY,
tBodyGyroJerkStdZ.

Average and standard deviation of the time-domain magnitude of body acceleration:
tBodyAccMagMean,
tBodyAccMagStd.

Average and standard deviation of the time-domain magnitude of gravity acceleration:
tGravityAccMagMean,
tGravityAccMagStd.

Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
tBodyAccJerkMagMean,
tBodyAccJerkMagStd.

Average and standard deviation of the time-domain magnitude of body angular velocity:
tBodyGyroMagMean,
tBodyGyroMagStd.

Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
tBodyGyroJerkMagMean,
tBodyGyroJerkMagStd.

Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions:
fBodyAccMeanX,
fBodyAccMeanY,
fBodyAccMeanZ.

Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
fBodyAccStdX,
fBodyAccStdY,
fBodyAccStdZ.

Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
fBodyAccMeanFreqX,
fBodyAccMeanFreqY,
fBodyAccMeanFreqZ.

Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
fBodyAccJerkMeanX,
fBodyAccJerkMeanY,
fBodyAccJerkMeanZ.

Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
fBodyAccJerkStdX,
fBodyAccJerkStdY,
fBodyAccJerkStdZ.

Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
fBodyAccJerkMeanFreqX,
fBodyAccJerkMeanFreqY,
fBodyAccJerkMeanFreqZ.

Average frequency-domain body angular velocity in the X, Y and Z directions:
fBodyGyroMeanX,
fBodyGyroMeanY,
fBodyGyroMeanZ.

Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
fBodyGyroStdX,
fBodyGyroStdY,
fBodyGyroStdZ.

Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
fBodyGyroMeanFreqX,
fBodyGyroMeanFreqY,
fBodyGyroMeanFreqZ.

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
fBodyAccMagMean,
fBodyAccMagStd,
fBodyAccMagMeanFreq.

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
fBodyBodyAccJerkMagMean,
fBodyBodyAccJerkMagStd,
fBodyBodyAccJerkMagMeanFreq.
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
