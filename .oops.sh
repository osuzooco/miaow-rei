#!/bin/bash
message="This is a default error message"   
if [ -n "$1" ]; then
    message="$1"
fi
echo "An error occurred: ${message}"