#!/bin/bash

# Setup folder structure for RAG Prototype project
echo "Creating RAG Prototype folder structure..."

# Create the directories
mkdir -p src
mkdir -p data
mkdir -p notebooks
mkdir -p models
mkdir -p config
mkdir -p tests
mkdir -p docs

# Create placeholder README files so Git can track the folders
echo "# Source code goes here" > src/README.md
echo "# Data files go here" > data/README.md
echo "# Jupyter notebooks go here" > notebooks/README.md
echo "# Model files go here" > models/README.md
echo "# Configuration files go here" > config/README.md
echo "# Test files go here" > tests/README.md
echo "# Documentation goes here" > docs/README.md

echo "Folder structure created successfully!"
echo "Contents:"
ls -la

# Optional: Add everything to git
read -p "Do you want to add these folders to Git now? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git add .
    git commit -m "Add project folder structure"
    echo "Files committed to Git. Run 'git push' to upload to GitHub."
fi