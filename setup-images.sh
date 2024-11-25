#!/bin/bash

# Enable error reporting
set -e

# Create images directory if it doesn't exist
mkdir -p static/images

# Array of required image names
declare -a images=(
    "apple-pie.jpg"
    "baguette.jpg"
    "birthday-cake.jpg"
    "chocolate-croissant.jpg"
    "danish.jpg"
    "sourdough-bread.jpg"
)

echo "Working directory: $(pwd)"

# Download placeholder if it doesn't exist
if [ ! -f "static/images/placeholder.jpg" ]; then
    echo "Downloading placeholder image..."
    curl -L "https://placehold.co/800x600.jpg" -o static/images/placeholder.jpg

    if [ $? -ne 0 ]; then
        echo "Failed to download from placehold.co, trying picsum..."
        curl -L "https://picsum.photos/800/600" -o static/images/placeholder.jpg
    fi

    if [ ! -f "static/images/placeholder.jpg" ]; then
        echo "Error: Failed to download placeholder image"
        exit 1
    fi
fi

# Create symbolic links
cd static/images
echo "Creating symbolic links in: $(pwd)"

for img in "${images[@]}"; do
    if [ -f "$img" ]; then
        if [ -L "$img" ]; then
            echo "Symlink $img already exists"
        else
            echo "Physical file $img already exists, keeping it"
        fi
    else
        echo "Creating symlink for $img"
        ln -s placeholder.jpg "$img"
    fi
done

# Verify setup
echo -e "\nVerifying images:"
for img in "${images[@]}"; do
    if [ -f "$img" ]; then
        echo "✓ $img present"
    else
        echo "✗ $img missing"
    fi
done

ls -la