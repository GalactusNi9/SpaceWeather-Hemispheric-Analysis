# Installation Guide

## SpaceWeather-Hemispheric-Analysis

### Version 1.0.0

**Author:** Phobian Maisha
**GitHub:** GalactusNi9
**ORCID:** https://orcid.org/0000-0003-2657-7206

---

# Table of Contents

1. Introduction
2. Software Overview
3. System Requirements
4. Repository Structure
5. Installing Python
6. Installing Git
7. Cloning the Repository
8. Creating a Virtual Environment
9. Installing Dependencies
10. Installing FFmpeg
11. Preparing the Dataset
12. Configuring File Paths
13. Understanding the Processing Pipeline
14. Running Individual Modules
15. Generated Outputs
16. Troubleshooting
17. Best Practices
18. Updating the Software
19. Citation
20. License

---

# 1. Introduction

SpaceWeather-Hemispheric-Analysis is a modular scientific software package developed for preprocessing, integrating, analysing, and visualising geomagnetic observations obtained from the INTERMAGNET global observatory network together with OMNI space weather datasets.

The software was developed as part of a research project investigating hemispheric variations in geomagnetic responses to solar wind activity during Solar Cycle 24.

Unlike many automated scientific software packages, every processing stage is intentionally separated into independent modules. This design allows researchers to inspect intermediate datasets, validate each processing step independently, and modify the workflow to accommodate new observatories or additional solar cycles.

The software performs:

* INTERMAGNET H-component preprocessing
* OMNI hourly data preprocessing
* Geomagnetic storm detection
* Event extraction
* Pearson correlation analysis
* Statistical significance testing
* Annual data merging
* Solar-phase data merging
* Master dataset generation
* Animated visualisation
* Hemispheric response simulation

---

# 2. Software Overview

The complete workflow follows fifteen sequential modules.

```
Raw INTERMAGNET Files
        │
        ▼
Module 1
Single File Cleaning
        │
        ▼
Module 2
Batch Processing
        │
        ▼
Raw OMNI Files
        │
        ▼
Module 3
OMNI Cleaning
        │
        ▼
Module 4
Storm Detection
        │
        ▼
Module 5
Dst Correlation
        │
        ▼
Module 6
Storm Selection
        │
        ▼
Module 7
Daily Merge
        │
        ▼
Module 8
Ground vs Space Correlation
        │
        ▼
Module 9
Batch Correlation
        │
        ▼
Module 10
Solar Phase Merge
        │
        ▼
Module 11
Master Dataset
        │
        ▼
Modules 12–15
Animation and Scientific Simulation
```

Each module is executed independently.

Outputs produced by one module become inputs for the next module.

---

# 3. System Requirements

## Recommended Hardware

Processor

* Intel Core i5 (8th Generation or newer)
* AMD Ryzen 5 or newer

Memory

* Minimum: 8 GB RAM
* Recommended: 16 GB RAM

Storage

* Minimum free space: 10 GB
* Recommended: SSD storage

Graphics

No dedicated GPU is required.

Animations are rendered using Matplotlib and FFmpeg.

---

## Operating Systems

Supported

* Windows 10
* Windows 11
* Ubuntu 22.04+
* Ubuntu 24.04+

Other Linux distributions should also work with minor modifications.

---

# 4. Repository Structure

```
SpaceWeather-Hemispheric-Analysis/

│
├── src/
├── docs/
├── sample_data/
├── sample_output/
├── tests/
├── LICENSE
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── CITATION.cff
├── requirements.txt
└── .gitignore
```

### src/

Contains all executable Python modules.

### docs/

Contains all software documentation.

### sample_data/

Contains example project datasets organised according to solar cycle phases.

### sample_output/

Contains example figures, CSV files, merged datasets, animations, and correlation reports.

### tests/

Contains validation scripts used for repository verification.

---

# 5. Installing Python

Download Python 3.11 or later.

Windows

```
https://www.python.org/downloads/
```

During installation enable

```
Add Python to PATH
```

Verify installation

```
python --version
```

Expected output

```
Python 3.11.x
```

Ubuntu

```
sudo apt update

sudo apt install python3

sudo apt install python3-pip

python3 --version
```

---

# 6. Installing Git

Windows

Download Git from

```
https://git-scm.com/
```

Verify

```
git --version
```

Ubuntu

```
sudo apt install git

git --version
```

---

# 7. Cloning the Repository

Clone using HTTPS

```
git clone https://github.com/GalactusNi9/SpaceWeather-Hemispheric-Analysis.git
```

Enter the repository

```
cd SpaceWeather-Hemispheric-Analysis
```

Verify

```
git status
```

---

# 8. Creating a Virtual Environment

Windows

```
python -m venv venv

venv\Scripts\activate
```

Ubuntu

```
python3 -m venv venv

source venv/bin/activate
```

Deactivate

```
deactivate
```

---

# 9. Installing Dependencies

Install all packages

```
pip install -r requirements.txt
```

Packages include

* NumPy
* Matplotlib
* Pillow
* FFmpeg support
* Tkinter backend support

Verify installation

```
pip list
```

---

# 10. Installing FFmpeg

Modules 14 and 15 generate MP4 animations using FFmpeg.

Windows

Download FFmpeg.

Extract it.

Add the **bin** directory to the system PATH.

Verify

```
ffmpeg -version
```

Ubuntu

```
sudo apt update

sudo apt install ffmpeg

ffmpeg -version
```

---

# 11. Preparing the Dataset

The software expects datasets to be organised according to solar activity phases.

```
sample_data/

Solar_Minimum/

Ascending/

Solar_Maximum/

Descending/
```

Each phase contains three principal datasets.

```
SJG/

PIL/

OMNI/
```

## INTERMAGNET

Raw observatory data are stored exactly as downloaded.

Typical file format

```
.min
```

Examples

```
pil20140101dmin.min

sjg20140215dmin.min
```

## OMNI

Hourly OMNI data are stored separately.

Typical files

```
OMNI2_H0_MRG1HR_xxxxx.txt

OMNI2_H0_MRG1HR_xxxxx.txt1
```

No renaming is required.

---

# 12. Configuring File Paths

Each module contains user-editable file paths.

Example

```python
file_path = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Maximum\PIL2014download\2014\PIL\pil20140101dmin.min"
```

or

```python
data_dir = r"E:\UniversaLProjectS\DstKpApF10.7\Solar_Minimum\PIL2008download\2008\PIL"
```

Before executing a module:

* verify the year
* verify the observatory
* verify the solar phase
* verify the filename

Failure to update paths is the most common cause of execution errors.

---

# 13. Understanding the Processing Pipeline

The recommended execution order is:

Module 1

Convert a single INTERMAGNET daily file into a cleaned hourly dataset.

↓

Module 2

Batch-process an entire observatory directory.

↓

Module 3

Clean OMNI hourly observations.

↓

Module 4

Automatically detect geomagnetic storms using Dst thresholds.

↓

Module 5

Calculate Pearson correlations between Dst and selected OMNI indices.

↓

Module 6

Extract storm durations, peaks, recovery intervals, and seasonal information.

↓

Module 7

Merge processed daily observatory files into annual datasets.

↓

Module 8

Correlate ground magnetic field observations with OMNI indices.

↓

Module 9

Repeat correlation analysis across multiple years.

↓

Module 10

Merge annual datasets into solar-phase datasets.

↓

Module 11

Generate complete master datasets.

↓

Modules 12–15

Generate scientific animations and hemispheric visualisations.

Running modules out of sequence may produce incomplete or incompatible outputs.

---

# 14. Running Individual Modules

Open a terminal inside the repository.

Execute modules individually.

Example

```
python src/1HCompConvertor.py
```

Continue sequentially.

```
python src/2MultiHCompConverter.py

python src/3DstConverter.py

python src/4DstStormDetector.py

...

python src/15SimulecrumV1.2.py
```

Always inspect generated outputs before proceeding to the next stage.

---

# 15. Generated Outputs

The software generates several categories of scientific products.

Processed CSV files

```
*_cleaned.csv
```

Merged datasets

```
*_Merged.csv
```

Correlation reports

```
correlation_2014.txt

correlation_results.csv
```

Storm catalogues

```
Dst_Storm_Events.csv
```

Scientific plots

```
PNG
```

Animations

```
GIF

MP4
```

Master datasets

```
OMNI_Master_Merged.csv

SJG_Master_Merged.csv

PIL_Master_Merged.csv
```

---

# 16. Troubleshooting

## FileNotFoundError

Cause

Incorrect directory path.

Solution

Verify the file path inside the module.

---

## No data parsed

Cause

Incorrect INTERMAGNET file format or corrupted download.

Solution

Verify the downloaded file and confirm the "DATE" header exists.

---

## TkAgg Import Error

Cause

Tkinter is not installed.

Ubuntu

```
sudo apt install python3-tk
```

---

## FFmpeg Not Found

Cause

FFmpeg is missing or not added to PATH.

Solution

Install FFmpeg and verify

```
ffmpeg --version
```

---

## Empty Correlation Results

Cause

Input datasets have different lengths or incompatible timestamps.

Solution

Ensure merged datasets originate from the same year and observatory.

---

## Animation Save Failure

Cause

Missing Pillow or FFmpeg.

Solution

Reinstall dependencies

```
pip install -r requirements.txt
```

---

# 17. Best Practices

* Process one year at a time.
* Verify every generated CSV.
* Keep raw data unchanged.
* Store processed data alongside their corresponding raw datasets.
* Archive annual merged datasets before generating master files.
* Avoid manually editing generated CSV files.
* Maintain the documented directory structure.
* Commit changes regularly using Git.
* Record software modifications in CHANGELOG.md.
* Keep documentation synchronized with code updates.

---

# 18. Updating the Software

Retrieve the latest changes.

```
git pull origin main
```

Update dependencies.

```
pip install -r requirements.txt --upgrade
```

Verify repository status.

```
git status
```

---

# 19. Citation

If this software contributes to published research, please cite it using the metadata provided in **CITATION.cff**.

Author

Phobian Maisha

GitHub

https://github.com/GalactusNi9

ORCID

https://orcid.org/0000-0003-2657-7206

---

# 20. License

This software is distributed under the MIT License.

Researchers are encouraged to use, modify, and extend the software while providing appropriate attribution.

---

# Final Notes

SpaceWeather-Hemispheric-Analysis was designed to support reproducible research in space weather and geomagnetism. By following the installation steps, maintaining the expected directory structure, and executing the modules in their documented order, users can reproduce the complete processing pipeline from raw INTERMAGNET and OMNI observations through preprocessing, storm detection, statistical analysis, data merging, visualization, and animated hemispheric simulations.
