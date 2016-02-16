###From UCI HAR Dataset's README.txt

> Human Activity Recognition Using Smartphones Dataset  
> Version 1.0  
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
> Smartlab - Non Linear Complex Systems Laboratory  
> DITEN - Università degli Studi di Genova.  
> Via Opera Pia 11A, I-16145, Genoa, Italy.  
> <activityrecognition@smartlab.ws>  
> www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

For each record it is provided:
===============================

-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

-   'README.txt'

-   'features\_info.txt': Shows information about the variables used on
    the feature vector.

-   'features.txt': List of all features.

-   'activity\_labels.txt': Links the class labels with their activity
    name.

-   'train/X\_train.txt': Training set.

-   'train/y\_train.txt': Training labels.

-   'test/X\_test.txt': Test set.

-   'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their
descriptions are equivalent.

-   'train/subject\_train.txt': Each row identifies the subject who
    performed the activity for each window sample. Its range is from 1
    to 30.

-   'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units 'g'. Every row shows a 128 element vector. The same
    description applies for the 'total\_acc\_x\_train.txt' and
    'total\_acc\_z\_train.txt' files for the Y and Z axis.

-   'train/Inertial Signals/body\_acc\_x\_train.txt': The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.

-   'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

Notes:
======

-   Features are normalized and bounded within [-1,1].
-   Each feature vector is a row on the text file.

For more information about this dataset contact:
<activityrecognition@smartlab.ws>

License:
========

Use of this dataset in publications must be acknowledged by referencing
the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge
L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its
use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012.

Feature Selection
=================

*This section is from UCI HAR Dataset's features\_info.txt*

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix 't' to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value std(): Standard deviation mad(): Median absolute
deviation max(): Largest value in array min(): Smallest value in array
sma(): Signal magnitude area energy(): Energy measure. Sum of the
squares divided by the number of values. iqr(): Interquartile range
entropy(): Signal entropy arCoeff(): Autorregresion coefficients with
Burg order equal to 4 correlation(): correlation coefficient between two
signals maxInds(): index of the frequency component with largest
magnitude meanFreq(): Weighted average of the frequency components to
obtain a mean frequency skewness(): skewness of the frequency domain
signal kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the
FFT of each window. angle(): Angle between to vectors.

**NOTE**: Unit measurements were normalized and bounded within [-1,1]
and are expressed in standard deviations of the distribution.

Variable Descriptions and Transformations
=========================================

Of the above estimators, only those with 'mean' or 'std' in their
variable names were selected from the original raw data. Those variable
names were then cosmetically altered for readability. Columns were then
grouped by SubjectId and ActivityId, then averaged to create the final
variables of "tidy\_grouped\_means.txt". The final tidy dataset contains
180 observations (6 activities x 30 subjects) and 81 variables (2
identifier variables and 79 summary variables).

#### Identifier variables:

-   SubjectId : integer variable identifying each unique subject (30
    distinct values).
-   ActivityId factor variable identify each of the 6 activities that
    were tracked (6 levels)

#### Summary variables (discrete variables expressed as floating numerics)

-   Mean\_TimeBodyAcc\_Mean\_X
-   Mean\_TimeBodyAcc\_Mean\_Y
-   Mean\_TimeBodyAcc\_Mean\_Z
-   Mean\_TimeBodyAcc\_SD\_X
-   Mean\_TimeBodyAcc\_SD\_Y
-   Mean\_TimeBodyAcc\_SD\_Z
-   Mean\_TimeGravityAcc\_Mean\_X
-   Mean\_TimeGravityAcc\_Mean\_Y
-   Mean\_TimeGravityAcc\_Mean\_Z
-   Mean\_TimeGravityAcc\_SD\_X
-   Mean\_TimeGravityAcc\_SD\_Y
-   Mean\_TimeGravityAcc\_SD\_Z
-   Mean\_TimeBodyAccJerk\_Mean\_X
-   Mean\_TimeBodyAccJerk\_Mean\_Y
-   Mean\_TimeBodyAccJerk\_Mean\_Z
-   Mean\_TimeBodyAccJerk\_SD\_X
-   Mean\_TimeBodyAccJerk\_SD\_Y
-   Mean\_TimeBodyAccJerk\_SD\_Z
-   Mean\_TimeBodyGyro\_Mean\_X
-   Mean\_TimeBodyGyro\_Mean\_Y
-   Mean\_TimeBodyGyro\_Mean\_Z
-   Mean\_TimeBodyGyro\_SD\_X
-   Mean\_TimeBodyGyro\_SD\_Y
-   Mean\_TimeBodyGyro\_SD\_Z
-   Mean\_TimeBodyGyroJerk\_Mean\_X
-   Mean\_TimeBodyGyroJerk\_Mean\_Y
-   Mean\_TimeBodyGyroJerk\_Mean\_Z
-   Mean\_TimeBodyGyroJerk\_SD\_X
-   Mean\_TimeBodyGyroJerk\_SD\_Y
-   Mean\_TimeBodyGyroJerk\_SD\_Z
-   Mean\_TimeBodyAccMag\_Mean
-   Mean\_TimeBodyAccMag\_SD
-   Mean\_TimeGravityAccMag\_Mean
-   Mean\_TimeGravityAccMag\_SD
-   Mean\_TimeBodyAccJerkMag\_Mean
-   Mean\_TimeBodyAccJerkMag\_SD
-   Mean\_TimeBodyGyroMag\_Mean
-   Mean\_TimeBodyGyroMag\_SD
-   Mean\_TimeBodyGyroJerkMag\_Mean
-   Mean\_TimeBodyGyroJerkMag\_SD
-   Mean\_FrequencyBodyAcc\_Mean\_X
-   Mean\_FrequencyBodyAcc\_Mean\_Y
-   Mean\_FrequencyBodyAcc\_Mean\_Z
-   Mean\_FrequencyBodyAcc\_SD\_X
-   Mean\_FrequencyBodyAcc\_SD\_Y
-   Mean\_FrequencyBodyAcc\_SD\_Z
-   Mean\_FrequencyBodyAcc\_meanFreq()\_X
-   Mean\_FrequencyBodyAcc\_meanFreq()\_Y
-   Mean\_FrequencyBodyAcc\_meanFreq()\_Z
-   Mean\_FrequencyBodyAccJerk\_Mean\_X
-   Mean\_FrequencyBodyAccJerk\_Mean\_Y
-   Mean\_FrequencyBodyAccJerk\_Mean\_Z
-   Mean\_FrequencyBodyAccJerk\_SD\_X
-   Mean\_FrequencyBodyAccJerk\_SD\_Y
-   Mean\_FrequencyBodyAccJerk\_SD\_Z
-   Mean\_FrequencyBodyAccJerk\_meanFreq()\_X
-   Mean\_FrequencyBodyAccJerk\_meanFreq()\_Y
-   Mean\_FrequencyBodyAccJerk\_meanFreq()\_Z
-   Mean\_FrequencyBodyGyro\_Mean\_X
-   Mean\_FrequencyBodyGyro\_Mean\_Y
-   Mean\_FrequencyBodyGyro\_Mean\_Z
-   Mean\_FrequencyBodyGyro\_SD\_X
-   Mean\_FrequencyBodyGyro\_SD\_Y
-   Mean\_FrequencyBodyGyro\_SD\_Z
-   Mean\_FrequencyBodyGyro\_meanFreq()\_X
-   Mean\_FrequencyBodyGyro\_meanFreq()\_Y
-   Mean\_FrequencyBodyGyro\_meanFreq()\_Z
-   Mean\_FrequencyBodyAccMag\_Mean
-   Mean\_FrequencyBodyAccMag\_SD
-   Mean\_FrequencyBodyAccMag\_meanFreq()
-   Mean\_FrequencyBodyBodyAccJerkMag\_Mean
-   Mean\_FrequencyBodyBodyAccJerkMag\_SD
-   Mean\_FrequencyBodyBodyAccJerkMag\_meanFreq()
-   Mean\_FrequencyBodyBodyGyroMag\_Mean
-   Mean\_FrequencyBodyBodyGyroMag\_SD
-   Mean\_FrequencyBodyBodyGyroMag\_meanFreq()
-   Mean\_FrequencyBodyBodyGyroJerkMag\_Mean
-   Mean\_FrequencyBodyBodyGyroJerkMag\_SD
-   Mean\_FrequencyBodyBodyGyroJerkMag\_meanFreq()
