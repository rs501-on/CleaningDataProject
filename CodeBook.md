# CodeBook.md

### This data set has averages by subject and activity for the various measurements from the primary data set.

**Identifier variables:**
* subjectId: ID of individuals participating in activity. 
  * Ranges from 1 to 30.

* activityId: Type of different activities by the subject. 
  * Ranges from 1 to 6.

* activityType: Descriptive name of activity type and the value ranges are:
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

**Average of measurements:**
* Mean of individual time domain Accelerometer and Gyroscope measurements along X, Y and Z axis' . It also included Mean of the Jerk signals derived from body linear acceleration and angular velocity.
  * timeBodyAccelerometer-Mean-X
  * timeBodyAccelerometer-Mean-Y
  * timeBodyAccelerometer-Mean-Z
  * timeBodyAccelerometer-StandardDeviation-X
  * timeBodyAccelerometer-StandardDeviation-Y
  * timeBodyAccelerometer-StandardDeviation-Z
  * timeGravityAccelerometer-Mean-X
  * timeGravityAccelerometer-Mean-Y
  * timeGravityAccelerometer-Mean-Z
  * timeGravityAccelerometer-StandardDeviation-X
  * timeGravityAccelerometer-StandardDeviation-Y
  * timeGravityAccelerometer-StandardDeviation-Z
  * timeBodyAccelerometerJerk-Mean-X
  * timeBodyAccelerometerJerk-Mean-Y
  * timeBodyAccelerometerJerk-Mean-Z
  * timeBodyAccelerometerJerk-StandardDeviation-X
  * timeBodyAccelerometerJerk-StandardDeviation-Y
  * timeBodyAccelerometerJerk-StandardDeviation-Z
  * timeBodyGyroscope-Mean-X
  * timeBodyGyroscope-Mean-Y
  * timeBodyGyroscope-Mean-Z
  * timeBodyGyroscope-StandardDeviation-X
  * timeBodyGyroscope-StandardDeviation-Y
  * timeBodyGyroscope-StandardDeviation-Z

* Mean of body linear acceleration and angular velocity derived in time to obtain Jerk signals. 
  * timeBodyGyroscopeJerk-Mean-X
  * timeBodyGyroscopeJerk-Mean-Y
  * timeBodyGyroscopeJerk-Mean-Z
  * timeBodyGyroscopeJerk-StandardDeviation-X
  * timeBodyGyroscopeJerk-StandardDeviation-Y
  * timeBodyGyroscopeJerk-StandardDeviation-Z

* Mean of the magnitude of three-dimensional signals which were derived using Euclidean norm
  * timeBodyAccelerometerMagnitude-Mean
  * timeBodyAccelerometerMagnitude-StandardDeviation
  * timeGravityAccelerometerMagnitude-Mean
  * timeGravityAccelerometerMagnitude-StandardDeviation
  * timeBodyAccelerometerJerkMagnitude-Mean
  * timeBodyAccelerometerJerkMagnitude-StandardDeviation
  * timeBodyGyroscopeMagnitude-Mean
  * timeBodyGyroscopeMagnitude-StandardDeviation
  * timeBodyGyroscopeJerkMagnitude-Mean
  * timeBodyGyroscopeJerkMagnitude-StandardDeviation

* Mean of frequency domain signals obtained by applying Fast Fourier Transform
  * frequencyBodyAccelerometer-Mean-X
  * frequencyBodyAccelerometer-Mean-Y
  * frequencyBodyAccelerometer-Mean-Z
  * frequencyBodyAccelerometer-StandardDeviation-X
  * frequencyBodyAccelerometer-StandardDeviation-Y
  * frequencyBodyAccelerometer-StandardDeviation-Z
  * frequencyBodyAccelerometer-MeanFrequency-X
  * frequencyBodyAccelerometer-MeanFrequency-Y
  * frequencyBodyAccelerometer-MeanFrequency-Z
  * frequencyBodyAccelerometerJerk-Mean-X
  * frequencyBodyAccelerometerJerk-Mean-Y
  * frequencyBodyAccelerometerJerk-Mean-Z
  * frequencyBodyAccelerometerJerk-StandardDeviation-X
  * frequencyBodyAccelerometerJerk-StandardDeviation-Y
  * frequencyBodyAccelerometerJerk-StandardDeviation-Z
  * frequencyBodyAccelerometerJerk-MeanFrequency-X
  * frequencyBodyAccelerometerJerk-MeanFrequency-Y
  * frequencyBodyAccelerometerJerk-MeanFrequency-Z
  * frequencyBodyGyroscope-Mean-X
  * frequencyBodyGyroscope-Mean-Y
  * frequencyBodyGyroscope-Mean-Z
  * frequencyBodyGyroscope-StandardDeviation-X
  * frequencyBodyGyroscope-StandardDeviation-Y
  * frequencyBodyGyroscope-StandardDeviation-Z
  * frequencyBodyGyroscope-MeanFrequency-X
  * frequencyBodyGyroscope-MeanFrequency-Y
  * frequencyBodyGyroscope-MeanFrequency-Z
  * frequencyBodyAccelerometerMagnitude-Mean
  * frequencyBodyAccelerometerMagnitude-StandardDeviation
  * frequencyBodyAccelerometerMagnitude-MeanFrequency
  * frequencyBodyAccelerometerJerkMagnitude-Mean
  * frequencyBodyAccelerometerJerkMagnitude-StandardDeviation
  * frequencyBodyAccelerometerJerkMagnitude-MeanFrequency
  * frequencyBodyGyroscopeMagnitude-Mean
  * frequencyBodyGyroscopeMagnitude-StandardDeviation
  * frequencyBodyGyroscopeMagnitude-MeanFrequency
  * frequencyBodyGyroscopeJerkMagnitude-Mean
  * frequencyBodyGyroscopeJerkMagnitude-StandardDeviation
  * frequencyBodyGyroscopeJerkMagnitude-MeanFrequency

