## Module 14 — Hemispheric Geomagnetic Response Animation

### Purpose

Module 14 produces a synchronized hemispheric visualization that compares the geomagnetic H-component measured at the Northern Hemisphere (SJG Observatory) and Southern Hemisphere (PIL Observatory) with global geomagnetic activity represented by the Dst and Kp indices.

This module provides the first complete visual comparison of hemispheric magnetic field responses under identical space weather forcing conditions.

---

### Scientific Inputs

* OMNI_Master_Merged.csv
* SJG_Master_Merged.csv
* PIL_Master_Merged.csv

---

### Processing Steps

1. Load synchronized OMNI master dataset.
2. Load Northern Hemisphere observatory measurements.
3. Load Southern Hemisphere observatory measurements.
4. Parse timestamps.
5. Validate temporal alignment.
6. Remove incomplete observations.
7. Synchronize all datasets.
8. Determine animation frame count.
9. Generate two synchronized subplots:

   * SJG vs Dst and Kp
   * PIL vs Dst and Kp
10. Render frame-by-frame evolution.
11. Export the complete animation.

---

### Visual Outputs

Upper panel:

* SJG H-component
* Dst Index
* Kp Index

Lower panel:

* PIL H-component
* Dst Index
* Kp Index

---

### Output File

```text
Hemispheric_Geomagnetic_Response.gif
```

---

### Scientific Contribution

This module enables direct visual comparison between northern and southern geomagnetic responses throughout Solar Cycle 24, allowing qualitative assessment of hemispheric symmetry, timing differences, response amplitude, and storm evolution.

---

### Position in Workflow

```text
Master Datasets
        │
        ▼
Module 14
Hemispheric Animation
        │
        ▼
GIF Visualization
```
