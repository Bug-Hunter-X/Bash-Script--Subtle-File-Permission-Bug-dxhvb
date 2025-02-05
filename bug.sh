#!/bin/bash

# This script attempts to process files in a directory but has a subtle bug.

# The bug is that it doesn't handle files that are not readable by the user.

# This script attempts to process every file in the /tmp directory.

# It prints the first line of each file

for file in /tmp/*; do
  if [ -r "$file" ]; then  # Check if file is readable
    head -n 1 "$file"
  else
    echo "Error: Cannot read file: $file"
  fi

done