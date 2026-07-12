# -*- coding: utf-8 -*-
"""
Created on Sat Jun 21 12:58:22 2025

@author: Particle Physicist
"""
#Record storm start, peak, and recovery times
import numpy as np
from datetime import datetime

storms = np.genfromtxt("Dst_Storm_Events.csv", delimiter=",", dtype=str, skip_header=1)

storm_info = []
for s in storms:
    try:
        start = datetime.strptime(s[1], "%Y-%m-%d %H:%M:%S")
        peak = datetime.strptime(s[2], "%Y-%m-%d %H:%M:%S")
        end = datetime.strptime(s[3], "%Y-%m-%d %H:%M:%S")
        storm_info.append({
            "start": start,
            "peak": peak,
            "end": end,
            "duration_hr": (end - start).total_seconds() / 3600,
            "recovery_hr": (end - peak).total_seconds() / 3600
        })
    except:
        continue

# Print a summary
for i, s in enumerate(storm_info[:5]):
    print(f"Storm {i+1}: Start = {s['start']}, Peak = {s['peak']}, End = {s['end']}, Duration = {s['duration_hr']} hrs, Recovery = {s['recovery_hr']} hrs")

def get_season(dt):
    y = dt.year
    seasons = {
        "Spring": (datetime(y, 3, 21), datetime(y, 6, 20)),
        "Summer": (datetime(y, 6, 21), datetime(y, 9, 22)),
        "Fall":   (datetime(y, 9, 23), datetime(y, 12, 20)),
        "Winter": (datetime(y, 12, 21), datetime(y+1, 3, 20)),
    }
    for season, (start, end) in seasons.items():
        if start <= dt < end:
            return season
    return "Winter"  # for Jan–March fallback

#Tag each storm with season
def get_solar_phase(year):
    if 1996 <= year <= 2008:
        return "Solar Cycle 23"
    elif 2009 <= year <= 2019:
        return "Solar Cycle 24"
    elif 2020 <= year <= 2030:
        return "Solar Cycle 25"
    return "Unknown"

