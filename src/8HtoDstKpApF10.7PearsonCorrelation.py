# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 19:56:13 2025

@author: Particle Physicist
"""

import csv
from math import sqrt, erf
import matplotlib.pyplot as plt

# === Pearson correlation function ===
def pearson(x, y):
    n = len(x)
    sum_x = sum(x)
    sum_y = sum(y)
    sum_x2 = sum([i ** 2 for i in x])
    sum_y2 = sum([i ** 2 for i in y])
    sum_xy = sum([x[i] * y[i] for i in range(n)])
    numerator = sum_xy - (sum_x * sum_y / n)
    denominator = sqrt((sum_x2 - (sum_x ** 2) / n) * (sum_y2 - (sum_y ** 2) / n))
    if denominator == 0:
        return 0
    return numerator / denominator

# === Two-tailed p-value for correlation ===
def p_value(r, n):
    if n <= 2:
        return 1.0
    t = abs(r) * sqrt((n - 2) / (1 - r**2))
    df = n - 2
    z = t / sqrt(df)
    p = 1 - erf(z / sqrt(2))
    return p * 2

# === File paths ===
ground_file = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Maximum\PIL2014download\2014\PIL\PIL_2014_Merged_Cleaned.csv"
omni_file = "OMNI_Hourly_Cleaned.csv"
output_file = "correlation_2014.txt"

# === Data containers ===
H = []
Kp, Dst, Ap, F107 = [], [], [], []

# === Read both files ===
with open(ground_file, 'r') as gf, open(omni_file, 'r') as of:
    ground_reader = csv.reader(gf)
    omni_reader = csv.reader(of)
    next(ground_reader)
    next(omni_reader)
    for g_row, o_row in zip(ground_reader, omni_reader):
        try:
            H.append(float(g_row[1]))
            Kp.append(float(o_row[2]))
            Dst.append(float(o_row[3]))
            Ap.append(float(o_row[4]))
            F107.append(float(o_row[1]))
        except:
            continue

# === Correlation and Plotting ===
correlations = {}
significance_results = {}
omni_indices = {
    'Kp': Kp,
    'Dst': Dst,
    'Ap': Ap,
    'F10.7': F107
}

# Save individual plots
for label, data in omni_indices.items():
    r = pearson(H, data)
    p = p_value(r, len(H))
    sig = "Significant ✅" if p < 0.05 else "Not significant ❌"
    correlations[label] = r
    significance_results[label] = (p, sig)

    plt.figure(figsize=(8, 4))
    plt.scatter(H, data, alpha=0.5, s=10)
    plt.title(f"H vs {label} (r = {r:.4f}, p = {p:.5f}) - {sig}")
    plt.xlabel("H")
    plt.ylabel(label)
    plt.grid(True)
    plt.tight_layout()
    plt.savefig(f"H_vs_{label}.png")
    plt.close()

# Save combined plot
fig, axs = plt.subplots(2, 2, figsize=(12, 8))
fig.suptitle("H vs OMNI Indices (2014)")

for ax, (label, data) in zip(axs.flat, omni_indices.items()):
    r = correlations[label]
    p, sig = significance_results[label]
    ax.scatter(H, data, alpha=0.5, s=10)
    ax.set_title(f"{label} (r = {r:.4f}, p = {p:.5f})")
    ax.set_xlabel("H")
    ax.set_ylabel(label)
    ax.grid(True)

plt.tight_layout(rect=[0, 0.03, 1, 0.95])
plt.savefig("H_vs_All_OMNI.png")
plt.close()

# Save correlation results with significance
with open(output_file, 'w') as out:
    out.write("Pearson Correlation Coefficients and Significance (2014):\n\n")
    for label in omni_indices:
        r = correlations[label]
        p, sig = significance_results[label]
        out.write(f"H vs {label}:\n")
        out.write(f"  r = {r:.4f}\n")
        out.write(f"  p = {p:.5f} ({sig})\n\n")

print("✅ Correlations and significance testing complete.")
print("📂 Saved: correlation_2014.txt, H_vs_[Index].png, H_vs_All_OMNI.png")
