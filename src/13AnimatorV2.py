# -*- coding: utf-8 -*-
"""
Created on Sat Jul  5 19:01:20 2025

@author: Particle Physicist
"""

import csv
import os
from datetime import datetime
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Filepath directory
base_path = r"E:\UniversaLProjectS\DstKpApF10.7"
omni_path = os.path.join(base_path, "OMNI_Master_Merged.csv")
pil_path = os.path.join(base_path, "PIL_Master_Merged.csv")
sjg_path = os.path.join(base_path, "SJG_Master_Merged.csv")

# Storage
datetimes, sjg_vals, kp, dst, ap, f107 = [], [], [], [], [], []

# Read SJG
with open(sjg_path, newline='') as f:
    reader = csv.reader(f)
    header = next(reader)
    print(f"SJG Header: {header}")
    for i, row in enumerate(reader):
        if len(row) < 2: continue
        try:
            dt = datetime.strptime(row[0], "%d/%m/%Y %H:%M")
            h_val = float(row[1])
            datetimes.append(dt)
            sjg_vals.append(h_val)
            if i < 10:
                print(f"SJG Row {i}: {row}")
        except:
            continue

# Read OMNI
with open(omni_path, newline='') as f:
    reader = csv.reader(f)
    header = next(reader)
    print(f"OMNI Header: {header}")
    for i, row in enumerate(reader):
        if len(row) < 5: continue
        try:
            f107.append(float(row[1]))
            kp.append(float(row[2]))
            dst.append(float(row[3]))
            ap.append(float(row[4]))
            if i < 10:
                print(f"OMNI Row {i}: {row}")
        except:
            continue

# Read PIL (optional)
pil_datetimes, pil_vals = [], []
with open(pil_path, newline='') as f:
    reader = csv.reader(f)
    next(reader)
    for row in reader:
        if len(row) < 2: continue
        try:
            dt = datetime.strptime(row[0], "%d/%m/%Y %H:%M")
            val = float(row[1])
            pil_datetimes.append(dt)
            pil_vals.append(val)
        except:
            continue


# Frame count
frame_count = min(len(sjg_vals), len(kp)) // 50
if frame_count == 0:
    raise ValueError("No data loaded or not enough data.")

print(f"Total SJG records: {len(sjg_vals)}")
print(f"Total OMNI records: {len(kp)}")
print(f"Using {frame_count} animation frames.")

# Set up plot
fig, axs = plt.subplots(3, 1, figsize=(12, 9))

def update(frame):
    idx = frame * 50
    axs[0].cla()
    axs[1].cla()
    axs[2].cla()

    # Subplot 1: SJG and PIL
    axs[0].plot(datetimes[:idx], sjg_vals[:idx], label="SJG (North)", color='blue')
    axs[0].plot(pil_datetimes[:idx], pil_vals[:idx], label="PIL (South)", color='brown')
    axs[0].set_title("Geomagnetic Field H-Component: SJG vs PIL")
    axs[0].set_ylabel("H (nT)")
    axs[0].legend()

    # Subplot 2: Kp and Dst
    axs[1].plot(datetimes[:idx], kp[:idx], label="Kp", color='green')
    axs[1].plot(datetimes[:idx], dst[:idx], label="Dst", color='red')
    axs[1].set_title("Kp and Dst Indices")
    axs[1].set_ylabel("Index")
    axs[1].legend()

    # Subplot 3: Ap and F10.7
    axs[2].plot(datetimes[:idx], ap[:idx], label="Ap", color='orange')
    axs[2].plot(datetimes[:idx], f107[:idx], label="F10.7", color='purple')
    axs[2].set_title("Ap and F10.7 Indices")
    axs[2].set_ylabel("Index")
    axs[2].set_xlabel("Datetime")
    axs[2].legend()


ani = animation.FuncAnimation(fig, update, frames=frame_count, blit=False)

# Save to file
save_path = os.path.join(base_path, "SpaceWeather_Simulation.gif")
ani.save(save_path, writer='pillow', fps=10)
#print(f"Animation saved to: {save_path}")

print(f"Animation saved to: {save_path}")

plt.tight_layout()
plt.show()
