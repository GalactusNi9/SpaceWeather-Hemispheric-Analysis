## Module 15 — Publication-Quality Scientific Animation

### Purpose

Module 15 is the final visualization stage of the software pipeline. It converts the complete hemispheric dataset into a high-quality MP4 animation optimized for scientific presentations, journal supplementary material, conference demonstrations, and educational outreach.

Unlike previous modules that generate GIF animations, this module produces a compressed high-resolution video using FFmpeg for superior playback quality and efficient storage.

---

### Scientific Inputs

* OMNI_Master_Merged.csv
* SJG_Master_Merged.csv
* PIL_Master_Merged.csv

---

### Processing Steps

1. Load synchronized master datasets.
2. Extract Dst index.
3. Extract Kp index.
4. Extract SJG H-component.
5. Extract PIL H-component.
6. Synchronize all datasets.
7. Automatically determine common dataset length.
8. Downsample observations for efficient rendering.
9. Configure publication-quality plotting environment.
10. Initialize animation objects.
11. Update graphical frames incrementally.
12. Render synchronized hemispheric evolution.
13. Encode animation using FFmpeg.
14. Export compressed MP4 video.

---

### Visualization Layout

Upper Panel

* SJG H-component
* Dst Index
* Kp Index

Lower Panel

* PIL H-component
* Dst Index
* Kp Index

Both panels evolve simultaneously, enabling direct comparison of hemispheric geomagnetic behavior under identical solar wind conditions.

---

### Output File

```text
Evolution_Comparison_Optimized.mp4
```

---

### Software Components

This module utilizes:

* matplotlib.animation
* FFMpegWriter
* NumPy
* FFmpeg video encoder

---

### Scientific Contribution

The publication-quality MP4 animation provides a reproducible visualization of geomagnetic variability over Solar Cycle 24, illustrating the coupled evolution of planetary geomagnetic indices and hemispheric magnetic field measurements. It serves as a communication tool for research dissemination and complements the statistical analyses generated in earlier modules.

---

### Position in Workflow

```text
Master Datasets
        │
        ▼
Module 15
Publication Animation
        │
        ▼
Optimized MP4 Video
        │
        ▼
Final Research Outputs
```

---

### Final Software Outputs

Upon completion of Module 15, the software has generated:

* Cleaned observatory datasets
* Cleaned OMNI datasets
* Geomagnetic storm catalogues
* Storm timing metadata
* Seasonal classifications
* Annual merged datasets
* Solar phase datasets
* Master merged datasets
* Pearson correlation analyses
* Statistical significance results
* Publication-quality figures
* Hemispheric comparison animations
* Optimized MP4 scientific visualization

Module 15 represents the terminal stage of the **SpaceWeather-Hemispheric-Analysis** workflow, completing the end-to-end pipeline from raw INTERMAGNET and OMNI observations to reproducible scientific analyses and publication-ready visual products.
