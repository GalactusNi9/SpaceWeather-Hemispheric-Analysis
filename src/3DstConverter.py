# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 03:37:04 2025

@author: Particle Physicist
"""

import numpy as np
from datetime import datetime
import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt

# --- File Path ---
file_path = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Maximum\2014\OMNI2_H0_MRG1HR_3877472.txt1\OMNI2_H0_MRG1HR_3877472.txt1"

# --- Load & Clean ---
data = []
with open(file_path, 'r') as f:
    for line in f:
        if line.startswith("#") or line.strip() == "":
            continue
        if line.strip().startswith("TIME_AT_CENTER_OF_HOUR"):
            next(f)  # Skip units line
            continue
        parts = line.strip().split()
        if len(parts) < 5:
            continue
        try:
            dt = datetime.strptime(parts[0] + " " + parts[1], "%d-%m-%Y %H:%M:%S.%f")
            f107 = float(parts[2])
            kp = float(parts[3]) / 10  # convert from Kp*10
            dst = float(parts[4])
            ap = float(parts[5])
            data.append([dt, f107, kp, dst, ap])
        except Exception as e:
            print("Skipped line:", e)
            continue

data = np.array(data, dtype=object)

# --- Save to CSV ---
np.savetxt("OMNI_Hourly_Cleaned.csv", data, fmt="%s,%.1f,%.1f,%.1f,%.1f",
           header="Datetime,F10.7,Kp,Dst,Ap", comments='')

print("✅ Cleaned OMNI hourly data saved to: OMNI_Hourly_Cleaned.csv")

# --- Plot Dst (Example) ---
timestamps = data[:, 0]
dst_values = data[:, 3].astype(float)

plt.plot(timestamps, dst_values, label="Dst Index (nT)", color='blue')
plt.axhline(-50, color='orange', linestyle='--', label='Moderate Storm Threshold')
plt.axhline(-100, color='red', linestyle='--', label='Intense Storm Threshold')
plt.title("OMNI Hourly Dst Index")
plt.xlabel("Time")
plt.ylabel("Dst (nT)")
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
