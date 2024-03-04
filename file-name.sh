#!/bin/bash

# Get the current timestamp in Unix format
unixTimestamp=$(date +%s)

# Format the date as per your requirement
formattedDate=$(date +"%Y-%m-%d_%I_%M_%S_%p")

# Combine the components to create the desired string
resultString="Linux-${formattedDate}-${unixTimestamp}"

echo $resultString
