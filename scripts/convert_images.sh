#!/bin/bash

# Target directory from argument
TARGET_DIR="$1"

# Check if directory argument is provided
if [ -z "$TARGET_DIR" ]; then
  echo "Error: Please provide a target directory."
  echo "Usage: $0 <directory>"
  exit 1
fi

# Check if directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory $TARGET_DIR not found."
  exit 1
fi

cd "$TARGET_DIR" || exit

# Determine ImageMagick command
if command -v magick &> /dev/null; then
  IM_CMD="magick"
elif command -v convert &> /dev/null; then
  IM_CMD="convert"
else
  echo "Error: ImageMagick (magick or convert) not found."
  exit 1
fi

echo "Using command: $IM_CMD"

count=1
# Loop through PNG files sorted alphabetically
for file in $(ls IMG_*.png | sort); do
  if [ -f "$file" ]; then
    new_name=$(printf "printer-stand-%02d.webp" "$count")
    echo "Converting $file to $new_name..."
    
    # Convert and delete if successful
    if $IM_CMD "$file" "$new_name"; then
      rm "$file"
      ((count++))
    else
      echo "Failed to convert $file"
      exit 1
    fi
  fi
done

echo "Done! Converted $((count-1)) images."
