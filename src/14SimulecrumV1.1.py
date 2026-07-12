# -*- coding: utf-8 -*-
"""
Created on Sat Jul  5 19:17:19 2025

@author: Particle Physicist
"""

import csv
import os
from datetime import datetime
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# === File Paths ===
base_path = r"E:\UniversaLProjectS\DstKpApF10.7"
omni_path = os.path.join(base_path, "OMNI_Master_Merged.csv")
pil_path = os.path.join(base_path, "PIL_Master_Merged.csv")
sjg_path = os.path.join(base_path, "SJG_Master_Merged.csv")

# === Load OMNI Data ===
omni_times, kp_vals, dst_vals = [], [], []
with open(omni_path, newline='') as f:
    reader = csv.reader(f)
    header = next(reader)
    print(f"[INFO] OMNI Header: {header}")
    time_idx = header.index("Datetime")
    kp_idx = header.index("Kp")
    dst_idx = header.index("Dst")

    for i, row in enumerate(reader):
        if len(row) <= max(time_idx, kp_idx, dst_idx):
            continue
        try:
            time = datetime.strptime(row[time_idx], "%Y-%m-%d %H:%M:%S")
            kp = float(row[kp_idx])
            dst = float(row[dst_idx])
            omni_times.append(time)
            kp_vals.append(kp)
            dst_vals.append(dst)
            if i < 3:
                print(f"[DEBUG] OMNI Row {i}: {row}")
        except Exception as e:
            print(f"[WARNING] OMNI Parse Error (Row {i}): {e}")
            continue

# === Load SJG Data ===
sjg_times, sjg_vals = [], []
with open(sjg_path, newline='') as f:
    reader = csv.reader(f)
    header = next(reader)
    print(f"[INFO] SJG Header: {header}")
    for i, row in enumerate(reader):
        if len(row) < 2: continue
        try:
            sjg_times.append(datetime.strptime(row[0], "%d/%m/%Y %H:%M"))
            sjg_vals.append(float(row[1]))
            if i < 3:
                print(f"[DEBUG] SJG Row {i}: {row}")
        except Exception as e:
            print(f"[WARNING] SJG Parse Error (Row {i}): {e}")
            continue

# === Load PIL Data ===
pil_times, pil_vals = [], []
with open(pil_path, newline='') as f:
    reader = csv.reader(f)
    header = next(reader)
    print(f"[INFO] PIL Header: {header}")
    for i, row in enumerate(reader):
        if len(row) < 2: continue
        try:
            pil_times.append(datetime.strptime(row[0], "%d/%m/%Y %H:%M"))
            pil_vals.append(float(row[1]))
            if i < 3:
                print(f"[DEBUG] PIL Row {i}: {row}")
        except Exception as e:
            print(f"[WARNING] PIL Parse Error (Row {i}): {e}")
            continue

# === Determine Frame Count ===
min_len = min(len(sjg_vals), len(pil_vals), len(kp_vals), len(dst_vals))
frame_count = min_len // 50
if frame_count == 0:
    raise ValueError("❌ Not enough data for animation (need at least 50 records).")

print(f"[INFO] Total valid records: {min_len}")
print(f"[INFO] Using {frame_count} animation frames.")

# === Plot Setup ===
fig, axs = plt.subplots(2, 1, figsize=(12, 8))

def update(frame):
    idx = frame * 50
    axs[0].cla()
    axs[1].cla()

    # SJG vs Dst/Kp (Northern Hemisphere)
    axs[0].plot(sjg_times[:idx], sjg_vals[:idx], label="SJG (North)", color='blue')
    axs[0].plot(omni_times[:idx], dst_vals[:idx], label="Dst Index", color='red', linestyle='--')
    axs[0].plot(omni_times[:idx], kp_vals[:idx], label="Kp Index", color='green', linestyle='--')
    axs[0].set_title("SJG (North) Response to OMNI (Dst, Kp)")
    axs[0].set_ylabel("nT / Index")
    axs[0].legend()
    axs[0].grid(True)

    # PIL vs Dst/Kp (Southern Hemisphere)
    axs[1].plot(pil_times[:idx], pil_vals[:idx], label="PIL (South)", color='brown')
    axs[1].plot(omni_times[:idx], dst_vals[:idx], label="Dst Index", color='red', linestyle='--')
    axs[1].plot(omni_times[:idx], kp_vals[:idx], label="Kp Index", color='green', linestyle='--')
    axs[1].set_title("PIL (South) Response to OMNI (Dst, Kp)")
    axs[1].set_ylabel("nT / Index")
    axs[1].set_xlabel("Datetime")
    axs[1].legend()
    axs[1].grid(True)

# === Animation ===
ani = animation.FuncAnimation(fig, update, frames=frame_count, blit=False)

# === Save as GIF ===
save_path = os.path.join(base_path, "Hemispheric_Geomagnetic_Response.gif")
ani.save(save_path, writer='pillow', fps=10)

print(f"✅ Animation saved to: {save_path}")
plt.tight_layout()
plt.show()
