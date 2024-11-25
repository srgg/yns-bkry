#!/bin/bash

echo "=== Hugo Debug Script ==="

echo -e "\n1. Checking config file..."
if [ -f "config.yaml" ]; then
    echo "Found config.yaml:"
    cat config.yaml
elif [ -f "config.toml" ]; then
    echo "Found config.toml:"
    cat config.toml
else
    echo "No config file found!"
fi

echo -e "\n2. Checking taxonomy templates..."
echo "Looking for taxonomy templates in layouts/:"
if [ -d "layouts/taxonomy" ]; then
    echo "Found taxonomy directory:"
    ls -l layouts/taxonomy/
else
    echo "No taxonomy directory found!"
fi

if [ -f "layouts/_default/taxonomy.html" ]; then
    echo "Found default taxonomy template:"
    ls -l layouts/_default/taxonomy.html
else
    echo "No default taxonomy template found!"
fi

if [ -f "layouts/_default/terms.html" ]; then
    echo "Found terms template:"
    ls -l layouts/_default/terms.html
else
    echo "No terms template found!"
fi

echo -e "\n3. Checking product files for category front matter..."
echo "Checking product markdown files:"
for file in content/products/*/*.md; do
    if [ -f "$file" ]; then
        echo -e "\n=== $file ==="
        # Extract and display the front matter
        sed -n '/^---$/,/^---$/p' "$file"
    fi
done

echo -e "\n4. Directory structure..."
echo "Current directory structure:"
find . -type d -not -path "*/\.*" | sort

echo -e "\n5. Template verification..."
echo "Checking template files:"
for dir in layouts layouts/_default layouts/partials layouts/taxonomy; do
    echo -e "\nChecking $dir:"
    if [ -d "$dir" ]; then
        ls -l "$dir"
    else
        echo "Directory $dir not found!"
    fi
done

echo -e "\n6. Content structure..."
echo "Content directory structure:"
find content -type f -name "*.md" | sort

echo -e "\n7. Checking all template content..."
echo "Template contents:"
for template in layouts/_default/*.html layouts/taxonomy/*.html; do
    if [ -f "$template" ]; then
        echo -e "\n=== $template ==="
        grep -A 5 "range" "$template" 2>/dev/null || echo "No range commands found"
    fi
done

echo -e "\n8. File existence check..."
required_files=(
    "layouts/_default/baseof.html"
    "layouts/_default/list.html"
    "layouts/_default/single.html"
    "layouts/_default/terms.html"
    "layouts/_default/taxonomy.html"
    "layouts/taxonomy/category.html"
    "layouts/partials/nav.html"
    "layouts/partials/footer.html"
    "layouts/index.html"
)

echo "Checking required files:"
for file in "${required_files[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file missing"
    fi
done

echo -e "\nDebug complete. Check the output above for any issues."