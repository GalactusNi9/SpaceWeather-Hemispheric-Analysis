# Module 13 — 13HemisphericComparisonAnimation

## Technical Module Documentation

---

# Purpose

`13HemisphericComparisonAnimation.py` extends the previous visualization by introducing simultaneous comparisons between the northern and southern hemisphere geomagnetic responses during Solar Cycle 24.

The module synchronizes measurements from the SJG (Northern Hemisphere) and PIL (Southern Hemisphere) INTERMAGNET observatories with planetary geomagnetic indices (Dst and Kp), allowing direct visual comparison of hemispheric behaviour throughout the study period.

This represents the first comparative visualization stage of the software.

---

# Position in Workflow

```text
Master Datasets

↓

13HemisphericComparisonAnimation.py

↓

Hemispheric Response Animation

↓

Module 14
```

---

# Inputs

The module loads the complete master datasets produced during Module 11.

```text
OMNI_Master_Merged.csv

SJG_Master_Merged.csv

PIL_Master_Merged.csv
```

---

# Variables Used

## OMNI

* Datetime
* Dst
* Kp

## SJG

* Datetime
* H

## PIL

* Datetime
* H

---

# Output

The module generates

```text
Hemispheric_Geomagnetic_Response.gif
```

---

# Scientific Workflow

The module executes the following sequence.

1. Load OMNI master dataset.
2. Load SJG master dataset.
3. Load PIL master dataset.
4. Parse observation timestamps.
5. Synchronize datasets.
6. Determine common animation length.
7. Generate animation frames.
8. Update northern hemisphere response.
9. Update southern hemisphere response.
10. Export animation.

---

# Visualization Layout

The animation contains two synchronized panels.

---

## Panel 1

Northern Hemisphere

Displays

* SJG H-component
* Dst Index
* Kp Index

---

## Panel 2

Southern Hemisphere

Displays

* PIL H-component
* Dst Index
* Kp Index

---

# Synchronization Strategy

All observations are synchronized using their timestamps before visualization.

```text
OMNI

↓

Common Timeline

↑

SJG

↑

PIL
```

Only synchronized observations are displayed during each animation frame.

---

# Animation Method

Each animation frame advances through approximately fifty observations.

```text
Frame 1

↓

Frame 2

↓

Frame 3

↓

...

↓

Final Frame
```

This approach improves rendering efficiency while maintaining smooth temporal evolution.

---

# Scientific Interpretation

The animation allows direct observation of

* hemispheric similarities,
* hemispheric asymmetries,
* geomagnetic storm development,
* disturbance propagation,
* storm recovery,
* responses to planetary forcing.

Researchers can visually compare how both observatories react to identical geomagnetic events represented by the Dst and Kp indices.

---

# Algorithms

The module implements

* CSV parsing,
* timestamp synchronization,
* dynamic plotting,
* frame-by-frame animation,
* GIF generation.

---

# Dependencies

* csv
* os
* datetime
* matplotlib
* matplotlib.animation

---

# Error Handling

The module automatically

* skips malformed observations,
* ignores incomplete records,
* checks for sufficient synchronized observations,
* reports parsing errors,
* prevents animation when insufficient data are available.

---

# Generated Visualization

The exported animation contains

* synchronized northern hemisphere observations,
* synchronized southern hemisphere observations,
* planetary disturbance indices,
* labelled axes,
* legends,
* continuously updated frames.

---

# Scientific Contribution

This module introduces comparative hemispheric visualization into the software pipeline.

Instead of examining each observatory independently, it enables simultaneous inspection of northern and southern geomagnetic responses under identical space weather conditions, providing valuable qualitative insight into hemispheric variability during Solar Cycle 24.

---

# Typical Usage

Execute the module after generating the master datasets.

The animation serves as a scientific visualization for presentations, exploratory analysis, and qualitative comparison of hemispheric geomagnetic behaviour.

---

# Generated Product

```text
Hemispheric_Geomagnetic_Response.gif
```

---

# Next Module

```text
14EvolutionComparisonAnimation.py
```
