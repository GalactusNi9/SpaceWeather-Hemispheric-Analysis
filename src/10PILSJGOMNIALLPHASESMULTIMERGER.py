# -*- coding: utf-8 -*-
"""
Created on Fri Jul  4 19:51:28 2025

@author: Particle Physicist
"""

import os
import csv

root_dir = r"E:\UniversaLProjectS\DstKpApF10.7"
phases = ["Ascending", "Descending", "Solar_Maximum", "Solar_Minimum"]
file_prefixes = ["OMNI", "PIL", "SJG"]

for phase in phases:
    phase_path = os.path.join(root_dir, phase)
    
    for prefix in file_prefixes:
        merged_data = []
        header_saved = False

        for file in os.listdir(phase_path):
            if file.startswith(prefix) and file.endswith(".csv"):
                file_path = os.path.join(phase_path, file)
                with open(file_path, "r", newline='') as f:
                    reader = csv.reader(f)
                    header = next(reader)
                    if not header_saved:
                        merged_data.append(header)
                        header_saved = True
                    merged_data.extend(row for row in reader if row)  # Skip empty rows

        # Save merged result
        output_file = os.path.join(phase_path, f"{prefix}_{phase}_Merged.csv")
        with open(output_file, "w", newline='') as f_out:
            writer = csv.writer(f_out)
            writer.writerows(merged_data)

        print(f"Merged {prefix} files for {phase} saved to: {output_file}")
