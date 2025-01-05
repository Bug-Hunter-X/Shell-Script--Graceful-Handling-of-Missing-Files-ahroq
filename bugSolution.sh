#!/bin/bash

# This script processes a list of files, handling missing files gracefully.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # Check if the file exists before attempting to process it.
  if [ -f "$file" ]; then
    cat "$file" 
    echo "Processed: $file"
  else
    echo "Warning: File '$file' not found. Skipping."
  fi
done