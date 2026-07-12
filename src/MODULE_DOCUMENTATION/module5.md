# Module 5 — 5StormCorrelation

## Technical Module Documentation

---

# Purpose

`5StormCorrelation.py` quantifies the statistical relationships between geomagnetic storm intensity and major space weather indices during detected storm intervals.

Rather than analysing the complete OMNI dataset, this module focuses exclusively on periods identified as geomagnetic storms, allowing investigation of the relationships between Dst and the accompanying Kp, Ap and F10.7 indices during disturbed geomagnetic conditions.

---

# Position in Workflow

```text
OMNI_Hourly_Cleaned.csv
          +
Dst_Storm_Events.csv

↓

5StormCorrelation.py

↓

correlation_results.csv
Dst_vs_Kp.png
Dst_vs_Ap.png
Dst_vs_F107.png
```

---

# Inputs

The module requires two datasets.

### 1. Cleaned OMNI Data

```text
OMNI_Hourly_Cleaned.csv
```

Containing

* Datetime
* F10.7
* Kp
* Dst
* Ap

---

### 2. Storm Catalogue

```text
Dst_Storm_Events.csv
```

Containing

* Storm start
* Storm peak
* Storm recovery

---

# Outputs

The module produces

```text
correlation_results.csv
```

along with three scientific figures

```text
Dst_vs_Kp.png

Dst_vs_Ap.png

Dst_vs_F107.png
```

---

# Scientific Operations

The module performs the following sequence.

1. Load cleaned OMNI dataset.
2. Load detected storm catalogue.
3. Extract storm time intervals.
4. Match OMNI observations occurring during storms.
5. Construct storm-only datasets.
6. Compute Pearson correlation coefficients.
7. Export numerical correlation results.
8. Generate scatter plots.
9. Fit linear regression lines.
10. Save publication-quality figures.

---

# Correlation Pairs

The following relationships are evaluated.

| Variable X | Variable Y |
| ---------- | ---------- |
| Kp         | Dst        |
| Ap         | Dst        |
| F10.7      | Dst        |

---

# Correlation Method

The module implements the Pearson Product-Moment Correlation Coefficient.

Mathematically,

```text
              Σ[(Xi−X̄)(Yi−Ȳ)]
r = -----------------------------------
    √Σ(Xi−X̄)² √Σ(Yi−Ȳ)²
```

The implementation is written directly in Python using NumPy operations.

---

# Regression Analysis

For each scatter plot the software computes

* linear best-fit line
* slope
* intercept

using

```text
numpy.polyfit()
```

This provides a visual estimate of the relationship between the variables.

---

# Scientific Operations Performed

For every detected storm

* isolate storm interval,
* extract Kp,
* extract Dst,
* extract Ap,
* extract F10.7,
* compute Pearson correlation,
* store coefficient.

---

# Input Variables

The module reads

* Datetime
* Dst
* Kp
* Ap
* F10.7

---

# Output Variables

Generated CSV contains

| Variable Pair | Correlation Coefficient |
| ------------- | ----------------------- |
| Dst vs Kp     | r                       |
| Dst vs Ap     | r                       |
| Dst vs F10.7  | r                       |

---

# Generated Figures

Three scatter diagrams are produced.

### Figure 1

Dst versus Kp

---

### Figure 2

Dst versus Ap

---

### Figure 3

Dst versus F10.7

Each figure includes

* observed data points,
* least-squares regression line,
* labelled axes,
* publication-ready formatting.

---

# Algorithms

The module implements

* Pearson correlation
* Storm interval filtering
* Linear regression
* Scatter plot generation
* CSV export

---

# Dependencies

* NumPy
* Matplotlib
* datetime
* csv

---

# Error Handling

The module automatically skips

* malformed timestamps,
* incomplete storm entries,
* missing observations,
* invalid numerical values.

Only valid storm observations contribute to the correlation analysis.

---

# Typical Usage

Execute the module after generating both the cleaned OMNI dataset and the storm-event catalogue.

The resulting statistical relationships provide quantitative evidence of how planetary geomagnetic indices vary with Dst during storm conditions.

---

# Scientific Contribution

This module represents the first statistical stage of the software pipeline by transforming detected storm events into measurable relationships between geomagnetic activity indicators.

Its outputs support interpretation of storm dynamics and provide the statistical foundation for subsequent hemispheric correlation analyses.

---

# Next Module

```text
6StormStatistics.py
```
