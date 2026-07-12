# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 10:32:03 2025

@author: Particle Physicist
"""

import numpy as np
from datetime import datetime
import matplotlib.pyplot as plt
import csv

# Custom Pearson correlation function
def pearson_correlation(x, y):
    x_mean = np.mean(x)
    y_mean = np.mean(y)
    num = np.sum((x - x_mean) * (y - y_mean))
    denom = np.sqrt(np.sum((x - x_mean)**2) * np.sum((y - y_mean)**2))
    return num / denom if denom != 0 else 0

# Load OMNI data
data = np.genfromtxt("OMNI_Hourly_Cleaned.csv", delimiter=",", dtype=str, skip_header=1)
time = np.array([datetime.strptime(t, "%Y-%m-%d %H:%M:%S") for t in data[:, 0]])
f107 = data[:, 1].astype(float)
kp = data[:, 2].astype(float)
dst = data[:, 3].astype(float)
ap = data[:, 4].astype(float)

# Load storm events
storms = np.genfromtxt("Dst_Storm_Events.csv", delimiter=",", dtype=str, skip_header=1)

storm_indices = []
for s in storms:
    try:
        t_start = datetime.strptime(s[1], "%Y-%m-%d %H:%M:%S")
        t_end = datetime.strptime(s[3], "%Y-%m-%d %H:%M:%S")
    except Exception:
        continue
    mask = (time >= t_start) & (time <= t_end)
    storm_indices.extend(np.where(mask)[0])

storm_indices = np.unique(storm_indices)

# Extract storm data
dst_s = dst[storm_indices]
kp_s = kp[storm_indices]
ap_s = ap[storm_indices]
f107_s = f107[storm_indices]

# Compute correlations
r_dst_kp = pearson_correlation(dst_s, kp_s)
r_dst_ap = pearson_correlation(dst_s, ap_s)
r_dst_f107 = pearson_correlation(dst_s, f107_s)

# Print results
print(f"Correlation (Dst vs Kp):    {r_dst_kp:.3f}")
print(f"Correlation (Dst vs Ap):    {r_dst_ap:.3f}")
print(f"Correlation (Dst vs F10.7): {r_dst_f107:.3f}")

# Export to CSV
with open("correlation_results.csv", mode="w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["Variable Pair", "Correlation Coefficient"])
    writer.writerow(["Dst vs Kp", f"{r_dst_kp:.3f}"])
    writer.writerow(["Dst vs Ap", f"{r_dst_ap:.3f}"])
    writer.writerow(["Dst vs F10.7", f"{r_dst_f107:.3f}"])

print("✅ Correlation results exported to 'correlation_results.csv'")

# Plotting function
def plot_relationship(x, y, x_label, title, filename):
    plt.figure(figsize=(6, 4))
    plt.scatter(x, y, alpha=0.5)
    # Fit linear regression line
    m, b = np.polyfit(x, y, 1)
    plt.plot(x, m * x + b, color="red", linewidth=2, label="Best fit line")
    plt.xlabel(x_label)
    plt.ylabel("Dst Index")
    plt.title(title)
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.savefig(filename, dpi=300)
    print(f"✅ Plot saved as: {filename}")
    plt.show()


plot_relationship(kp_s, dst_s, "Kp Index", "Dst vs Kp", "Dst_vs_Kp.png")
plot_relationship(ap_s, dst_s, "Ap Index", "Dst vs Ap", "Dst_vs_Ap.png")
plot_relationship(f107_s, dst_s, "F10.7 cm Flux", "Dst vs F10.7", "Dst_vs_F107.png")

