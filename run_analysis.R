library(data.table)

setwd("UCI HAR Dataset")

activity_labels <- read.delim("activity_labels.txt",header=FALSE,sep=" ")
colnames(activity_labels) <- c("activity","label")

setwd("test")
subject_test <- read.delim("subject_test.txt",header=FALSE)
colnames(subject_test) <- "subject"
X_test <- read.delim("X_test.txt",header=FALSE,sep="")
y_test <- read.delim("y_test.txt",header=FALSE)
colnames(y_test) <- "activity"
test <- cbind("test",subject_test,merge(activity_labels,y_test)[,2],rowMeans(X_test),apply(X_test,1, sd, na.rm = TRUE))
colnames(test) <- c("set","subject","activity","mean","sd")


setwd("..")

setwd("train")

subject_train <- read.delim("subject_train.txt",header=FALSE)
colnames(subject_train) <- "subject"
X_train <- read.delim("X_train.txt",header=FALSE,sep="")
y_train <- read.delim("y_train.txt",header=FALSE)
colnames(y_train) <- "activity"
train <- cbind("train",subject_train,merge(activity_labels,y_train)[,2],rowMeans(X_train),apply(X_train,1, sd, na.rm = TRUE))
colnames(train) <- c("set","subject","activity","mean","sd")


setwd("..")

dataset1 <- data.table(rbind(train,test))
write.table(dataset1,file="dataset1.txt",sep=" ",row.names=FALSE)
dataset2 <- dataset1[,mean(mean),by=list(subject,activity)]
setnames(dataset2,c("subject","activity","mean"))
write.table(dataset2,file="dataset2.txt",sep=" ",row.names=FALSE)
