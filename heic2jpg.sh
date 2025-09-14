#!/bin/bash

# Search in the current directory (.) for files ending with .heic(HEIC)

shopt -s nocaseglob

# Loop throught all .heic/.HEIC files in current directory
for file in *.heic; do
    # Output JPEG file name
    base="${file%.*}"
    newfile="${base}.jpg"

    # Convert HEIC to JPEG
    heif-convert -q 100 "$file" "$newfile"
    echo "Converted: $file -> $newfile"

    # Delete original heic extension file
    rm -f "$file"
    echo "Deleted original: $file"
done

