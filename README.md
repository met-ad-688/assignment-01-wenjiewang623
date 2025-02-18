# StackOverflow Data Analysis Assignment
Name: Wenjie Wang
computing ID: wang122@bu.edu
WENJIEWANG623

## Overview
This assignment analyzes StackOverflow data to count occurrences of the words **"python"** and **"GitHub"** in the dataset.

- `count_python.sh`: A shell script that counts occurrences of `"python"` in `question_tags.csv`.
- `count_github.py`: A Python script that counts occurrences of `"GitHub"` in `question_tags.csv` and `questions.csv`.

## ./_output/count_python.sh
Starting Python count script...
--------------------------------
Processing file: questions.csv...
Lines containing 'python' in questions.csv: 0
Processing file: question_tags.csv...
Lines containing 'python' in question_tags.csv: 1064820
--------------------------------
Total lines containing 'python': 1064820
Script execution completed.
-------------------------------
Lines containing 'python' in questions.csv: 0
Lines containing 'python' in question_tags.csv: 1064820


## python3 _output/count_github.py
Starting GitHub count script...
Checking file: /home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623/question_tags.csv
Reading question_tags.csv...
Lines containing 'GitHub' in question_tags.csv: 32725
Checking file: /home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623/questions.csv
Reading questions.csv...
Error processing questions.csv: Usecols do not match columns, columns expected but not found: ['Title', 'Body']
Total lines containing 'GitHub': 32725
Script execution completed.
Starting GitHub count script...
Checking file: /home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623/question_tags.csv
Reading question_tags.csv...
Lines containing 'GitHub' in question_tags.csv: 32725
