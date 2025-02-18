import pandas as pd
import os


CSV_DIR = "/home/ubuntu/.ssh/assignment-01-wenjiewang623/.github/assignment-01-wenjiewang623"


files = ["question_tags.csv", "questions.csv"]
total_count = 0

print("Starting GitHub count script...")

for file in files:
    file_path = os.path.join(CSV_DIR, file)
    print(f"Checking file: {file_path}")

    if not os.path.exists(file_path):
        print(f"Warning: {file} not found, skipping...")
        continue

    try:
        print(f"Reading {file}...")

        if file == "question_tags.csv":
          
            df = pd.read_csv(file_path, usecols=["Tag"], dtype=str, on_bad_lines="skip")
            count = df["Tag"].str.contains("GitHub", case=False, na=False).sum()

        else:
            
            chunk_size = 250000  
            text_columns = ["Title", "Body"]  
            count = 0

            for chunk in pd.read_csv(file_path, usecols=text_columns, dtype=str, chunksize=chunk_size, on_bad_lines="skip"):
                chunk_count = chunk.astype(str).apply(lambda row: row.str.contains("GitHub", case=False, na=False).any(), axis=1).sum()
                count += chunk_count
                print(f"Processed {chunk_size} rows, found {chunk_count} matches...") 
        total_count += count
        print(f"Lines containing 'GitHub' in {file}: {count}")

    except Exception as e:
        print(f"Error processing {file}: {e}")

print(f"Total lines containing 'GitHub': {total_count}")
print("Script execution completed.")
