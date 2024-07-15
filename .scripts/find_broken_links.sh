#!/bin/bash

# Change to the parent directory of the script
cd "$(dirname "$0")/.." || exit

# Function to check if a link is valid
check_link() {
    local file="$1"
    local link="$2"
    local line="$3"
    local base_dir=$(dirname "$file")
    
    # Resolve the link path
    local full_path="$base_dir/$link"
    full_path=$(cd "$(dirname "$full_path")" 2>/dev/null && pwd -P)/$(basename "$full_path")
    
    # Check if the link target exists
    if [ ! -e "$full_path" ]; then
        echo "$file#L$line"
    fi
}

# Find all markdown files, excluding README.md
find . -type f -name "*.md" ! -name "README.md" | while read -r file; do
    # Process each file
    line_number=0
    while IFS= read -r line; do
        ((line_number++))
        
        # Extract links using grep
        links=$(echo "$line" | grep -oE '\[.*?\]\((\.\.?/[^)]+)\)' | grep -oE '\.\.?/[^)]+')
        for link in $links; do
            check_link "$file" "$link" "$line_number"
        done
        
        # Extract image links using grep
        img_links=$(echo "$line" | grep -oE '!\[.*?\]\((\.\.?/[^)]+)\)' | grep -oE '\.\.?/[^)]+')
        for link in $img_links; do
            check_link "$file" "$link" "$line_number"
        done
    done < "$file"
done | sort -u
