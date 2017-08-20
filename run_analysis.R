library(tidyverse)
# remote file
remote_data_file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#local dir
uci_ds_path <- "UCI\ HAR\ Dataset/"

# File unzip verification. If the directory does not exist, unzip the downloaded file.
if(!file.exists(uci_ds_path)){
  temp <- tempfile()
  download.file(remote_data_file,temp)
  unzip(temp)  
}

subject_test_path <- paste(uci_ds_path,"test/subject_test.txt", sep = "") 
subject_test <- read_delim(subject_test_path, delim = "\ ", col_names = FALSE)
