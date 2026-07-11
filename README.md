# SpaceWeather-Hemispheric-Analysis

*A Python research toolkit for hemispheric geomagnetic response analysis using INTERMAGNET observatory measurements and space weather indices.*

---

## Overview

**SpaceWeather-Hemispheric-Analysis** is a Python-based scientific software package developed to investigate hemispheric differences in geomagnetic responses during Solar Cycle 24 (2008–2020). The toolkit provides an end-to-end workflow for preprocessing observatory data, detecting geomagnetic storm events, integrating multiple space weather datasets, performing statistical analyses, and generating scientific visualizations and animations.

The software was developed to support reproducible research by combining ground-based geomagnetic observations with internationally recognized space weather indices. Rather than focusing on a single analysis task, it provides a modular framework that allows researchers to process large observational datasets and evaluate relationships between geomagnetic field variations and solar-terrestrial activity.

---

## Scientific Objectives

The primary objectives of this software are to:

* Process H-component geomagnetic observations from multiple observatories.
* Standardize and preprocess geomagnetic and solar activity datasets.
* Detect geomagnetic storm intervals using the Dst index.
* Select significant events for detailed investigation.
* Merge datasets originating from different scientific data providers.
* Compute Pearson correlation statistics between geomagnetic observations and selected space weather indices.
* Generate publication-quality visualizations and animations.
* Support reproducible space weather and geomagnetic research.

---

## Key Features

* Modular Python architecture
* Automated preprocessing pipeline
* Geomagnetic storm detection
* Multi-source data integration
* Pearson correlation analysis
* Batch processing capabilities
* Scientific visualization tools
* Animation generation
* Designed for large observational datasets
* Reproducible scientific workflow

---

## Software Architecture

The analysis pipeline follows a modular workflow:

1. Convert raw H-component observatory data.
2. Convert Kyoto Dst index files.
3. Detect geomagnetic storm events.
4. Select events for analysis.
5. Merge geomagnetic and space weather datasets.
6. Perform statistical correlation analyses.
7. Generate plots and animations.
8. Produce final scientific outputs.

Each module performs a dedicated task, allowing individual stages to be executed independently or as part of the complete workflow.

---

## Repository Structure

```text
SpaceWeather-Hemispheric-Analysis/

├── src/
├── docs/
├── sample_data/
├── sample_output/
├── images/
├── tests/

README.md
requirements.txt
LICENSE
CHANGELOG.md
CONTRIBUTING.md
CITATION.cff
```

---

## Software Modules

| Module                                     | Description                                                                   |
| ------------------------------------------ | ----------------------------------------------------------------------------- |
| 1HCompConvertor.py                         | Converts raw H-component observatory data into a standardized format.         |
| 2MultiHCompConverter.py                    | Batch conversion of multiple H-component datasets.                            |
| 3DstConverter.py                           | Converts Kyoto Dst data into analysis-ready format.                           |
| 4DstStormDetector.py                       | Detects geomagnetic storm intervals.                                          |
| 5DstApKpF10PearsonCorrelation.py           | Computes Pearson correlations between geomagnetic indices.                    |
| 6EventSelection.py                         | Selects events for detailed investigation.                                    |
| 7MultiHCompMerger.py                       | Merges processed H-component datasets.                                        |
| 10PILSJGOMNIALLPHASESMULTIMERGER.py        | Integrates observatory and space weather datasets across all analysis phases. |
| 11UniversalMergerMotherOfALL.py            | Produces the final integrated analysis dataset.                               |
| 8HtoDstKpApF10.7PearsonCorrelation.py      | Computes H-component correlations with Dst, Kp, Ap and F10.7 indices.         |
| 9BatchHtoDstKpApF10.7PearsonCorrelation.py | Performs automated batch correlation analyses.                                |
| 12AnimatorV1.py                            | Scientific animation generation (Version 1).                                  |
| 13AnimatorV2.py                            | Enhanced scientific animation generation (Version 2).                         |
| 14SimulecrumV1.1.py                        | Scientific simulation module.                                                 |
| 15SimulecrumV1.2.py                        | Updated scientific simulation module.                                         |

---

## Required Data

This software does **not** automatically download scientific datasets.

Users are responsible for obtaining the required data from the official providers before executing the analysis.

Required datasets include:

* INTERMAGNET observatory H-component measurements
* Kyoto Dst Index
* OMNI Solar Wind Data
* Kp Index
* Ap Index
* F10.7 Solar Radio Flux

Detailed acquisition instructions are provided in the User Manual.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/<username>/SpaceWeather-Hemispheric-Analysis.git
```

Navigate into the project directory:

```bash
cd SpaceWeather-Hemispheric-Analysis
```

Install the required Python packages:

```bash
pip install -r requirements.txt
```

---

## Typical Workflow

1. Download the required datasets.
2. Convert raw H-component observations.
3. Convert Dst files.
4. Detect geomagnetic storms.
5. Select analysis events.
6. Merge datasets.
7. Execute correlation modules.
8. Generate figures and animations.
9. Review statistical outputs.

---

## Outputs

Depending on the executed modules, the software produces:

* CSV datasets
* Correlation matrices
* Statistical summaries
* Publication-quality figures
* Time-series plots
* Scientific animations
* Intermediate merged datasets

---

## Intended Users

This software is intended for:

* Space weather researchers
* Geophysicists
* Heliophysics researchers
* Graduate students
* Data scientists working with geomagnetic observations
* Researchers studying solar-terrestrial interactions

---

## Citation

If this software contributes to your research, please cite this repository using the citation information provided in `CITATION.cff`.

---

## License

This project is distributed under the terms of the selected open-source license.

---

## Acknowledgements

The development of this software was made possible through the availability of publicly accessible geomagnetic and space weather datasets provided by the international scientific community. The project acknowledges the organizations responsible for maintaining and distributing these data resources.

---

## Future Development

Planned improvements include:

* Additional geomagnetic indices
* Extended Solar Cycle analyses
* Enhanced visualization capabilities
* Performance optimization
* Improved documentation
* Expanded statistical analysis modules

---

**Version:** 1.0.0

**Programming Language:** Python

**Research Domain:** Space Weather • Geomagnetism • Solar-Terrestrial Physics
