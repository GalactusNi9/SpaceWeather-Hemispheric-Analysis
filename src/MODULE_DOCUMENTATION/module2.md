# Module 2 — 2MultiHCompConverter

## Technical Module Documentation

---

# Purpose

`2MultiHCompConverter.py` automates the preprocessing of multiple INTERMAGNET minute-resolution files contained within a single directory.

It expands the functionality of Module 1 by batch-processing an entire collection of daily observatory files without requiring manual execution for each dataset.

This module significantly reduces preprocessing time when preparing yearly geomagnetic datasets.

---

# Position in Workflow

```text
Raw INTERMAGNET Daily Files

↓

2MultiHCompConverter.py

↓

Hourly Cleaned Daily CSV Files

↓

Module 7
```

---

# Input

A directory containing multiple INTERMAGNET `.min` files.

Example

```text
PIL2008download/
    pil20080101dmin.min
    pil20080102dmin.min
    ...
```

---

# Output

For every processed file the module generates:

* Cleaned hourly CSV
* Verification plot (.png)

Typical output names:

```text
pil20080101dmin_cleaned.csv

pil20080101dmin_plot.png
```

---

# Scientific Operations

For every file inside the directory the module performs:

1. Locate INTERMAGNET file.
2. Read metadata.
3. Detect beginning of scientific observations.
4. Parse timestamps.
5. Extract H component.
6. Extract D component.
7. Extract Z component.
8. Extract F component.
9. Handle missing observations.
10. Perform hourly averaging.
11. Remove statistical outliers.
12. Interpolate remaining gaps.
13. Export cleaned hourly dataset.
14. Produce quality-control plot.

---

# Algorithms

Implemented numerical methods include:

* Linear interpolation
* Hourly averaging
* Z-score spike detection
* NumPy array processing
* Automated directory traversal

---

# Input Variables

Each INTERMAGNET file provides:

* Datetime
* H
* D
* Z
* F

---

# Output Variables

Each cleaned CSV contains:

* Datetime
* H
* D
* Z
* F

---

# Generated Products

For every daily observatory record:

* One cleaned CSV
* One H-component figure

These products become the inputs for yearly merging.

---

# Dependencies

* NumPy
* Matplotlib
* datetime
* os

---

# Batch Processing Strategy

The module automatically:

* scans the directory,
* identifies valid `.min` files,
* skips malformed files,
* continues processing after recoverable errors,
* reports processing progress to the console.

This allows hundreds of daily observatory files to be converted with a single execution.

---

# Error Handling

The module safely ignores:

* missing headers,
* empty files,
* unreadable observations,
* malformed numerical values.

Processing continues even if individual files cannot be interpreted.

---

# Typical Usage

Update the directory path to the desired INTERMAGNET dataset and execute the module.

Each execution processes all valid daily files found within the specified folder.

---

# Generated Dataset

The resulting cleaned daily CSV files are subsequently merged into yearly observatory datasets by Module 7.

---

# Next Module

```text
3DstConverter.py
```
