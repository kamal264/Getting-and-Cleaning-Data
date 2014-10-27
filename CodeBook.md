CODE BOOK  
There were several files in a carpet.  
Some files were fore TEST and the others were for TRAIN  
  
SUBJECT: Were identify by an integer ID  
ACTIVITIES: 6 different activities that were performed by each subject  
These activities are:  
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  
  
Measurement means  
All variables are the mean and the standard deviation of a measurement for each subject and activity.   
Some of the measurements were:  
Time domain body acceleration mean along X, Y, and Z:  
    MeanTimeBodyAccMeanX  
    MeanTimeBodyAccMeanY  
    MeanTimeBodyAccMeanZ  
Time domain body acceleration standard deviation along X, Y, and Z:  
    MeanTimeBodyAccStdDevX  
    MeanTimeBodyAccStdDevY  
    MeanTimeBodyAccStdDevZ  
  
The variables that I used in my R code were the following:  
SNo|  Variable_Names     |  Description  
----------------------------------------------------------------------------------  
1  |  activity_labels    |  Having data of file activity_labels.txt  
2  |  features           |  Having data of file features.txt  
3  |  X_train            |  Having data of file X_train.txt  
4  |  X_test             |  Having data of file X_test.txt  
5  |  y_train            |  Having data of file y_train.txt  
6  |  y_test             |  Having data of file y_test.txt  
7  |  subject_train      |  Having data of file subject_train.txt  
8  |  subject_test       |  Having data of file subject_test.txt  
9  |  X                  |  Complete data of test and training set of X files  
10 |  y                  |  Complete data of test and training set of Y(Activity) files  
11 |  subject            |  Complete data of test and training set of Subjects files  
12 |  X_mean_std         |  Complete data of X having "mean " and "Std" in variable names   
13 |  y_wth_lbl          |  Complete data of y with activity Name   
14 |  data_mrg           |  Complete data of test and train set with Task 1-4  
15 |  tidy_data          |  Tidy Data required  for Task 5  
16 |  tidy_data.txt      |  Tidy Data file generated as required  for Task 5  
