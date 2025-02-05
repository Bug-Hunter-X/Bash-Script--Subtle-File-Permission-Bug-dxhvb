#!/bin/bash

# Improved script with robust error handling

for file in /tmp/*; do
  if [ -r "$file" ]; then
    head -n 1 "$file" 2>/dev/null || echo "Warning: Could not read from file: $file"
  else
    echo "Error: Cannot read file (permission denied): $file"
  fi
done