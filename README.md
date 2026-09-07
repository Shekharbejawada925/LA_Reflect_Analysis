# LA_Reflect_Analysis
R code for learning analytics, gaze analysis, and visualisation.
# Learning Analytics: Time Spent and Visual Gaze Behaviour

## Overview

This repository contains the R code used for the Learning Analytics assignment on a Social Robotics English reading activity.

The analysis examines how learners' time spent with story content relates to their visual gaze behaviour across learning sections, screens, and learners.

## Research Questions

1. Which story sections and language versions receive the greatest amount of visual attention across learners?

2. Where do learners visually concentrate their attention when reading the same learning screen?

3. How does visual gaze behaviour vary across learners while completing the same reading activity?

## Data

The analysis uses two course-provided datasets:

- Interaction log: 507 records from 35 learners.
- Gaze data: 220,657 usable gaze observations from 35 learners across 1,221 unique screens.

The learning activity contains seven English story sections, seven Japanese support sections, and four comprehension questions.

## Analysis Methods

The R analysis includes:

- Data cleaning and preparation
- Gaze-data processing
- Gaze-derived dwell-time calculation
- Story section and language comparison
- Gaze-density heatmap
- Learner-level gaze variation
- Comprehension scoring
- Spearman correlation analysis
- Data visualisation

## Main Findings

The analysis found that:

- English story content had higher mean gaze-derived dwell time than Japanese support content.
- English Story Section 2 had the highest mean dwell time.
- Gaze observations were concentrated in particular regions of the representative Section 2 screen.
- Learners showed substantial variation in total story dwell time.
- No statistically significant association was observed between dwell/gaze measures and comprehension accuracy in the matched learner sample.

## Software

The analysis was conducted using:

- R
- RStudio

## Author

Bejawada Shekhar  
Student ID: 26M1032  
IIT Bombay

## Code

The main analysis is contained in:

`LA_Reflect_Analysis.R`
