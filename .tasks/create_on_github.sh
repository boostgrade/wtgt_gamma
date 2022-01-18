#!/bin/bash

name_of_file=
path_to_file=

for dir in ./ready_tasks/*; do
    if [ -d "$dir" ]; then
        for file in $dir/*; do
            if [ -f "$file" ]; then
                echo "create task from file $file"
                temp_name=${file##*/}
                echo $temp_name
                name_of_file=${temp_name%%.*}
                echo $name_of_file

                path_to_file=$file

                gh issue create -t "$name_of_file" -F "$path_to_file" -R boostgrade/wtgt_beta

            fi
        done
    fi
done
