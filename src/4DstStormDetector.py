# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 04:14:54 2025

@author: Particle Physicist
"""

import numpy as np
from datetime import datetime, timedelta

# --- Load the Cleaned CSV ---
data = np.genfromtxt("OMNI_Hourly_Cleaned.csv", delimiter=",", dtype=str, skip_header=1)
timestamps = np.array([datetime.strptime(t, "%Y-%m-%d %H:%M:%S") for t in data[:, 0]])
dst = data[:, 3].astype(float)

# --- Thresholds ---
MODERATE = -50
INTENSE = -100
RECOVERY = -30

# --- Detect Events ---
events = []
in_storm = False
storm_start = None
peak_time = None
peak_value = None

for i in range(len(dst)):
    if dst[i] < MODERATE and not in_storm:
        in_storm = True
        storm_start = timestamps[i]
        peak_value = dst[i]
        peak_time = timestamps[i]
    elif in_storm:
        if dst[i] < peak_value:
            peak_value = dst[i]
            peak_time = timestamps[i]
        if dst[i] > RECOVERY:
            recovery_time = timestamps[i]
            storm_type = "Intense" if peak_value < INTENSE else "Moderate"
            events.append([storm_type, storm_start, peak_time, recovery_time, peak_value])
            in_storm = False

# Handle edge case if file ends mid-storm
if in_storm:
    events.append(["Ongoing", storm_start, peak_time, "Still Below -30", peak_value])

# --- Output Events ---
out_file = "Dst_Storm_Events.csv"
with open(out_file, 'w') as f:
    f.write("Type,Start,Peak,Recovery,PeakDst\n")
    for ev in events:
        f.write(f"{ev[0]},{ev[1]},{ev[2]},{ev[3]},{ev[4]:.1f}\n")

print(f"✅ {len(events)} storms detected and saved to: {out_file}")
