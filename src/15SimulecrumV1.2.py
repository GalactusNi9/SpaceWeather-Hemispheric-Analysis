# -*- coding: utf-8 -*-
"""
Created on Sun Jul  6 02:38:03 2025

@author: Particle Physicist
"""

import os
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib.animation import FFMpegWriter
import matplotlib as mpl
mpl.rcParams['animation.ffmpeg_path'] = r"C:\Users\M\AppData\Local\spyder-6\envs\spyder-runtime\Lib\site-packages\ffmpeg-2025-07-01-git-11d1b71c31-full_build\ffmpeg-2025-07-01-git-11d1b71c31-full_build\bin\ffmpeg.exe"
# === Paths ===
base_path = r"E:\UniversaLProjectS\DstKpApF10.7"
omni_path = os.path.join(base_path, "OMNI_Master_Merged.csv")
pil_path = os.path.join(base_path, "PIL_Master_Merged.csv")
sjg_path = os.path.join(base_path, "SJG_Master_Merged.csv")

# === Load Data ===
def load_column(path, col, skip=1):
    return np.genfromtxt(path, delimiter=",", skip_header=skip, usecols=col)

# Load specific columns
dst = load_column(omni_path, 3)
kp = load_column(omni_path, 4)
sjg = load_column(sjg_path, 1)
pil = load_column(pil_path, 1)

# === Synchronize Length & Downsample ===
min_len = min(len(dst), len(kp), len(sjg), len(pil))
step = 10  # Every 10th sample
indices = np.arange(0, min_len, step)

dst = dst[indices]
kp = kp[indices]
sjg = sjg[indices]
pil = pil[indices]
time = np.arange(len(dst))

# === Setup Plot ===
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6))
fig.suptitle("Evolution of SJG & PIL vs Kp & Dst")

# Line placeholders
line_sjg, = ax1.plot([], [], label="SJG", color="blue")
line_kp1, = ax1.plot([], [], label="Kp", color="orange")
line_dst1, = ax1.plot([], [], label="Dst", color="green")
ax1.set_xlim(0, len(time))
ax1.set_ylim(np.min([sjg, kp, dst]), np.max([sjg, kp, dst]))
ax1.legend()
ax1.set_ylabel("SJG vs Kp/Dst")

line_pil, = ax2.plot([], [], label="PIL", color="purple")
line_kp2, = ax2.plot([], [], label="Kp", color="orange")
line_dst2, = ax2.plot([], [], label="Dst", color="green")
ax2.set_xlim(0, len(time))
ax2.set_ylim(np.min([pil, kp, dst]), np.max([pil, kp, dst]))
ax2.legend()
ax2.set_ylabel("PIL vs Kp/Dst")
ax2.set_xlabel("Time Index")

# === Init Func ===
def init():
    for line in [line_sjg, line_kp1, line_dst1, line_pil, line_kp2, line_dst2]:
        line.set_data([], [])
    return line_sjg, line_kp1, line_dst1, line_pil, line_kp2, line_dst2

# === Update Func ===
def update(frame):
    x = time[:frame]
    line_sjg.set_data(x, sjg[:frame])
    line_kp1.set_data(x, kp[:frame])
    line_dst1.set_data(x, dst[:frame])
    line_pil.set_data(x, pil[:frame])
    line_kp2.set_data(x, kp[:frame])
    line_dst2.set_data(x, dst[:frame])
    return line_sjg, line_kp1, line_dst1, line_pil, line_kp2, line_dst2

# === Animate ===
ani = animation.FuncAnimation(
    fig, update, frames=len(time), init_func=init,
    blit=True, interval=20
)
"""
# === Save Optimized GIF ===
gif_path = os.path.join(base_path, "Evolution_Comparison_Optimized.gif")
ani.save(gif_path, writer='pillow', fps=20, dpi=72)  # Lower DPI helps memory
plt.close()

print(f"✅ Saved: {gif_path}")
"""


# ... your previous code ...

# Save as MP4 instead of GIF
mp4_path = os.path.join(base_path, "Evolution_Comparison_Optimized.mp4")
writer = FFMpegWriter(fps=20, bitrate=1800)
ani.save(mp4_path, writer=writer, dpi=72)
plt.close()

print(f"🎥 MP4 saved successfully: {mp4_path}")
