#!/bin/bash

# Define the absolute path to the directory containing the CSV files
CSV_DIR="/home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623"

# Ensure CSV files exist before proceeding
if [[ ! -f "$CSV_DIR/questions.csv" ]]; then
    echo "Error: $CSV_DIR/questions.csv not found!"
    exit 1
fi

if [[ ! -f "$CSV_DIR/question_tags.csv" ]]; then
    echo "Error: $CSV_DIR/question_tags.csv not found!"
    exit 1

fi

# Count occurrences of "python" (case-insensitive) in both CSV files
count_questions=$(grep -i "python" "$CSV_DIR/questions.csv" | wc -l)
count_tags=$(grep -i "python" "$CSV_DIR/question_tags.csv" | wc -l)

# Display the results
echo "-------------------------------"
echo "Lines containing 'python' in questions.csv: $count_questions"
echo "Lines containing 'python' in question_tags.csv: $count_tags"
echo "-------------------------------"
