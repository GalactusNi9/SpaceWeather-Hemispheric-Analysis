# SpaceWeather-Hemispheric-Analysis

> **An Advanced Modular Research Software Package for Hemispheric Geomagnetic Analysis During Solar Cycle 24 (2008–2020)**

![Python](https://img.shields.io/badge/Python-3.x-blue.svg)
![Version](https://img.shields.io/badge/Version-1.0.0-success.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Research](https://img.shields.io/badge/Research-Space%20Weather-orange.svg)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen.svg)


# Overview

**SpaceWeather-Hemispheric-Analysis** is an advanced modular scientific software package developed for investigating hemispheric geomagnetic responses during **Solar Cycle 24 (2008–2020)**.

The software integrates geomagnetic observatory measurements from **INTERMAGNET** with **OMNI Space Weather** datasets to perform data preprocessing, storm detection, event selection, statistical correlation analysis, visualization, and scientific simulation.

Originally developed as part of an undergraduate research project, the software has been reorganized into a reproducible and well-documented research package suitable for future scientific development.


# Scientific Background

Space weather influences Earth's magnetosphere through interactions between the solar wind and the geomagnetic field. Understanding these interactions is essential for:

* Space Weather Forecasting
* Geomagnetism
* Solar–Terrestrial Physics
* Magnetospheric Science
* Ionospheric Research
* Scientific Data Analysis

This software investigates hemispheric responses using geomagnetic H-component observations together with selected space weather indices across different phases of Solar Cycle 24.


# Key Features

* Modular scientific workflow
* Fifteen independent Python modules
* INTERMAGNET H-component preprocessing
* OMNI Dst and Kp index processing
* Geomagnetic storm detection
* Event selection algorithms
* Multi-source dataset merging
* Pearson correlation analysis
* Automated visualization
* Scientific animations
* Simulation modules
* Reproducible scientific workflow
* Comprehensive technical documentation


# Scientific Datasets

The software utilises two primary scientific datasets.

## INTERMAGNET

Ground magnetic observatory measurements from:

* SJG Observatory (San Juan)
* PIL Observatory (Pilar)


## OMNI

Space weather parameters including:

* Dst Index
* Kp Index

The downloaded OMNI files may contain additional parameters, but this software primarily analyses Dst and Kp.


# Study Period

The research covers **Solar Cycle 24 (2008–2020)** divided into four scientific phases.

| Solar Phase      | Years     |
| ---------------- | --------- |
| Solar Minimum    | 2008–2010 |
| Ascending Phase  | 2011–2013 |
| Solar Maximum    | 2014–2015 |
| Descending Phase | 2016–2020 |


# Software Architecture

```text
                    INTERMAGNET                     OMNI
                         │                           │
                         └─────────────┬─────────────┘
                                       │
                                       ▼
                     H-Component & Dst Conversion
                                       │
                                       ▼
                        Geomagnetic Storm Detection
                                       │
                                       ▼
                              Event Selection
                                       │
                                       ▼
                            Multi-source Data Fusion
                                       │
                                       ▼
                        Pearson Correlation Analysis
                                       │
                                       ▼
                          Scientific Visualization
                                       │
                                       ▼
                             Animation Generation
                                       │
                                       ▼
                           Scientific Simulation
                                       │
                                       ▼
                            Research Outputs
```


# Software Modules

| Module                                  | Description                                                                       |
| --------------------------------------- | --------------------------------------------------------------------------------- |
| 1HCompConvertor                         | Converts raw INTERMAGNET H-component observations into analysis-ready datasets.   |
| 2MultiHCompConverter                    | Performs batch conversion of multiple observatory datasets.                       |
| 3DstConverter                           | Processes OMNI Dst datasets.                                                      |
| 4DstStormDetector                       | Detects geomagnetic storm events using the Dst index.                             |
| 5DstApKpF10PearsonCorrelation           | Computes statistical correlations between geomagnetic and solar activity indices. |
| 6EventSelection                         | Selects significant geomagnetic storm events for analysis.                        |
| 7MultiHCompMerger                       | Merges processed observatory datasets.                                            |
| 8HtoDstKpApF10.7PearsonCorrelation      | Performs H-component correlation analyses.                                        |
| 9BatchHtoDstKpApF10.7PearsonCorrelation | Automates large-scale correlation analyses.                                       |
| 10PILSJGOMNIALLPHASESMULTIMERGER        | Integrates observatory and OMNI datasets across all solar phases.                 |
| 11UniversalMergerMotherOfALL            | Produces the final integrated datasets used throughout the workflow.              |
| 12AnimatorV1                            | Generates scientific animations.                                                  |
| 13AnimatorV2                            | Produces enhanced animations and visualisations.                                  |
| 14SimulecrumV1.1                        | Scientific simulation module.                                                     |
| 15SimulecrumV1.2                        | Extended simulation and visualisation module.                                     |


# Repository Structure

```text
SpaceWeather-Hemispheric-Analysis/

├── docs/
├── src/
├── sample_data/
├── sample_output/
├── images/
├── tests/
│
├── README.md
├── LICENSE
├── requirements.txt
├── .gitignore
├── CHANGELOG.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
└── CITATION.cff
```


# Installation

Clone the repository:

```bash
git clone https://github.com/GalactusNi9/SpaceWeather-Hemispheric-Analysis.git
```

Enter the project directory:

```bash
cd SpaceWeather-Hemispheric-Analysis
```

Install required Python packages:

```bash
pip install -r requirements.txt
```


# Documentation

Comprehensive documentation is available in the `docs/` directory.

| Guide                   | Description                        |
| ----------------------- | ---------------------------------- |
| User Manual             | Complete software usage guide      |
| Installation Guide      | Installation and configuration     |
| Data Preparation Guide  | Scientific dataset preparation     |
| Technical Guide         | Internal software architecture     |
| Developer Guide         | Software maintenance and extension |
| GitHub Publishing Guide | Repository management              |


# Sample Outputs

The repository contains representative examples including:

* Processed datasets
* CSV files
* Time-series figures
* Correlation results
* Scientific animations
* Merged datasets


# Requirements

Python packages:

* numpy
* matplotlib

System requirements:

* Python 3.x
* Git
* Tkinter support (TkAgg backend)
* FFmpeg (for animation export)


# Citation

If you use this software in research, please cite the repository using the metadata provided in `CITATION.cff`.

Author:

**Phobian Maisha**

ORCID:

https://orcid.org/0000-0003-2657-7206

Repository:

https://github.com/GalactusNi9/SpaceWeather-Hemispheric-Analysis


# License

This project is released under the **MIT License**.

See the `LICENSE` file for details.


# Author

**Phobian Maisha**

GitHub: https://github.com/GalactusNi9

ORCID: https://orcid.org/0000-0003-2657-7206

Research Area:

* Space Weather
* Geomagnetism
* Solar–Terrestrial Physics
* Scientific Computing


# Acknowledgements

The author gratefully acknowledges the providers of the scientific datasets used throughout this project.

* INTERMAGNET
* Kyoto World Data Center for Geomagnetism
* NASA OMNIWeb

Their continued efforts in maintaining high-quality space weather datasets make reproducible scientific research possible.


# Future Development

Planned enhancements include:

* Graphical User Interface (GUI)
* Command-Line Interface (CLI)
* Automated workflow execution
* Additional observatories
* Machine learning integration
* Expanded statistical analysis
* Interactive visualisations
* Performance optimisation


# Final Remarks

**SpaceWeather-Hemispheric-Analysis** is a comprehensive scientific software package that demonstrates a complete research workflow for analysing hemispheric geomagnetic responses during Solar Cycle 24.

The project combines modular software engineering with reproducible scientific methodology, providing researchers and students with a structured platform for space weather data analysis, statistical investigation, visualisation, and future software development.
