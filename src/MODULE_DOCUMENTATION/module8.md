# Module 8 — 8CorrelationAnalysis

## Technical Module Documentation

---

# Purpose

`8CorrelationAnalysis.py` performs the principal scientific analysis of the project by quantifying the relationships between ground-based geomagnetic H-component observations and OMNI space weather indices.

The module computes Pearson correlation coefficients, evaluates statistical significance, generates publication-quality figures, and exports numerical results for a single study year.

It represents the core analytical component of the software.

---

# Position in Workflow

```text
Yearly Merged Ground Dataset
          +
OMNI_Hourly_Cleaned.csv

↓

8CorrelationAnalysis.py

↓

Correlation Report
+
Scientific Figures
```

---

# Inputs

### Ground Observatory Dataset

Example

```text
PIL_2014_Merged_Cleaned.csv
```

Containing

* Datetime
* H

---

### OMNI Dataset

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

# Outputs

The module generates

```text
correlation_2014.txt
```

together with

```text
H_vs_Kp.png

H_vs_Dst.png

H_vs_Ap.png

H_vs_F10.7.png

H_vs_All_OMNI.png
```

---

# Scientific Operations

The module performs the following workflow.

1. Load yearly ground observatory dataset.
2. Load cleaned OMNI dataset.
3. Synchronize hourly observations.
4. Extract H-component.
5. Extract Kp.
6. Extract Dst.
7. Extract Ap.
8. Extract F10.7.
9. Compute Pearson correlation coefficients.
10. Estimate statistical significance.
11. Produce scatter plots.
12. Generate combined comparison figure.
13. Export numerical report.

---

# Variables Analysed

The following relationships are investigated.

| Ground Variable | Space Weather Variable |
| --------------- | ---------------------- |
| H               | Kp                     |
| H               | Dst                    |
| H               | Ap                     |
| H               | F10.7                  |

---

# Correlation Method

The software implements the Pearson Product-Moment Correlation Coefficient.

```text
              Σ[(Xi−X̄)(Yi−Ȳ)]
r = -----------------------------------
    √Σ(Xi−X̄)² √Σ(Yi−Ȳ)²
```

The implementation is written directly from the mathematical definition rather than relying on external statistical libraries.

---

# Statistical Significance

For every correlation coefficient the module estimates:

* p-value
* significance level

using an approximation based on the Student's *t*-distribution.

The output classifies each relationship as either:

* Significant ✅
* Not Significant ❌

---

# Visualization

For every variable pair the module creates an individual scatter plot containing:

* observed measurements,
* correlation coefficient,
* p-value,
* significance label,
* publication-quality formatting.

A combined four-panel figure summarises all analysed relationships.

---

# Input Variables

Ground dataset:

* H

OMNI dataset:

* Kp
* Dst
* Ap
* F10.7

---

# Output Variables

The exported report contains, for each variable pair:

* Pearson correlation coefficient (r)
* p-value
* significance interpretation

---

# Algorithms

The module implements:

* Pearson correlation
* Statistical significance testing
* Scatter plot generation
* Multi-panel visualization
* Text report generation

---

# Dependencies

* csv
* math
* matplotlib
* os

---

# Error Handling

The module automatically skips:

* incomplete records,
* invalid numerical values,
* missing observations,
* unmatched data pairs.

Only synchronized and valid measurements contribute to the statistical analysis.

---

# Scientific Contribution

This module forms the quantitative foundation of the project by measuring how geomagnetic field variations recorded at an observatory relate to key interplanetary space weather indices.

The generated correlation coefficients and significance tests provide direct evidence for the strength and reliability of these relationships during the selected study year.

---

# Typical Usage

Execute the module after generating both the yearly merged observatory dataset and the cleaned OMNI dataset.

The exported figures and statistical report are suitable for inclusion in scientific publications, dissertations, and technical reports.

---

# Next Module

```text
9BatchCorrelationAnalysis.py
```
