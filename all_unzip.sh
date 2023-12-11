#!/bin/bash

# Find all zip files in the current directory and extract them
for zip_file in *.zip; do
  # Get the base name of the zip file
  base_name="${zip_file%.zip}"

  # Check if the extraction folder already exists, if not, create it
  if [ ! -d "$base_name" ]; then
    mkdir "$base_name"
  fi

  # Extract the contents of the zip file into the corresponding folder
  unzip -q "$zip_file" -d "$base_name"

  echo "Extracted $zip_file to $base_name"
done
