# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 21:10:34 2025

@author: Particle Physicist
"""

import os
import csv
import math
import matplotlib.pyplot as plt

# === Pearson correlation ===
def pearson(x, y):
    n = len(x)
    if n == 0:
        return 0
    sum_x = sum(x)
    sum_y = sum(y)
    sum_x2 = sum(i ** 2 for i in x)
    sum_y2 = sum(i ** 2 for i in y)
    sum_xy = sum(x[i] * y[i] for i in range(n))
    numerator = sum_xy - (sum_x * sum_y / n)
    denominator = math.sqrt((sum_x2 - (sum_x ** 2) / n) * (sum_y2 - (sum_y ** 2) / n))
    if denominator == 0:
        return 0
    return numerator / denominator

# === Significance testing using t-distribution approximation ===
def t_test(r, n):
    if n < 3:
        return 0, 1  # Too few data points
    t = abs(r) * math.sqrt((n - 2) / (1 - r**2 + 1e-10))  # Avoid division by zero
    df = n - 2
    # Approximate p-value using survival function of t-distribution
    a = df / (df + t**2)
    p = 2 * betainc(0.5 * df, 0.5, a)
    return t, p

# === Regularized incomplete beta function approximation (needed for p-value) ===
def betainc(a, b, x, max_iter=100):
    if x == 0 or x == 1:
        return x
    bt = math.exp(math.lgamma(a + b) - math.lgamma(a) - math.lgamma(b) +
                  a * math.log(x) + b * math.log(1 - x))
    if x < (a + 1) / (a + b + 2):
        return bt * contfrac(a, b, x, max_iter) / a
    else:
        return 1 - bt * contfrac(b, a, 1 - x, max_iter) / b

def contfrac(a, b, x, max_iter):
    eps = 1e-14
    am, bm = 1.0, 1.0
    az = 1.0
    qab, qap, qam = a + b, a + 1, a - 1
    bz = 1 - qab * x / qap
    for m in range(1, max_iter + 1):
        m2 = 2 * m
        d = m * (b - m) * x / ((qam + m2 - 1) * (a + m2 - 1))
        ap = az + d * am
        bp = bz + d * bm
        d = -(a + m) * (qab + m) * x / ((a + m2) * (qap + m2))
        app = ap + d * az
        bpp = bp + d * bz
        aold = az
        am, bm = az, bz
        az, bz = app / bpp, 1.0
        if abs(az - aold) < eps * abs(az):
            return az
    return az

# === Directory and File Logic ===
root_dir = r"E:\UniversaLProjectS\DstKpApF10.7"
phases = ["Solar_Maximum", "Solar_Minimum", "Ascending", "Descending"]

for phase in phases:
    phase_path = os.path.join(root_dir, phase)
    for year_folder in os.listdir(phase_path):
        year_path = os.path.join(phase_path, year_folder)
        if not os.path.isdir(year_path):
            continue

        year = ''.join(filter(str.isdigit, year_folder))
        ground_file = os.path.join(year_path, f"PIL_{year}_Merged_Cleaned.csv")
        omni_file = os.path.join(year_path, f"OMNI_{year}_Cleaned.csv")
        output_file = os.path.join(year_path, f"correlation_{year}.txt")

        # === Data containers ===
        H = []
        Kp, Dst, Ap, F107 = [], [], [], []

        # === Read ===
        try:
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
        except FileNotFoundError:
            print(f"❌ Skipped {year} (missing file)")
            continue

        indices = {'Kp': Kp, 'Dst': Dst, 'Ap': Ap, 'F10.7': F107}
        results = {}

        # === Plotting and Calculation ===
        for label, data in indices.items():
            r = pearson(H, data)
            t, p = t_test(r, len(H))
            results[label] = (r, p)

            plt.figure(figsize=(8, 4))
            plt.scatter(H, data, alpha=0.5, s=10)
            plt.title(f"H vs {label} (r = {r:.4f}, p = {p:.4f})")
            plt.xlabel("H")
            plt.ylabel(label)
            plt.grid(True)
            plt.tight_layout()
            plt.savefig(os.path.join(year_path, f"H_vs_{label}.png"))
            plt.close()

        # === Combined plot ===
        fig, axs = plt.subplots(2, 2, figsize=(12, 8))
        fig.suptitle(f"H vs OMNI Indices ({year})")
        for ax, (label, data) in zip(axs.flat, indices.items()):
            r, p = results[label]
            ax.scatter(H, data, alpha=0.5, s=10)
            ax.set_title(f"H vs {label} (r={r:.4f}, p={p:.4f})")
            ax.set_xlabel("H")
            ax.set_ylabel(label)
            ax.grid(True)
        plt.tight_layout(rect=[0, 0.03, 1, 0.95])
        plt.savefig(os.path.join(year_path, f"H_vs_All_OMNI.png"))
        plt.close()

        # === Save to file ===
        with open(output_file, 'w') as out:
            out.write(f"Pearson Correlation & Significance ({year}):\n\n")
            for label, (r, p) in results.items():
                sig = "Significant ✅" if p < 0.05 else "Not significant ❌"
                out.write(f"H vs {label}:\n  r = {r:.4f}\n  p = {p:.4f} ({sig})\n\n")

        print(f"✅ Done {phase} {year}")
