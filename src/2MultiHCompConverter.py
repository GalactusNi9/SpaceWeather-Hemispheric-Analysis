# -*- coding: utf-8 -*-
"""
Created on Fri Jun 20 20:31:13 2025

@author: Particle Physicist
"""

import numpy as np
import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
from datetime import datetime, timedelta
import os

# ----- Config -----
data_dir = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Minimum\PIL2008download\2008\PIL"
output_dir = data_dir  # You can change this if you want output elsewhere
threshold = 3  # Z-score threshold for outlier removal

# ----- Functions -----
def interp_nan(x):
    nans = np.isnan(x)
    not_nans = ~nans
    if not np.any(not_nans):
        return x
    return np.interp(np.arange(len(x)), np.flatnonzero(not_nans), x[not_nans])

def remove_spikes(arr, threshold=3):
    mean = np.nanmean(arr)
    std = np.nanstd(arr)
    z = np.abs((arr - mean) / std)
    return np.where(z > threshold, np.nan, arr)

def process_file(filepath):
    with open(filepath, 'r') as f:
        lines = f.readlines()

    # Find data start
    try:
        start_idx = next(i for i, line in enumerate(lines) if line.strip().startswith("DATE"))
    except StopIteration:
        print(f"Skipping {filepath} (no data header)")
        return

    data_lines = lines[start_idx + 1:]

    timestamps, H, D, Z, F = [], [], [], [], []

    for line in data_lines:
        parts = line.strip().split()
        if len(parts) < 7:
            continue
        try:
            dt = datetime.strptime(parts[0] + " " + parts[1], "%Y-%m-%d %H:%M:%S.%f")
            timestamps.append(dt)
            H.append(float(parts[3]))
            D.append(float(parts[4]))
            Z.append(float(parts[5]))
            F.append(float(parts[6]))
        except:
            continue

    if len(timestamps) == 0:
        print(f"Skipping {filepath} (no data parsed)")
        return

    timestamps = np.array(timestamps)
    H = interp_nan(np.array(H))
    D = interp_nan(np.array(D))
    Z = interp_nan(np.array(Z))
    F = interp_nan(np.array(F))

    # Resample to hourly
    start = timestamps[0].replace(minute=0, second=0, microsecond=0)
    end = timestamps[-1]
    n_hours = int((end - start).total_seconds() / 3600) + 1
    hour_bins = np.array([start + timedelta(hours=i) for i in range(n_hours)])

    def hourly_mean(arr):
        result = np.full(n_hours, np.nan)
        for i in range(n_hours):
            mask = (timestamps >= hour_bins[i]) & (timestamps < hour_bins[i] + timedelta(hours=1))
            if np.any(mask):
                result[i] = np.nanmean(arr[mask])
        return interp_nan(remove_spikes(result, threshold))

    H_hour = hourly_mean(H)
    D_hour = hourly_mean(D)
    Z_hour = hourly_mean(Z)
    F_hour = hourly_mean(F)

    # Save CSV
    filename_base = os.path.splitext(os.path.basename(filepath))[0]
    csv_path = os.path.join(output_dir, f"{filename_base}_cleaned.csv")
    out = np.column_stack([hour_bins, H_hour, D_hour, Z_hour, F_hour])
    np.savetxt(csv_path, out, fmt="%s,%.2f,%.2f,%.2f,%.2f", header="Datetime,H,D,Z,F", comments='')
    print(f"Saved CSV: {csv_path}")

    # Plot
    plt.figure(figsize=(10, 4))
    plt.plot(hour_bins, H_hour, label="H", color='b')
    plt.title(f"{filename_base} - H Component (Hourly Cleaned)")
    plt.xlabel("Time")
    plt.ylabel("nT")
    plt.grid(True)
    plt.legend()
    plt.tight_layout()

    plot_path = os.path.join(output_dir, f"{filename_base}_plot.png")
    plt.savefig(plot_path)
    plt.close()
    print(f"Saved Plot: {plot_path}")

# ----- Batch Process -----
files = [f for f in os.listdir(data_dir) if f.lower().endswith(".min")]
print(f"Found {len(files)} files.")

for fname in files:
    print(f"Processing: {fname}")
    process_file(os.path.join(data_dir, fname))
