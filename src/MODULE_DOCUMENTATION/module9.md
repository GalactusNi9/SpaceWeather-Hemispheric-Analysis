# Module 9 — 9BatchCorrelationAnalysis

## Technical Module Documentation

---

# Purpose

`9BatchCorrelationAnalysis.py` automates the correlation analysis performed in Module 8 across every solar phase and study year.

Instead of analysing a single observatory-year combination, this module traverses the complete project directory, identifies corresponding yearly OMNI and ground observatory datasets, computes statistical relationships, generates figures, and exports individual correlation reports for every available year.

This module enables large-scale comparative analysis across Solar Cycle 24.

---

# Position in Workflow

```text
Merged Yearly Ground Data
          +
Yearly OMNI Data

↓

9BatchCorrelationAnalysis.py

↓

Annual Correlation Reports

↓

Solar Phase Comparison
```

---

# Inputs

For every study year the module requires:

### Ground Observatory Dataset

Example

```text
PIL_2014_Merged_Cleaned.csv
```

---

### OMNI Dataset

Example

```text
OMNI_2014_Cleaned.csv
```

---

# Directory Traversal

The module automatically searches each solar phase directory.

```text
Solar_Minimum/

Ascending/

Solar_Maximum/

Descending/
```

Within each phase it processes every available yearly dataset.

---

# Outputs

For every processed year the module generates:

```text
correlation_YYYY.txt
```

along with

```text
H_vs_Kp.png

H_vs_Dst.png

H_vs_Ap.png

H_vs_F10.7.png

H_vs_All_OMNI.png
```

where `YYYY` represents the corresponding study year.

---

# Scientific Operations

The module performs the following sequence for each available dataset.

1. Locate yearly ground dataset.
2. Locate corresponding OMNI dataset.
3. Verify required files exist.
4. Load synchronized observations.
5. Extract H-component.
6. Extract OMNI indices.
7. Compute Pearson correlation coefficients.
8. Estimate statistical significance.
9. Generate scatter plots.
10. Produce combined comparison figure.
11. Export yearly correlation report.
12. Continue automatically to the next year.

---

# Variables Analysed

The following relationships are computed.

| Ground Variable | OMNI Variable |
| --------------- | ------------- |
| H               | Kp            |
| H               | Dst           |
| H               | Ap            |
| H               | F10.7         |

---

# Statistical Analysis

For every yearly dataset the module calculates:

* Pearson correlation coefficient
* Student's *t* statistic
* Estimated p-value
* Statistical significance

The resulting reports provide consistent statistical summaries for all years included in the study.

---

# Visualization

For every processed year the software produces:

* Individual scatter plots
* Combined four-panel comparison figure

Each figure includes:

* observed measurements,
* correlation coefficient,
* p-value,
* labelled axes,
* publication-ready formatting.

---

# Input Variables

Ground observatory data:

* H

OMNI data:

* Kp
* Dst
* Ap
* F10.7

---

# Output Variables

Each yearly report contains:

* correlation coefficient (r)
* p-value
* significance interpretation

---

# Batch Processing Strategy

The module automatically:

* scans every solar phase,
* detects available yearly folders,
* skips missing datasets,
* processes all valid years,
* saves results within their respective directories.

No manual intervention is required once the directory structure has been prepared.

---

# Algorithms

Implemented methods include:

* Automated directory traversal
* Pearson correlation
* Statistical significance testing
* Scatter plot generation
* Multi-panel visualization
* Text report generation

---

# Dependencies

* os
* csv
* math
* matplotlib

---

# Error Handling

The module automatically handles:

* missing files,
* incomplete yearly datasets,
* invalid observations,
* numerical conversion errors.

If required input files are unavailable for a given year, that year is skipped while processing continues for all remaining datasets.

---

# Scientific Contribution

This module extends the single-year methodology developed in Module 8 to the complete Solar Cycle 24 dataset, enabling systematic comparison of geomagnetic relationships across different phases of solar activity.

The resulting collection of yearly reports forms the principal statistical dataset used for interannual and solar-phase analyses.

---

# Typical Usage

Execute the module after preparing all yearly merged observatory datasets and corresponding OMNI datasets.

Each execution automatically analyses every available year across all configured solar phases.

---

# Next Module

```text
10PhaseMerge.py
```
