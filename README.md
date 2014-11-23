Data Cleaning Project
=====================

To run the run_analysis.R script, you must make sure that the following files
and folder are available in the working directory:

* activity_labels.txt
* features.txt
* test/X_test.txt
* test/y_test.txt
* test/subject_test.txt
* train/X_train.txt
* train/y_train.txt
* train/subject_train.txt

The script also requires the following two R libraries:

* data.table
* dplyr

The script, when run, produces the output tidy data set in 
a file named "tidyData.txt"

The Code Book for tidyData.txt is available at [CodeBook](codeBook.md).

Raw Data to Tidy Data
---------------------

Step 1: Read the various raw data files into R data tables and merge the 
test and train data sets using rbind()

Step 2: Extract only those features that end with mean() and std() and
produce a data table, named msX.

Step 3: Rename column names in activity data table to (ANUM,ACTIVITYLABEL)

Step 4: Rename column names in msX data table to corresponding names in
features data table.

Step 5: Create tidy data set by combining the columns from msX, subjects,
and activity data tables and producing mean values for each feature
grouped by SUBJECT and ACTIVITY LABEL.

Finally, use write.table() to produce the tidyData.txt file.

