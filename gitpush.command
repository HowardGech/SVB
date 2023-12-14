#!/bin/bash

# Get the directory of the script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change the current working directory
cd "$script_dir"

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

git push

trap 'exit' ERR

exit 0
