# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 18:14:24 2025

@author: Particle Physicist
"""

import os
import csv
from datetime import datetime, timedelta

# Folder containing the cleaned CSVs
folder = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Maximum\PIL2014download\2014\PIL"  # ⬅️ change this to your actual folder

# Expected total data points (1 per hour for all of 2014)
expected_length = 365 * 24  # = 8760

h_data = []

# Loop through sorted files
for filename in sorted(os.listdir(folder)):
    if filename.endswith(".csv"):
        filepath = os.path.join(folder, filename)
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                sample = f.read(2048)
                f.seek(0)

                # Detect delimiter
                dialect = csv.Sniffer().sniff(sample, delimiters=',;\t|')
                reader = csv.reader(f, dialect)

                header = next(reader)
                try:
                    h_index = header.index('H')
                except ValueError:
                    print(f"⚠️ Skipping {filename}: No 'H' column")
                    continue

                count = 0
                for row in reader:
                    if len(row) > h_index and row[h_index].strip() != '':
                        try:
                            h_value = float(row[h_index])
                            h_data.append(h_value)
                            count += 1
                        except ValueError:
                            continue
                print(f"✅ Processed: {filename} ({count} values)")
        except Exception as e:
            print(f"⛔ Skipping {filename} due to error: {e}")

# Padding or trimming
if len(h_data) < expected_length:
    pad = expected_length - len(h_data)
    h_data += [0.0] * pad
    print(f"⚠️ Padded with {pad} zeros")
elif len(h_data) > expected_length:
    h_data = h_data[:expected_length]
    print(f"⚠️ Trimmed to {expected_length} values")

# Generate datetime values
start_time = datetime(2014, 1, 1, 0, 0)
datetimes = [(start_time + timedelta(hours=i)).strftime('%m/%d/%Y %H:%M') for i in range(expected_length)]

# Write output CSV
output_path = os.path.join(folder, "PIL_2014_Merged_Cleaned.csv")
with open(output_path, 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['Datetime', 'H'])
    for dt, h in zip(datetimes, h_data):
        writer.writerow([dt, h])

print(f"\n✅ Output written to:\n{output_path}")
