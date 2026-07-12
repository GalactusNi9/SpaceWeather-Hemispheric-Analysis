# Module 11 — 11MasterMerge

## Technical Module Documentation

---

# Purpose

`11MasterMerge.py` produces the final consolidated datasets for the entire research project by merging the solar-phase datasets into complete Solar Cycle 24 master datasets.

This module represents the final data integration stage of the preprocessing pipeline. It combines all four solar phases into three comprehensive datasets corresponding to the OMNI indices and the two INTERMAGNET observatories (PIL and SJG).

The resulting master datasets provide continuous observations spanning the complete study period (2008–2020).

---

# Position in Workflow

```text
Solar Phase Datasets

↓

11MasterMerge.py

↓

Master Datasets

↓

Modules 12–15
```

---

# Inputs

The module searches each solar-phase directory for merged datasets corresponding to:

* OMNI
* PIL
* SJG

Example project structure

```text
Solar_Minimum/
    OMNI_Solar_Minimum_Merged.csv
    PIL_Solar_Minimum_Merged.csv
    SJG_Solar_Minimum_Merged.csv

Ascending/
    ...

Solar_Maximum/
    ...

Descending/
    ...
```

---

# Outputs

Three master datasets are generated within the project root.

```text
OMNI_Master_Merged.csv

PIL_Master_Merged.csv

SJG_Master_Merged.csv
```

These datasets contain continuous observations covering every solar phase included in the study.

---

# Scientific Operations

The module performs the following sequence.

1. Traverse every solar-phase directory.
2. Locate merged phase datasets.
3. Separate datasets according to source.
4. Read observations sequentially.
5. Preserve the header from the first dataset.
6. Remove duplicate headers.
7. Concatenate observations chronologically.
8. Export complete master datasets.

---

# Data Sources

Three independent master datasets are created.

### OMNI

Contains planetary space weather indices.

### PIL

Contains southern hemisphere geomagnetic H-component observations.

### SJG

Contains northern hemisphere geomagnetic H-component observations.

---

# Solar Phases Combined

The master datasets include observations from:

| Solar Phase   | Years     |
| ------------- | --------- |
| Solar Minimum | 2008–2010 |
| Ascending     | 2011–2013 |
| Solar Maximum | 2014–2015 |
| Descending    | 2016–2020 |

Together these datasets span the complete study interval.

---

# Header Management

During merging, the module:

* retains the first header encountered,
* removes subsequent duplicate headers,
* preserves uninterrupted chronological observations.

---

# Input Variables

### OMNI Dataset

* Datetime
* F10.7
* Kp
* Dst
* Ap

### Ground Observatory Datasets

* Datetime
* H

---

# Output Variables

The exported master datasets preserve the original variable structure without modification.

---

# Algorithms

The module implements:

* Recursive directory traversal
* Pattern matching using wildcard searches
* Header preservation
* Sequential dataset concatenation
* Master dataset generation

---

# Dependencies

* NumPy
* os
* glob

---

# Error Handling

The module automatically:

* skips unavailable files,
* ignores duplicate headers,
* continues processing remaining datasets,
* preserves chronological ordering of observations.

Missing datasets do not interrupt execution.

---

# Scientific Contribution

This module produces the definitive datasets used throughout the remainder of the project.

Rather than analysing individual years or solar phases independently, the master datasets provide a unified representation of Solar Cycle 24, enabling large-scale visualization, comparative analyses, and hemispheric response studies.

These datasets constitute the primary inputs for the animation and visualization modules.

---

# Typical Usage

Execute the module after all solar-phase merged datasets have been generated.

Each execution creates three master datasets that represent the complete observational record for the project.

---

# Generated Master Products

The module exports:

* `OMNI_Master_Merged.csv`
* `PIL_Master_Merged.csv`
* `SJG_Master_Merged.csv`

These files become the principal inputs for the project's visualization and animation modules.

---

# Next Module

```text
12SpaceWeatherSimulation.py
```
