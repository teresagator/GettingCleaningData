tidy_data <- function()
{
  ## Read in raw data files
  activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names=c("activityid", "activity"))
  feature <- read.table("UCI HAR Dataset/features.txt", header=FALSE, col.names=c("featureid", "feature"))
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names=c("subjectid"))
  y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", header=FALSE, col.names=c("label"))
  x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, col.names=feature$feature)
  
  ## merge Test data into clean dataset
  y_test <- merge(y_test, activity_labels, by.x="label", by.y="activityid")
  y_test <- cbind(y_test, subject_test)
  test_mean_std <- x_test[,grep("[mM]ean|[sS]td", names(x_test))]
  test_mean_std <- cbind(activity=y_test$activity, subject=y_test$subjectid, test_mean_std)
  
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names=c("subjectid"))
  y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header=FALSE, col.names=c("label"))
  x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names=feature$feature)
  
  ## merge Training data into clean dataset
  y_train <- merge(y_train, activity_labels, by.x="label", by.y="activityid")
  y_train <- cbind(y_train, subject_train)
  train_mean_std <- x_train[,grep("[mM]ean|[sS]td", names(x_train))]
  train_mean_std <- cbind(activity=y_train$activity, subject=y_train$subjectid, train_mean_std)
  
  ## combine training and test data sets
  alldata <- rbind(train_mean_std, test_mean_std)
  colnames(alldata) <- gsub("[.]","",names(alldata))
  colnames(alldata) <- tolower(names(alldata))
  
  ## aggregate by activity and subject, computing mean
  all_aggs <- aggregate(x=alldata[3:88], by=list("activity"=alldata$activity, "subject"=alldata$subject), FUN="mean")
  write.csv(all_aggs, file="tidy_data_project1.txt")
  all_aggs
  
}
