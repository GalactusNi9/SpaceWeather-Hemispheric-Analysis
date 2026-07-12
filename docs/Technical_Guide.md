# Technical Guide

## SpaceWeather-Hemispheric-Analysis

### Technical Documentation

**Version:** 1.0.0

**Author:** Phobian Maisha (GitHub: GalactusNi9)

---

# Table of Contents

1. Introduction
2. Software Architecture
3. Scientific Workflow
4. Project Structure
5. Data Architecture
6. Processing Pipeline
7. Module Descriptions
8. Mathematical Methods
9. Data Cleaning Algorithms
10. Storm Detection Algorithm
11. Correlation Analysis
12. Animation Engine
13. File Formats
14. Performance Considerations
15. Error Handling
16. Known Limitations
17. Extending the Software
18. Future Improvements

---

# 1. Introduction

SpaceWeather-Hemispheric-Analysis is a modular scientific software package developed to investigate hemispheric geomagnetic responses to space weather activity during Solar Cycle 24.

The software integrates measurements from:

* INTERMAGNET Ground Magnetometers
* NASA OMNI Hourly Database

The complete workflow transforms raw geomagnetic observations into processed datasets, statistical analyses, graphical visualisations and animated simulations suitable for scientific interpretation.

Unlike conventional monolithic software, this project follows a modular processing pipeline in which every major scientific task is isolated into an independent Python module.

---

# 2. Software Architecture

The software consists of fifteen independent processing modules.

```
Raw INTERMAGNET Data
        │
        ▼
1HCompConvertor
        │
        ▼
2MultiHCompConverter
        │
        ▼
Processed H Components
        │
        ▼
7MultiHCompMerger
        │
        ▼
Master Observatory Files
```

```
Raw OMNI Data
      │
      ▼
3DstConverter
      │
      ▼
Hourly OMNI Dataset
      │
      ▼
4DstStormDetector
      │
      ▼
Storm Catalogue
      │
      ▼
5DstApKpF10PearsonCorrelation
```

Finally,

```
Ground Observatory
            │
            ▼
8–11 Correlation Modules
            │
            ▼
Master Scientific Dataset
            │
            ▼
12–15 Simulation Modules
            │
            ▼
Animations & Visualisations
```

---

# 3. Scientific Workflow

The complete workflow consists of six stages.

## Stage 1

Raw INTERMAGNET minute-resolution files are imported.

Outputs:

* Hourly H
* Hourly D
* Hourly Z
* Hourly F

---

## Stage 2

Raw OMNI hourly files are cleaned.

Outputs include

* Dst
* Kp
* Ap
* F10.7

---

## Stage 3

Geomagnetic storms are identified.

Detected information:

* storm start
* minimum Dst
* recovery time
* duration
* classification

---

## Stage 4

Daily files are merged into yearly datasets.

Examples

```
PIL_2014_Merged_Cleaned.csv

SJG_2014_Merged_Cleaned.csv

OMNI_2014_Cleaned.csv
```

---

## Stage 5

Correlation analysis is performed.

Relationships include

* H vs Dst
* H vs Kp
* H vs Ap
* H vs F10.7

Outputs

* Pearson coefficient
* significance estimate
* scatter plots

---

## Stage 6

Animated simulations illustrate hemispheric behaviour over time.

Outputs include

* GIF
* MP4
* comparison animations

---

# 4. Project Structure

```
SpaceWeather-Hemispheric-Analysis/

docs/

sample_data/

src/

requirements.txt

README.md

LICENSE

CITATION.cff
```

The software separates documentation, datasets and source code to maintain reproducibility.

---

# 5. Data Architecture

The project is organised according to Solar Cycle 24 phases.

```
Solar_Minimum

Ascending

Solar_Maximum

Descending
```

Each phase contains

```
PIL

SJG

OMNI
```

or equivalent yearly datasets depending on the processing stage.

Merged datasets are stored separately for large-scale analysis.

---

# 6. Processing Pipeline

Each module performs exactly one scientific task.

```
Raw Data

↓

Cleaning

↓

Interpolation

↓

Outlier Removal

↓

Hourly Averaging

↓

Merged Dataset

↓

Storm Detection

↓

Correlation Analysis

↓

Simulation
```

This modular design simplifies debugging and allows individual modules to be reused independently.

---

# 7. Module Descriptions

| Module | Function                           |
| ------ | ---------------------------------- |
| 1      | Single INTERMAGNET file conversion |
| 2      | Batch conversion                   |
| 3      | OMNI preprocessing                 |
| 4      | Storm detection                    |
| 5      | Dst correlation                    |
| 6      | Event selection                    |
| 7      | Ground station merger              |
| 8      | Ground–OMNI correlation            |
| 9      | Batch correlation                  |
| 10     | Solar-phase merger                 |
| 11     | Master dataset merger              |
| 12     | Animation Version 1                |
| 13     | Animation Version 2                |
| 14     | Simulation Version 1.1             |
| 15     | Simulation Version 1.2             |

---

# 8. Mathematical Methods

The software primarily employs

## Arithmetic Mean

Hourly averaging

```
mean = Σx / n
```

---

## Linear Interpolation

Missing observations are estimated using neighbouring valid measurements.

---

## Z-score

Outlier detection

```
z = (x − μ) / σ
```

Values exceeding the threshold are removed.

---

## Pearson Correlation

```
r =
Σ[(x−x̄)(y−ȳ)]
────────────────────────────
√Σ(x−x̄)² Σ(y−ȳ)²
```

---

## Statistical Significance

Approximate probability values are computed from the correlation coefficient and sample size.

---

# 9. Data Cleaning Algorithms

Ground observatory preprocessing includes

* missing value detection
* interpolation
* hourly averaging
* spike removal
* export

OMNI preprocessing includes

* timestamp conversion
* index extraction
* formatting
* CSV export

---

# 10. Storm Detection Algorithm

Storm identification uses Dst thresholds.

Moderate storm

```
Dst < -50 nT
```

Intense storm

```
Dst < -100 nT
```

Recovery

```
Dst > -30 nT
```

Each detected event records

* start time
* peak time
* recovery time
* duration
* minimum Dst

---

# 11. Correlation Analysis

Pearson correlation is calculated between

Ground Observatory H

and

* Dst
* Kp
* Ap
* F10.7

Outputs include

* correlation coefficient
* statistical significance
* graphical representation
* text reports

---

# 12. Animation Engine

The software uses Matplotlib animation to visualise temporal evolution.

Generated outputs include

* GIF animations
* MP4 videos

Visualisations compare

SJG

vs

PIL

alongside

Dst

Kp

Ap

F10.7

allowing hemispheric comparison throughout Solar Cycle 24.

---

# 13. File Formats

## Raw Inputs

INTERMAGNET

```
.min
```

OMNI

```
ASCII
```

---

## Intermediate Files

```
CSV
```

---

## Final Outputs

```
CSV

TXT

PNG

GIF

MP4
```

---

# 14. Performance Considerations

The software was intentionally implemented using lightweight scientific libraries.

Advantages

* low memory usage
* modular execution
* reproducible outputs
* independent processing stages

Large datasets are processed incrementally to minimise memory consumption.

---

# 15. Error Handling

Current modules tolerate

* malformed rows
* missing values
* incomplete files
* parsing failures

Invalid observations are skipped while processing continues.

---

# 16. Known Limitations

Current limitations include

* manually configured file paths
* manual execution order
* no graphical interface
* no automatic configuration
* limited parallel processing

These choices intentionally prioritise transparency over automation.

---

# 17. Extending the Software

The modular architecture allows straightforward extension.

Researchers may

* include additional observatories
* analyse new geomagnetic indices
* support newer Solar Cycles
* implement alternative statistical methods
* integrate machine learning algorithms
* add forecasting capabilities

without modifying the overall architecture.

---

# 18. Future Improvements

Planned developments include

* automatic dataset discovery
* configuration file support
* command-line interface
* graphical user interface
* automated reporting
* multiprocessing
* cloud execution
* Docker support
* continuous integration
* unit testing
* Python package distribution
* DOI-linked software releases

---

# Conclusion

SpaceWeather-Hemispheric-Analysis provides a complete scientific workflow for preprocessing, integrating, analysing and visualising geomagnetic observations using INTERMAGNET and OMNI datasets. Its modular architecture promotes reproducibility, extensibility and transparent scientific computing while serving as a research platform for hemispheric geomagnetic investigations during Solar Cycle 24.
