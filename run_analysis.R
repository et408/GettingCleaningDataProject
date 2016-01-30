library(dplyr)
library(data.table)
 
# Note: The "UCI HAR Dataset" directory should be placed in the working directory along with this R script.

#=========================================================
# Initilization of variables for names of data directories
#=========================================================
dataset_d <- "UCI HAR Dataset"
test_d <- "test"
train_d <- "train"
inertial_signals_d <- "Inertial Signals"

col_names_vector_128 <- paste(rep("V", 128), 1:128, sep = "")
col_name_activity <- "Activity"
col_name_subject_identifier <- "SubjectIdentifier"

#==============
# Load metadata
#==============
# Vector of features/measurements/columns in X_test_tbl and X_train_tbl
features_tbl <- tbl_dt(fread(file.path(dataset_d, "features.txt")))

# Activities that the subjects perform
activities_labels_tbl <- tbl_dt(fread(file.path(dataset_d, "activity_labels.txt")))

#===========================================================
# Function to create vector of column names for a data table
#===========================================================
createColumnNames <- function(measurement_description, vector_column_identifiers, unit_of_measurement) {
    vector_length <- length(vector_column_identifiers)
    unit_identifier <- paste("In", unit_of_measurement, sep = "")
    paste(rep(measurement_description, vector_length), vector_column_identifiers, rep(unit_identifier, vector_length), sep = "_")
}

#=====================================================
#=====================================================
# Load training and test observations into data tables
#=====================================================
#=====================================================

#==============
# Training data
#==============

# Train data
X_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, "X_train.txt")))
colnames(X_train_tbl) <- features_tbl$V2

# Vector of subject identifiers for each observation in X_train_tbl
subject_identifier_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, "subject_train.txt")))
colnames(subject_identifier_train_tbl) <- c(col_name_subject_identifier)

# Vector of identifiers for activity measured in X_train_tbl
activity_identifiers_for_X_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, "y_train.txt")))
colnames(activity_identifiers_for_X_train_tbl) <- c(col_name_activity)

# Combine data tables containing training data
training_data_with_subject_and_activity_identifiers <- cbind(subject_identifier_train_tbl, activity_identifiers_for_X_train_tbl, X_train_tbl)

# These datasets are not used
if (FALSE) {
    body_acc_x_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_acc_x_train.txt")))
    body_acc_y_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_acc_y_train.txt")))
    body_acc_z_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_acc_z_train.txt")))
    
    body_gyro_x_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_gyro_x_train.txt")))
    body_gyro_y_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_gyro_y_train.txt")))
    body_gyro_z_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "body_gyro_z_train.txt")))
    
    total_acc_x_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "total_acc_x_train.txt")))
    total_acc_y_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "total_acc_y_train.txt")))
    total_acc_z_train_tbl <- tbl_dt(fread(file.path(dataset_d, train_d, inertial_signals_d, "total_acc_z_train.txt")))
    
    colnames(body_acc_x_train_tbl) <- createColumnNames("BodyAccelerationAlongX", col_names_vector_128, "Gs")
    colnames(body_acc_y_train_tbl) <- createColumnNames("BodyAccelerationAlongY", col_names_vector_128, "Gs")
    colnames(body_acc_z_train_tbl) <- createColumnNames("BodyAccelerationAlongZ", col_names_vector_128, "Gs")
    
    colnames(body_gyro_x_train_tbl) <- createColumnNames("AngularVelocityAlongX", col_names_vector_128, "RadiansPerSecond")
    colnames(body_gyro_y_train_tbl) <- createColumnNames("AngularVelocityAlongY", col_names_vector_128, "RadiansPerSecond")
    colnames(body_gyro_z_train_tbl) <- createColumnNames("AngularVelocityAlongZ", col_names_vector_128, "RadiansPerSecond")
    
    colnames(total_acc_x_train_tbl) <- createColumnNames("AccelerationAlongX", col_names_vector_128, "Gs")
    colnames(total_acc_y_train_tbl) <- createColumnNames("AccelerationAlongY", col_names_vector_128, "Gs")
    colnames(total_acc_z_train_tbl) <- createColumnNames("AccelerationAlongZ", col_names_vector_128, "Gs")
}

#==========
# Test data
#==========
# Test data
X_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, "X_test.txt")))
colnames(X_test_tbl) <- features_tbl$V2

# Vector of identifiers for activity measured in X_test_tbl
activity_identifiers_for_X_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, "y_test.txt")))
colnames(activity_identifiers_for_X_test_tbl) <- c(col_name_activity)

# Vector of subject identifiers for each observation in X_test_tbl
subject_identifier_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, "subject_test.txt")))
colnames(subject_identifier_test_tbl) <- c(col_name_subject_identifier)

# Combine data tables containing test data
test_data_with_subject_and_activity_identifiers <- cbind(subject_identifier_test_tbl, activity_identifiers_for_X_test_tbl, X_test_tbl)

# These datasets are not used
if (FALSE) {
    body_acc_x_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_acc_x_test.txt")))
    body_acc_y_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_acc_y_test.txt")))
    body_acc_z_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_acc_z_test.txt")))
    
    body_gyro_x_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_gyro_x_test.txt")))
    body_gyro_y_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_gyro_y_test.txt")))
    body_gyro_z_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "body_gyro_z_test.txt")))
    
    total_acc_x_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "total_acc_x_test.txt")))
    total_acc_y_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "total_acc_y_test.txt")))
    total_acc_z_test_tbl <- tbl_dt(fread(file.path(dataset_d, test_d, inertial_signals_d, "total_acc_z_test.txt")))
    
    colnames(body_acc_x_test_tbl) <- createColumnNames("BodyAccelerationAlongX", col_names_vector_128, "Gs")
    colnames(body_acc_y_test_tbl) <- createColumnNames("BodyAccelerationAlongY", col_names_vector_128, "Gs")
    colnames(body_acc_z_test_tbl) <- createColumnNames("BodyAccelerationAlongZ", col_names_vector_128, "Gs")
    
    colnames(body_gyro_x_test_tbl) <- createColumnNames("AngularVelocityAlongX", col_names_vector_128, "RadiansPerSecond")
    colnames(body_gyro_y_test_tbl) <- createColumnNames("AngularVelocityAlongY", col_names_vector_128, "RadiansPerSecond")
    colnames(body_gyro_z_test_tbl) <- createColumnNames("AngularVelocityAlongZ", col_names_vector_128, "RadiansPerSecond")
    
    colnames(total_acc_x_test_tbl) <- createColumnNames("AccelerationAlongX", col_names_vector_128, "Gs")
    colnames(total_acc_y_test_tbl) <- createColumnNames("AccelerationAlongY", col_names_vector_128, "Gs")
    colnames(total_acc_z_test_tbl) <- createColumnNames("AccelerationAlongZ", col_names_vector_128, "Gs")
}

#==================================
# Merge training and test data sets
#==================================
union_of_training_and_test_data <- union(training_data_with_subject_and_activity_identifiers, test_data_with_subject_and_activity_identifiers)

#=======================================
# Apply factor to Activity column values
#=======================================
union_of_training_and_test_data$Activity <- factor(union_of_training_and_test_data$Activity, levels = activities_labels_tbl$V1, labels = activities_labels_tbl$V2)

#========================================================================================
# Extract only mean and standard deviation columns and order rows by subject and activity
#========================================================================================
mean_std_columns <- grep("mean|std", colnames(union_of_training_and_test_data), perl = TRUE)
subject_activity_columns <- which(colnames(union_of_training_and_test_data) %in% c(col_name_activity,col_name_subject_identifier))
mean_std_training_test_data <- select(union_of_training_and_test_data, c(subject_activity_columns, mean_std_columns))

# Step 4 data set
arranged_mean_std_training_test_data <- arrange(mean_std_training_test_data, SubjectIdentifier, Activity)
View(arranged_mean_std_training_test_data)

# Step 5 data set
grouped_and_summarized_data <- arranged_mean_std_training_test_data %>% 
    group_by(SubjectIdentifier, Activity) %>% 
    summarize_each(funs(mean), -c(subject_activity_columns))
View(grouped_and_summarized_data)
