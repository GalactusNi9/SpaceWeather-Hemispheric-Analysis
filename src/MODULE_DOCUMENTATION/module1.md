# Module 1 — 1HCompConvertor

## Technical Module Documentation

---

# Purpose

`1HCompConvertor.py` converts a **single INTERMAGNET minute-resolution geomagnetic data file** into a cleaned hourly dataset suitable for scientific analysis.

It is the first processing stage of the entire software pipeline.

The module performs preprocessing of one observatory file at a time and serves as the prototype for the batch-processing implementation developed in Module 2.

---

# Position in Workflow

```text
Raw INTERMAGNET .min File

↓

1HCompConvertor.py

↓

Hourly Cleaned CSV

↓

Correlation & Visualization
```

---

# Input

Official INTERMAGNET minute-resolution file.

Example

```text
pil20140101dmin.min
```

---

# Output

Generated products include

```text
PIL_Hourly_Cleaned_numpy.csv
```

and

* Hourly H component
* Hourly D component
* Hourly Z component
* Hourly F component

together with a verification plot.

---

# Scientific Operations

The module performs the following sequence:

1. Read raw INTERMAGNET file.
2. Skip metadata header.
3. Extract timestamps.
4. Extract H, D, Z and F components.
5. Convert minute observations to hourly averages.
6. Interpolate missing observations.
7. Detect statistical outliers using Z-score.
8. Remove spikes.
9. Re-interpolate cleaned values.
10. Plot cleaned H-component.
11. Export cleaned CSV.

---

# Algorithms

Implemented methods include:

* Hourly averaging
* Linear interpolation
* Z-score outlier detection
* NumPy numerical processing

---

# Input Variables

The module reads

* Timestamp
* H
* D
* Z
* F

---

# Output Variables

The module exports

* Datetime
* H
* D
* Z
* F

---

# Dependencies

* NumPy
* Matplotlib
* datetime

---

# Generated Figures

The module produces a verification graph displaying the cleaned hourly H-component.

---

# Typical Usage

Execute the module after updating the input file path to the required INTERMAGNET dataset.

Each execution processes a single daily observatory file.

---

# Notes

This module is intended for validation and testing of individual files. Large collections of observatory files should be processed using Module 2.

---

# Next Module

```text
2MultiHCompConverter.py
```
