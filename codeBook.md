CodeBook for Samsung Mobile Device Data Cleaning
================================================

Study Design
------------

The raw data was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Upon unzipping this data set, we obtain the following files:

* README.txt
* activity_labels.txt
* features.txt
* features_info.txt
* test/X_test.txt
* test/subject_test.txt
* test/y_test.txt
* train/X_train.txt
* train/subject_train.txt
* train/y_train.txt

The following two folders are ignored in producing the output file, tidyData.txt.

* test/Inertial Signals
* train/Inertial Signals

In the original raw data set, 561 features were collected, however in the tidy data
set that is being documented here, 66 of these 561 features (those that
correspond to mean() and std() values) are included.

Code Book
---------

tidyData.txt contains the following variables:

1. SUBJECT
2. ACTIVITYLABEL
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAccJerk-mean()-X
50. fBodyAccJerk-mean()-Y
51. fBodyAccJerk-mean()-Z
52. fBodyAccJerk-std()-X
53. fBodyAccJerk-std()-Y
54. fBodyAccJerk-std()-Z
55. fBodyGyro-mean()-X
56. fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58. fBodyGyro-std()-X
59. fBodyGyro-std()-Y
60. fBodyGyro-std()-Z
61. fBodyAccMag-mean()
62. fBodyAccMag-std()
63. fBodyBodyAccJerkMag-mean()
64. fBodyBodyAccJerkMag-std()
65. fBodyBodyGyroMag-mean()
66. fBodyBodyGyroMag-std()
67. fBodyBodyGyroJerkMag-mean()
68. fBodyBodyGyroJerkMag-std()

### Notes

1. SUBJECT takes a value between 1 and 30, indicating the subject who performed
the experiment (ran the app on his mobile phone that recorded his movements).

2. ACTIVITYLABEL takes one of the following 6 values (These values were obtained either in the testing phase or the training phase of the machine lerning algorithms that were run on the data set):

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

3. All other variables range from -1.0 to 1.0 and are average values computed
for each SUBJECT and ACTIVITYLABEL pair. These average values are computed
from the multiple instances in the combined test and train data sets.

4. There are a total of 180 entries in the tidy data set corresponding to
the 30 subjects times 6 activity labels.

