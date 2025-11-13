#!/bin/bash
GCS_PATH="gs://log_files_bucket_chirag/logfiles.txt"
LOCAL_PATH="/home/chiragvenkatesh92/logfiles.txt"
HDFS_PATH="/user/chirag_admin"

echo "Copying from GCS..."
gsutil cp "$GCS_PATH" "$LOCAL_PATH"

echo "Copying to HDFS..."
hadoop fs -copyFromLocal "$LOCAL_PATH" "$HDFS_PATH"

echo "Done!"
