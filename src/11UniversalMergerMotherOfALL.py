# -*- coding: utf-8 -*-
"""
Created on Sat Jul  5 00:01:58 2025

@author: Particle Physicist
"""

import numpy as np
import os
import glob

root_path = r"E:\UniversaLProjectS\DstKpApF10.7"
phases = ["Ascending", "Descending", "Solar_Maximum", "Solar_Minimum"]
file_patterns = {
    "OMNI": "OMNI_*_Merged.csv",
    "PIL": "PIL_*_Merged_Cleaned.csv",
    "SJG": "SJG_*_Merged_Cleaned.csv"
}

for key, pattern in file_patterns.items():
    merged_data = []
    header_saved = False

    for phase in phases:
        phase_path = os.path.join(root_path, phase)
        files = glob.glob(os.path.join(phase_path, pattern))

        for file in sorted(files):
            with open(file, 'r') as f:
                lines = f.readlines()

            if not header_saved:
                merged_data.extend(lines)
                header_saved = True
            else:
                merged_data.extend(lines[1:])  # skip header after first file

    output_file = os.path.join(root_path, f"{key}_Master_Merged.csv")
    with open(output_file, 'w') as f_out:
        f_out.writelines(merged_data)

    print(f"{key} master file created: {output_file}")
