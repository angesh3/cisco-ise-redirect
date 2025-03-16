#!/bin/bash

# Simple script to update the ngrok URL in index.html

# Check if a URL was provided
if [ -z "$1" ]; then
    echo "Error: No URL provided."
    echo "Usage: ./update-url.sh https://your-new-ngrok-url.ngrok-free.app"
    exit 1
fi

NEW_URL="$1"

# Update the URL in index.html
sed -i '' -e "s|const ngrokUrl = \".*\";|const ngrokUrl = \"$NEW_URL\";|g" index.html
sed -i '' -e "s|href=\".*\">Click here|href=\"$NEW_URL\">Click here|g" index.html

# Update the timestamp
echo "URL updated to: $NEW_URL"
echo "Remember to commit and push your changes to GitHub." 