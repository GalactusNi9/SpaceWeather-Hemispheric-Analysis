# Module 10 — 10PhaseMerge

## Technical Module Documentation

---

# Purpose

`10PhaseMerge.py` merges yearly datasets belonging to the same solar phase into continuous phase-level datasets.

After yearly datasets have been generated for each observatory and the OMNI indices, this module combines all years within each solar phase into a single dataset. The resulting files provide continuous records representing Solar Minimum, Ascending Phase, Solar Maximum, and Descending Phase.

These merged datasets simplify long-term comparative analyses and reduce the need to manually combine yearly files.

---

# Position in Workflow

```text
Yearly Merged Datasets

↓

10PhaseMerge.py

↓

Solar Phase Datasets

↓

Module 11
```

---

# Inputs

For each solar phase, the module searches for yearly merged datasets corresponding to:

* OMNI
* PIL
* SJG

Example directory:

```text
Solar_Maximum/

    OMNI_2014_Merged.csv
    OMNI_2015_Merged.csv

    PIL_2014_Merged_Cleaned.csv
    PIL_2015_Merged_Cleaned.csv

    SJG_2014_Merged_Cleaned.csv
    SJG_2015_Merged_Cleaned.csv
```

---

# Outputs

For every solar phase, three merged datasets are produced.

Example

```text
OMNI_Solar_Maximum_Merged.csv

PIL_Solar_Maximum_Merged.csv

SJG_Solar_Maximum_Merged.csv
```

Equivalent outputs are created for:

* Solar Minimum
* Ascending Phase
* Descending Phase

---

# Scientific Operations

The module performs the following sequence.

1. Traverse each solar phase directory.
2. Identify yearly merged datasets.
3. Separate files by data source.
4. Read yearly observations.
5. Preserve the first dataset header.
6. Remove duplicate headers from subsequent files.
7. Concatenate observations chronologically.
8. Export merged solar-phase dataset.

---

# Solar Phases Processed

The module processes the four study phases used throughout the project.

| Solar Phase   | Years     |
| ------------- | --------- |
| Solar Minimum | 2008–2010 |
| Ascending     | 2011–2013 |
| Solar Maximum | 2014–2015 |
| Descending    | 2016–2020 |

---

# Data Sources

Each phase contains datasets from:

* OMNI
* PIL
* SJG

Each source is merged independently to preserve compatibility with subsequent analyses.

---

# Header Management

To avoid duplicated column names, the module:

* retains the header from the first yearly dataset,
* removes headers from all remaining yearly files,
* appends only scientific observations thereafter.

---

# Input Variables

Depending on the dataset type:

### OMNI

* Datetime
* F10.7
* Kp
* Dst
* Ap

### Ground Observatories

* Datetime
* H

---

# Output Variables

Merged datasets preserve exactly the same variables as their yearly counterparts.

---

# Algorithms

The module implements:

* Directory traversal
* File filtering
* CSV concatenation
* Header preservation
* Chronological dataset construction

---

# Dependencies

* os
* csv

---

# Error Handling

The module automatically:

* skips empty files,
* ignores blank rows,
* continues processing if individual yearly datasets are unavailable,
* preserves data integrity during merging.

---

# Scientific Contribution

This module produces continuous datasets representing each major phase of Solar Cycle 24.

These phase-level datasets simplify long-duration analyses and provide standardized inputs for master dataset generation and large-scale visualizations.

---

# Typical Usage

Execute the module after all yearly merged datasets have been created.

The resulting solar-phase datasets become the direct inputs for the master merging stage.

---

# Next Module

```text
11MasterMerge.py
```
