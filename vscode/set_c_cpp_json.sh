#!/bin/bash

FILE_DIR="/home/ubuntu/workspace/linux/fs/"
BASE_FILE_NAME="fs/"

i=0
for name in $(ls $FILE_DIR)
do
        let i++
        filename=$FILE_DIR$name
        if [ -d "$filename" ]; then
                echo "        \"$BASE_FILE_NAME$name\": true,"
        fi
done
echo "i = $i"
