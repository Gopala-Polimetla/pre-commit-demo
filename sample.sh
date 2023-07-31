#!/bin/sh

commit_msg=$(cat $1)

# Define the regex pattern for the commit message
regex_pattern="^[0-9]{4} .{12,59}$"

if ! [[ $commit_msg =~ $regex_pattern ]]; then
  echo "Error: Commit message does not meet the required format."
  echo "The commit message should start with a 4-digit number and be between 16 and 64 characters in length."
  exit 1
fi
