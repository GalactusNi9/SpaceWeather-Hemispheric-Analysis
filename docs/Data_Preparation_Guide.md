# Data Preparation Guide

## SpaceWeather-Hemispheric-Analysis

### Data Preparation Documentation

**Version:** 1.0.0

**Author:** Phobian Maisha (GitHub: GalactusNi9)

---

# Table of Contents

1. Introduction
2. Overview of Required Datasets
3. Solar Cycle Classification
4. Repository Data Structure
5. INTERMAGNET Data
6. OMNI Data
7. Preparing INTERMAGNET Files
8. Preparing OMNI Files
9. Running the Processing Pipeline
10. Generated Outputs
11. Common Problems
12. Best Practices

---

# 1. Introduction

This guide describes how raw scientific datasets should be organized before executing the SpaceWeather-Hemispheric-Analysis software.

The software was developed using manually organized datasets to maximize transparency and reproducibility. Every processing module assumes that data have already been arranged into the expected directory structure.

Correct data organization is essential because the Python modules use manually configured file paths during processing.

---

# 2. Overview of Required Datasets

The project combines two independent scientific data sources.

## INTERMAGNET Observatory Data

Ground-based geomagnetic measurements from:

* SJG (San Juan Geomagnetic Observatory)
* PIL (Pilar Geomagnetic Observatory)

These datasets provide minute-resolution magnetic field measurements.

---

## NASA OMNI Data

Hourly solar wind and geomagnetic index data containing:

* Dst Index
* Kp Index
* Ap Index
* F10.7 Solar Radio Flux

Although all four parameters are retained during preprocessing, this research primarily analyses:

* Dst
* Kp

---

# 3. Solar Cycle Classification

Datasets are grouped according to Solar Cycle 24 activity phases.

| Phase            | Years     |
| ---------------- | --------- |
| Solar Minimum    | 2008–2010 |
| Ascending Phase  | 2011–2013 |
| Solar Maximum    | 2014–2015 |
| Descending Phase | 2016–2020 |

This organization is preserved throughout every processing stage.

---

# 4. Repository Data Structure

The recommended repository layout is:

```text
sample_data/

│

├── Solar_Minimum/

├── Ascending/

├── Solar_Maximum/

├── Descending/

└── merged/
```

Each solar phase eventually contains the appropriate yearly INTERMAGNET and OMNI datasets used by the processing modules.

---

# 5. INTERMAGNET Data

## Original Format

The project uses official INTERMAGNET minute-resolution files.

Typical characteristics:

* File extension: `.min`
* One-minute sampling
* ASCII text format
* Header information
* Magnetic field components

Available measurements include:

* H
* D
* Z
* F

Only the H-component is used during hemispheric correlation analysis, although the remaining components are preserved during preprocessing.

---

## Expected Folder Arrangement

Example:

```text
Solar_Maximum/

    PIL2014download/

    PIL2015download/

    SJG2014download/

    SJG2015download/
```

Equivalent folder arrangements are used for the remaining solar phases.

The software does not require identical folder names provided the corresponding path variables inside each module are updated appropriately.

---

# 6. OMNI Data

The project uses hourly OMNI datasets containing:

* Timestamp
* F10.7
* Kp
* Dst
* Ap

Raw files are downloaded in ASCII format and converted into cleaned CSV files by Module 3.

Example structure:

```text
Solar_Maximum/

    2014/

    2015/
```

Each yearly directory contains the corresponding hourly OMNI dataset.

---

# 7. Preparing INTERMAGNET Files

Step 1

Download the required observatory files.

---

Step 2

Copy the downloaded files into the appropriate solar phase folder.

---

Step 3

Update the file path inside:

```text
1HCompConvertor.py
```

or

```text
2MultiHCompConverter.py
```

---

Step 4

Run Module 1 for individual files or Module 2 for batch processing.

---

Step 5

Verify that each processed file produces:

* Cleaned CSV
* Diagnostic plot

---

Step 6

Execute Module 7 to merge all processed daily files into yearly datasets.

---

# 8. Preparing OMNI Files

Step 1

Download hourly OMNI data.

---

Step 2

Place each yearly dataset inside its corresponding solar phase directory.

---

Step 3

Update the file path within:

```text
3DstConverter.py
```

---

Step 4

Execute Module 3.

Outputs include:

* Cleaned hourly CSV
* Standardized timestamps

---

Step 5

Execute Modules 4–6 to detect storms and generate correlation datasets.

---

# 9. Running the Processing Pipeline

Recommended execution order:

```text
1HCompConvertor

↓

2MultiHCompConverter

↓

3DstConverter

↓

4DstStormDetector

↓

5DstApKpF10PearsonCorrelation

↓

6EventSelection

↓

7MultiHCompMerger

↓

8HtoDstKpApF10.7PearsonCorrelation

↓

9BatchHtoDstKpApF10.7PearsonCorrelation

↓

10PILSJGOMNIALLPHASESMULTIMERGER

↓

11UniversalMergerMotherOfALL

↓

12AnimatorV1

↓

13AnimatorV2

↓

14SimulecrumV1.1

↓

15SimulecrumV1.2
```

Running modules in this sequence ensures that every dependency has already been generated.

---

# 10. Generated Outputs

During processing the software generates several intermediate and final products.

## Processed Data

* Hourly cleaned CSV files
* Yearly merged datasets
* Master merged datasets

---

## Analysis Products

* Storm catalogues
* Pearson correlation reports
* Statistical summaries

---

## Figures

* Scatter plots
* Correlation plots
* Observatory comparisons

---

## Animations

* GIF simulations
* MP4 scientific animations

---

# 11. Common Problems

## Missing File

Cause:

Incorrect directory path.

Solution:

Verify the path configured near the beginning of each module.

---

## Parsing Errors

Cause:

Unexpected file formatting.

Solution:

Inspect the original dataset for missing columns or malformed records.

---

## Empty Outputs

Cause:

Input files were not successfully processed.

Solution:

Confirm prerequisite modules completed without errors.

---

## Timestamp Problems

Cause:

Date formats differ from those expected by the software.

Solution:

Verify timestamp formatting before preprocessing.

---

## Animation Failures

Cause:

FFmpeg is unavailable or incorrectly configured.

Solution:

Install FFmpeg and update the path specified inside the simulation modules.

---

# 12. Best Practices

For reliable scientific results:

* Preserve original raw datasets.
* Never overwrite downloaded source files.
* Store processed outputs separately when practical.
* Execute modules sequentially.
* Verify generated plots after every processing stage.
* Maintain consistent folder naming throughout the project.
* Keep backups of processed datasets.
* Record software version numbers for reproducibility.
* Archive both raw and processed datasets alongside published results.

---

# Conclusion

Proper organization of INTERMAGNET and OMNI datasets is the foundation of the SpaceWeather-Hemispheric-Analysis workflow. Following the directory conventions and execution sequence described in this guide ensures reproducible preprocessing, accurate correlation analyses and successful generation of visualizations and scientific simulations.
