CodeBook.md

This code book describes the dataset: Average.of.all.variables.for.each.subject.and.activity.combination.txt

The dataset was produced for the Coursera Getting and Cleaning Data Course Project.

The sections of this code book are:

    Variables
    Data
    Transformations and other work
    Details of the run_analysis.R script

Variables

    Column variables (note: the description of each variable appears in the next section, Data)

    Time Body Acceleration Mean X
    Time Body Acceleration Mean Y
    Time Body Acceleration Mean Z
    Time Gravity Acceleration Mean X
    Time Gravity Acceleration Mean Y
    Time Gravity Acceleration Mean Z
    Time Body Acceleration Jerk Mean X
    Time Body Acceleration Jerk Mean Y
    Time Body Acceleration Jerk Mean Z
    Time Body Gyro Mean X
    Time Body Gyro Mean Y
    Time Body Gyro Mean Z
    Time Body Gyro Jerk Mean X
    Time Body Gyro Jerk Mean Y
    Time Body Gyro Jerk Mean Z
    Time Body Acceleration Magnitude Mean
    Time Gravity Acceleration Magnitude Mean
    Time Acceleration Jerk Magnitude Mean
    Time Body Gyro Magnitude Mean
    Time Body Gyro Jerk Magnitude Mean
    Frequency Body Acceleration Mean X
    Frequency Body Acceleration Mean Y
    Frequency Body Acceleration Mean Z
    Frequency Body Acceleration Jerk Mean X
    Frequency Body Acceleration Jerk Mean Y
    Frequency Body Acceleration Jerk Mean Z
    Frequency Body Gyro Mean X
    Frequency Body Gyro Mean Y
    Frequency Body Gyro Mean Z
    Frequency Body Acceleration Magnitude Mean
    Frequency Body Acceleration Jerk Magnitude Mean
    Frequency Body Gyro Magnitude Mean
    Frequency Body Gyro Jerk Magnitude Mean
    Time Body Acceleration Standard Deviation X
    Time Body Acceleration Standard Deviation Y
    Time Body Acceleration Standard Deviation Z
    Time Gravity Acceleration Standard Deviation X
    Time Gravity Acceleration Standard Deviation Y
    Time Gravity Acceleration Standard Deviation Z
    Time Body Acceleration Jerk Standard Deviation X
    Time Body Acceleration Jerk Standard Deviation Y
    Time Body Acceleration Jerk Standard Deviation Z
    Time Body Gyro Standard Deviation X
    Time Body Gyro Standard Deviation Y
    Time Body Gyro Standard Deviation Z
    Time Body Gyro Jerk Standard Deviation X
    Time Body Gyro Jerk Standard Deviation Y
    Time Body Gyro Jerk Standard Deviation Z
    Time Body Acceleration Magnitude Standard Deviation
    Time Gravity Acceleration Magnitude Standard Deviation
    Time Acceleration Jerk Magnitude Standard Deviation
    Time Body Gyro Magnitude Standard Deviation
    Time Body Gyro Jerk Magnitude Standard Deviation
    Frequency Body Acceleration Standard Deviation X
    Frequency Body Acceleration Standard Deviation Y
    Frequency Body Acceleration Standard Deviation Z
    Frequency Body Acceleration Jerk Standard Deviation X
    Frequency Body Acceleration Jerk Standard Deviation Y
    Frequency Body Acceleration Jerk Standard Deviation Z
    Frequency Body Gyro Standard Deviation X
    Frequency Body Gyro Standard Deviation Y
    Frequency Body Gyro Standard Deviation Z
    Frequency Body Acceleration Magnitude Standard Deviation
    Frequency Body Acceleration Jerk Magnitude Standard Deviation
    Frequency Body Gyro Magnitude Standard Deviation

    Frequency Body Gyro Jerk Magnitude Standard Deviation

    Rows/Observations:

Each row has a row name which indicates a combination of 1) an anonymous Subject, and 2) one of 6 Activities, as described below.

The subjects are people who participated in the study. Their identity is kept private and they are noted by a number from 1 to 30.

The 6 activities are: 1. WALKING 2. WALKING_UPSTAIRS 3. WALKING_DOWNSTAIRS 4. SITTING 5. STANDING 6. LAYING

EXAMPLES:

    Row name "1.LAYING" indicates Subject number 1 doing Activity Laying.

    Row name "26.WALKING" indicates Subject number 26 doing Activity Walking.

Data

The data Representative by the variables should be interpreted as follows:

All data elements represent an average of multiple 3-axial (that is, X, Y, and Z) accelerometer and gyroscope reading measurements for a Subject-and-Activity combination.

The readings are normalized and bounded within [-1,1].

The variable list from Section 1. Variables (above) reflects transformations and combinations of the raw signals as indicated by which of the following terms the variable name includes, as follows:

    Time : time domain signals.
    Frequency: frequency domain signals.
    Acceleration: an accelerometer reading.
    Gyro: a gyroscope reading.
    Body: the body component of the acceleration signal.
    Gravity: the gravity component of the acceleration signal.
    Jerk: a derivation from the body linear acceleration and angular velocity readings.
    Magnitude: a calculation using the Euclidean norm.
    Mean: a statistical mean value calculation of the raw signals.
    Standard Deviation: a statistical standard deviation calculation of the raw signals.
    X indicates a reading for the X-axis.
    Y indicates a reading for the y-axis.
    Z indicates a reading for the z-axis.

EXAMPLES:

    "Time Body Acceleration Mean X" is an average of multiple mean values of the time domain signal of the body component of the accelerometer reading of the x-axis.

    "Frequency Body Acceleration Jerk Standard Deviation Z" is an average of multiple standard deviation values of the Jerk derivation from the body component of the accelerometer reading of the Z-axis.

Transformations

Each element in the data table represents an average of multiple Subject-and-Activity combination readings from the input table. Details of the input table are documented in the main script.

The script also performs a t() function (transform function) to flip the data frame so that the variables appear in columns and the Subject and Activity combinations appear as row names.
4. Details of the run_analysis.R script

The run_analysis.R script is well document within the script, with explanations of the input file, steps taken, purpose of each step, and output produced by steps. The README file also contains the script and documentation.
