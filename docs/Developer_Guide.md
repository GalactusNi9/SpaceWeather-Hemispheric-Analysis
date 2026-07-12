# Developer Guide

## SpaceWeather-Hemispheric-Analysis

### Developer Documentation

**Version:** 1.0.0

**Author:** Phobian Maisha (GitHub: GalactusNi9)

---

# Table of Contents

1. Introduction
2. Development Philosophy
3. Repository Architecture
4. Source Code Layout
5. Module Dependency Chain
6. Coding Standards
7. File Path Configuration
8. Adding New INTERMAGNET Observatories
9. Adding New OMNI Datasets
10. Creating New Analysis Modules
11. Output Conventions
12. Debugging
13. Performance Optimization
14. Version Control
15. Future Development

---

# 1. Introduction

This document is intended for researchers and developers who wish to understand, modify or extend the SpaceWeather-Hemispheric-Analysis software.

The project was designed with a modular architecture where every scientific task is implemented as an independent Python program. Rather than using a monolithic application, each module performs a single processing stage and produces outputs consumed by later modules.

---

# 2. Development Philosophy

The software follows several guiding principles:

* Scientific reproducibility
* Transparent data processing
* Minimal external dependencies
* Modular design
* Readable source code
* Independent execution of modules
* Easy adaptation for new datasets

Every processing step is intentionally visible to the researcher rather than hidden behind automated pipelines.

---

# 3. Repository Architecture

```
SpaceWeather-Hemispheric-Analysis/

src/
docs/
sample_data/
requirements.txt
README.md
LICENSE
CHANGELOG.md
CONTRIBUTING.md
CITATION.cff
```

Repository responsibilities are separated as follows:

* `src/` — Python source code
* `docs/` — Technical documentation
* `sample_data/` — Example project structure
* Root directory — project metadata and configuration

---

# 4. Source Code Layout

The software contains fifteen sequential modules.

| Module                                  | Purpose                           |
| --------------------------------------- | --------------------------------- |
| 1HCompConvertor                         | Convert a single INTERMAGNET file |
| 2MultiHCompConverter                    | Batch conversion                  |
| 3DstConverter                           | Clean OMNI hourly data            |
| 4DstStormDetector                       | Detect geomagnetic storms         |
| 5DstApKpF10PearsonCorrelation           | Analyse OMNI relationships        |
| 6EventSelection                         | Storm event classification        |
| 7MultiHCompMerger                       | Merge observatory outputs         |
| 8HtoDstKpApF10.7PearsonCorrelation      | Ground-to-space correlation       |
| 9BatchHtoDstKpApF10.7PearsonCorrelation | Batch correlation analysis        |
| 10PILSJGOMNIALLPHASESMULTIMERGER        | Merge phase datasets              |
| 11UniversalMergerMotherOfALL            | Create master datasets            |
| 12AnimatorV1                            | Initial animation engine          |
| 13AnimatorV2                            | Dual-observatory animation        |
| 14SimulecrumV1.1                        | Scientific simulation             |
| 15SimulecrumV1.2                        | Optimized simulation              |

---

# 5. Module Dependency Chain

Modules must generally be executed in the following order:

```
1

↓

2

↓

3

↓

4

↓

5

↓

6

↓

7

↓

8

↓

9

↓

10

↓

11

↓

12

↓

13

↓

14

↓

15
```

Each module assumes that outputs from previous stages already exist.

---

# 6. Coding Standards

Future development should follow these conventions:

* Python 3.x
* Four-space indentation
* Descriptive variable names
* Modular functions where practical
* Preserve compatibility with NumPy and Matplotlib
* Avoid unnecessary dependencies
* Maintain readable procedural workflows

---

# 7. File Path Configuration

Current versions intentionally use manually specified file paths.

Example:

```
Solar_Maximum/
    2014/
        PIL/
        SJG/
    2015/
        PIL/
        SJG/
    PIL2014download
    SJG2015download
```

Developers only need to modify the path variables near the beginning of each module when processing a different dataset.

This design avoids complicated configuration systems while remaining transparent for scientific reproducibility.

---

# 8. Adding New INTERMAGNET Observatories

To analyse another observatory:

1. Create a new folder inside the appropriate solar phase.
2. Copy the downloaded INTERMAGNET files.
3. Update the file path variable.
4. Execute Module 1 or Module 2.
5. Merge outputs using Module 7.
6. Include the merged dataset in later analyses.

No changes to the remaining processing pipeline are normally required.

---

# 9. Adding New OMNI Datasets

To process additional OMNI datasets:

* Download the required hourly files.
* Place them within the corresponding solar phase directory.
* Update the input path inside Module 3.
* Execute Modules 3–6.
* Continue with the correlation pipeline.

---

# 10. Creating New Analysis Modules

Additional analysis modules should follow the existing design philosophy.

Recommended structure:

```
Import libraries

↓

Configuration

↓

Load data

↓

Processing

↓

Visualisation

↓

Export

↓

Console summary
```

Each module should remain independent and generate clearly named outputs.

---

# 11. Output Conventions

Generated filenames should remain descriptive.

Examples:

```
PIL_2014_Merged_Cleaned.csv

SJG_2017_Merged_Cleaned.csv

OMNI_Hourly_Cleaned.csv

Dst_Storm_Events.csv

correlation_2014.txt

H_vs_Dst.png

Evolution_Comparison_Optimized.mp4
```

Consistent naming simplifies downstream processing.

---

# 12. Debugging

Typical debugging procedure:

* Verify directory paths.
* Confirm file names.
* Check CSV headers.
* Inspect timestamp formats.
* Validate numerical columns.
* Ensure prerequisite modules have completed successfully.

Many modules print informative messages describing progress and skipped records.

---

# 13. Performance Optimization

Current optimisation strategies include:

* NumPy vector operations
* Sequential processing
* Incremental file reading
* Lightweight CSV parsing
* Simple memory management

Potential future improvements include multiprocessing and chunk-based processing for very large datasets.

---

# 14. Version Control

Recommended Git workflow:

```
Clone Repository

↓

Create Feature Branch

↓

Develop

↓

Commit

↓

Test

↓

Merge

↓

Tag Release
```

Suggested commit message style:

```
feat:

fix:

docs:

refactor:

test:

release:
```

This improves repository history and collaboration.

---

# 15. Future Development

Potential enhancements include:

* Automatic path discovery
* Configuration files
* Command-line interface
* Graphical user interface
* Real-time OMNI downloads
* Automatic INTERMAGNET downloads
* Additional observatories
* Additional geomagnetic indices
* Machine learning prediction
* Storm forecasting
* Parallel computing
* Python package distribution
* Continuous integration testing
* Docker deployment
* Cloud execution support

---

# Closing Remarks

The modular architecture of SpaceWeather-Hemispheric-Analysis allows researchers to extend, replace or improve individual processing stages without redesigning the complete workflow. Developers are encouraged to preserve this philosophy of transparent, reproducible and maintainable scientific computing when contributing future enhancements.
