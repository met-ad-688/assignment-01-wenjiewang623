#!/bin/bash

# Define the directory where the CSV files are located
CSV_DIR="/home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623"

# List of CSV files to process
files=("question_tags.csv")  # Remove questions.csv since it's not relevant

# Initialize count
total_count=0

echo "Starting Python count script..."
echo "--------------------------------"

# Loop through CSV files and count occurrences
for file in "${files[@]}"; do
    file_path="$CSV_DIR/$file"

    if [[ -f "$file_path" ]]; then
        echo "Processing file: $file..."

        # Count occurrences of "python" (case-insensitive)
        count=$(grep -i "python" "$file_path" | wc -l)

        echo "Lines containing 'python' in $file: $count"
        total_count=$((total_count + count))
    else
        echo "Warning: $file not found, skipping..."
    fi
done

# Print total count
echo "--------------------------------"
echo "Total lines containing 'python': $total_count"
echo "Script execution completed."

