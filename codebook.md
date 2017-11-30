# Code Book

## Overview 

6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) were performed by a group of 30 volunteers (19-48 years old) while wearing a smartphone on the waist, that captured data about their movements.

**Decription of the files contained in the zip file:**

* _activity_labels.txt_ Names and IDs for each of the 6 activities.

* _features.txt_ Names of the features.

* _test_ folder:
   * _subject_test.txt_ A vector of integers, ID of the volunteer related to each observation in X_test.txt.

   * _X_test.txt_ observations of the features (9 of the 30 volunteers).

   * _y_test.txt_ A vector of integers, ID of the activity related to each observation in X_test.txt.
   
* _train_ folder:

   * _subject_train.txt_ A vector of integers, ID of the volunteer related to each observation in X_train.txt.

   * _X_train.txt_ observations of the features (21 of the 30 volunteers).

   * _y_train.txt_ A vector of integers, ID of the activity related to each observation in X_train.txt.

**Information about variables in _features_info.txt_**

More information in _README.txt_

**Processing steps:**

1. Open the subject, test and train files.
2. Merge the training and the test data sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set ("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying").
4. Label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Write the tidy data set into a txt file.
