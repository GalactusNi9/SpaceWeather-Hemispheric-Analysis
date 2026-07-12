# Module 4 — 4StormDetector

## Technical Module Documentation

---

# Purpose

`4StormDetector.py` automatically identifies geomagnetic storm events from cleaned OMNI Dst data.

The module detects storm onset, peak intensity, and recovery phase using internationally accepted Dst thresholds, producing a structured catalogue of storm events for subsequent statistical and correlation analyses.

---

# Position in Workflow

```text
OMNI_Hourly_Cleaned.csv

↓

4StormDetector.py

↓

Dst_Storm_Events.csv

↓

Modules 5 and 6
```

---

# Input

Cleaned OMNI hourly dataset.

Example

```text
OMNI_Hourly_Cleaned.csv
```

Required columns include:

* Datetime
* Dst

---

# Output

The module generates:

```text
Dst_Storm_Events.csv
```

containing:

```text
Type
Start
Peak
Recovery
PeakDst
```

---

# Scientific Basis

Storm identification follows Dst index thresholds commonly used in geomagnetic studies.

The implemented thresholds are:

| Storm Stage   | Threshold     |
| ------------- | ------------- |
| Storm onset   | Dst < -50 nT  |
| Intense storm | Dst < -100 nT |
| Recovery      | Dst > -30 nT  |

---

# Scientific Operations

The module performs the following sequence:

1. Load cleaned OMNI dataset.
2. Read hourly Dst values.
3. Scan the complete time series sequentially.
4. Detect storm onset.
5. Track minimum Dst value.
6. Record storm peak.
7. Monitor recovery phase.
8. Detect storm termination.
9. Classify storm intensity.
10. Store event information.
11. Export storm catalogue.

---

# Storm Classification

Storms are categorized into:

* Moderate Storm
* Intense Storm
* Ongoing Storm

Classification depends on the minimum Dst value reached during each event.

---

# Event Parameters

Each detected storm records:

* Storm type
* Start time
* Peak time
* Recovery time
* Minimum Dst value

These parameters form the basis for later temporal and hemispheric analyses.

---

# Detection Logic

The algorithm follows a state-based approach.

```text
Normal Conditions

↓

Dst < -50

↓

Storm Begins

↓

Track Lowest Dst

↓

Dst > -30

↓

Storm Ends
```

---

# Algorithms

Implemented methods include:

* Sequential event detection
* Threshold-based classification
* Peak tracking
* Recovery monitoring
* Event logging

---

# Input Variables

Required variables:

* Datetime
* Dst

---

# Output Variables

Generated variables:

* Type
* Start
* Peak
* Recovery
* PeakDst

---

# Edge Case Handling

If the dataset ends before recovery occurs, the storm is automatically labeled:

```text
Ongoing
```

This ensures that incomplete storm events are preserved rather than discarded.

---

# Dependencies

* NumPy
* datetime

---

# Error Handling

The module safely handles:

* incomplete records,
* malformed timestamps,
* datasets ending during active storms,
* missing observations.

Processing continues without terminating unexpectedly.

---

# Typical Usage

Execute the module after generating the cleaned OMNI hourly dataset.

Each execution scans the complete Dst time series and produces a comprehensive storm-event catalogue.

---

# Generated Dataset

The resulting storm catalogue provides the event intervals required for:

* storm-specific correlation analysis,
* seasonal statistics,
* duration analysis,
* recovery analysis,
* Solar Cycle 24 geomagnetic investigations.

---

# Next Module

```text
5StormCorrelation.py
```
