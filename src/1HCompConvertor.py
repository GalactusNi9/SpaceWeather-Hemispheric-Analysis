# -*- coding: utf-8 -*-
"""
Created on Fri Jun 20 19:40:30 2025

@author: Particle Physicist
"""

import matplotlib
matplotlib.use('TkAgg')  # Use a GUI backend

import numpy as np
from datetime import datetime, timedelta
import matplotlib.pyplot as plt

file_path = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Maximum\PIL2014download\2014\PIL\pil20140101dmin.min"

# Load file
with open(file_path, 'r') as f:
    lines = f.readlines()

# Skip header
start_idx = next(i for i, line in enumerate(lines) if line.strip().startswith("DATE"))
data_lines = lines[start_idx + 1:]

# Parse
timestamps, H, D, Z, F = [], [], [], [], []

for line in data_lines:
    parts = line.strip().split()
    if len(parts) < 7: continue
    try:
        dt = datetime.strptime(parts[0] + " " + parts[1], "%Y-%m-%d %H:%M:%S.%f")
        timestamps.append(dt)
        H.append(float(parts[3]))
        D.append(float(parts[4]))
        Z.append(float(parts[5]))
        F.append(float(parts[6]))
    except:
        continue

timestamps = np.array(timestamps)
H = np.array(H)
D = np.array(D)
Z = np.array(Z)
F = np.array(F)

# Convert to hourly bins
start = timestamps[0].replace(minute=0, second=0, microsecond=0)
end = timestamps[-1]
n_hours = int((end - start).total_seconds() / 3600) + 1
hour_bins = np.array([start + timedelta(hours=i) for i in range(n_hours)])

# Init hourly arrays
H_hour = np.full(n_hours, np.nan)
D_hour = np.full(n_hours, np.nan)
Z_hour = np.full(n_hours, np.nan)
F_hour = np.full(n_hours, np.nan)

# Fill hourly data using mean per hour
for i in range(n_hours):
    mask = (timestamps >= hour_bins[i]) & (timestamps < hour_bins[i] + timedelta(hours=1))
    if np.any(mask):
        H_hour[i] = np.nanmean(H[mask])
        D_hour[i] = np.nanmean(D[mask])
        Z_hour[i] = np.nanmean(Z[mask])
        F_hour[i] = np.nanmean(F[mask])

# Interpolate missing values (linear)
def interp_nan(x):
    nans = np.isnan(x)
    not_nans = ~nans
    if not np.any(not_nans):
        return x
    return np.interp(np.arange(len(x)), np.flatnonzero(not_nans), x[not_nans])

H_interp = interp_nan(H_hour)
D_interp = interp_nan(D_hour)
Z_interp = interp_nan(Z_hour)
F_interp = interp_nan(F_hour)

# Remove outliers using z-score
def remove_spikes(arr, threshold=3):
    mean = np.nanmean(arr)
    std = np.nanstd(arr)
    z = np.abs((arr - mean) / std)
    return np.where(z > threshold, np.nan, arr)

H_clean = remove_spikes(H_interp)
D_clean = remove_spikes(D_interp)
Z_clean = remove_spikes(Z_interp)
F_clean = remove_spikes(F_interp)

# Re-interpolate after spike removal
H_final = interp_nan(H_clean)
D_final = interp_nan(D_clean)
Z_final = interp_nan(Z_clean)
F_final = interp_nan(F_clean)

# Plot
plt.plot(hour_bins, H_final, label="H (nT)")
plt.title("Hourly H Component (Cleaned) - NumPy Only")
plt.xlabel("Time")
plt.ylabel("nT")
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
plt.show(block=True)

# Save to file
out = np.column_stack([hour_bins, H_final, D_final, Z_final, F_final])
np.savetxt("PIL_Hourly_Cleaned_numpyd.csv", out, fmt="%s,%.2f,%.2f,%.2f,%.2f",
           header="Datetime,H,D,Z,F", comments='')

print("Saved to: PIL_Hourly_Cleaned_numpy.csv")
