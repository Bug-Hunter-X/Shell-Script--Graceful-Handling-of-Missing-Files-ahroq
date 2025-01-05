#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# It uses a loop that does not handle files that might be missing.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # The bug is here.  If a file does not exist, this will produce an error and stop the script.
  cat "$file"  
  echo "Processed: $file"
done