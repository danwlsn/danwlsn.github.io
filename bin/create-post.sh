#!/bin/bash

# This script creates a new markdown file with a formatted name.
# The filename format is YYYY-MM-DD_slugified-sentence.md

# Check if exactly one argument (the sentence) is provided.
# If not, print the usage instructions and exit.
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 \"your sentence for the title\""
    exit 1
fi

GIT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
POSTS_DIR="$GIT_ROOT/content/posts"

# Store the sentence from the first argument.
SENTENCE="$1"

# Get the current date in the required YYYY-MM-DD format.
CURRENT_DATE=$(date +"%Y-%m-%d")

# Slugify the sentence:
SLUG=$(echo "$SENTENCE" | tr '[:upper:]' '[:lower:]')
SLUG=${SLUG// /-}

# Combine the date and the slug to create the final filename.
FILENAME="${CURRENT_DATE}_${SLUG}.md"

# Create the empty markdown file.
pushd "$POSTS_DIR" > /dev/null
touch "$FILENAME"
echo "+++" >> $FILENAME
echo "title = \"$SENTENCE\"" >> $FILENAME
echo "authors = [\"Dan Wilson\"]" >> $FILENAME
echo "[taxonomies]" >> $FILENAME
echo "tags = []" >> $FILENAME
echo "+++" >> $FILENAME

# Print a confirmation message to the user.
echo "Successfully created file: $FILENAME"
