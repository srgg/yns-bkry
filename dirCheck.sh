# Directory structure check script
#!/bin/bash

echo "=== Content Files Check ==="

# Expected files
declare -a expected_files=(
    "content/products/breads/sourdough-bread.md"
    "content/products/breads/baguette.md"
    "content/products/pastries/chocolate-croissant.md"
    "content/products/pastries/danish.md"
    "content/products/cakes/birthday-cake.md"
    "content/products/cakes/apple-pie.md"
)

for file in "${expected_files[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ Found: $file"
        echo "=== Content of $file ==="
        head -n 10 "$file"
        echo "==================="
    else
        echo "✗ Missing: $file"
    fi
done