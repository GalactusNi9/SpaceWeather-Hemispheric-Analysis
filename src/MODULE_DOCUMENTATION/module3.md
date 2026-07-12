# Module 3 — 3DstConverter

## Technical Module Documentation

---

# Purpose

`3DstConverter.py` preprocesses raw OMNI hourly space weather data into a standardized CSV format suitable for geomagnetic analysis.

The module extracts the principal solar-terrestrial parameters used throughout the project and converts them into a clean, machine-readable dataset.

Unlike the INTERMAGNET preprocessing modules, this module operates on already hourly OMNI observations and therefore focuses primarily on parsing, cleaning, and formatting rather than temporal resampling.

---

# Position in Workflow

```text
Raw OMNI Hourly Data

↓

3DstConverter.py

↓

OMNI_Hourly_Cleaned.csv

↓

Modules 4, 5, 8 and 9
```

---

# Input

One raw OMNI hourly text dataset.

Example

```text
OMNI2_H0_MRG1HR_3877472.txt1
```

The input file contains hourly measurements including:

* Observation timestamp
* Solar radio flux (F10.7)
* Planetary Kp index
* Dst index
* Ap index

---

# Output

The module generates:

```text
OMNI_Hourly_Cleaned.csv
```

with the following columns:

```text
Datetime
F10.7
Kp
Dst
Ap
```

It also generates a verification figure showing hourly Dst evolution.

---

# Scientific Operations

The module performs the following processing steps:

1. Read raw OMNI hourly text file.
2. Ignore metadata comments.
3. Skip unit-definition lines.
4. Parse timestamps.
5. Convert timestamps into Python datetime objects.
6. Extract F10.7 solar flux.
7. Convert Kp values from integer representation to decimal values.
8. Extract Dst index.
9. Extract Ap index.
10. Store observations in structured arrays.
11. Export cleaned CSV dataset.
12. Produce verification plot of hourly Dst.

---

# Algorithms

Implemented procedures include:

* Text parsing
* Datetime conversion
* Numerical type conversion
* Array construction using NumPy
* Scientific visualization

---

# Input Variables

The module reads:

* Datetime
* F10.7
* Kp ×10
* Dst
* Ap

---

# Output Variables

The exported dataset contains:

* Datetime
* F10.7
* Kp
* Dst
* Ap

---

# Data Transformation

One important preprocessing step is performed on the Kp index.

The raw OMNI files store Kp values multiplied by ten.

Example:

```text
Raw Value : 37

↓

Processed Value : 3.7
```

This conversion restores the official geomagnetic Kp index values used in scientific analyses.

---

# Generated Figures

The module produces an hourly Dst time-series plot including reference storm thresholds:

* Moderate storm threshold (Dst = -50 nT)
* Intense storm threshold (Dst = -100 nT)

These visual guides assist in validating the cleaned dataset prior to storm detection.

---

# Dependencies

* NumPy
* Matplotlib
* datetime

---

# Error Handling

The module automatically skips:

* metadata lines,
* empty records,
* malformed observations,
* invalid timestamps,
* incomplete rows.

Any unreadable record is ignored while processing continues uninterrupted.

---

# Typical Usage

Update the file path to the desired OMNI hourly dataset and execute the module.

Each execution converts one raw OMNI file into a cleaned CSV ready for downstream analysis.

---

# Generated Dataset

The cleaned OMNI dataset becomes the principal input for:

* storm detection,
* correlation analysis,
* hemispheric comparison,
* master dataset generation,
* scientific visualization.

---

# Next Module

```text
4StormDetector.py
```
