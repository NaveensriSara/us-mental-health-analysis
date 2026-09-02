# U.S. Mental Health Trends: 2019–2024

## Project Overview

This project explores changes in mental health indicators among
U.S. adults using National Health Interview Survey data from
2019–2024.

The analysis examines:

- Anxiety
- Depression
- Mental health treatment
- Differences across demographic groups

## Tools

- PostgreSQL / pgAdmin — data cleaning and analysis
- Tableau — interactive visualization
- Python — exploratory and trend analysis
- R — statistical analysis

## Data Cleaning

The original imported dataset contained duplicate observations
and suppressed estimates.

SQL was used to:

- convert appropriate fields to numeric types
- handle suppressed estimates
- identify missing values
- identify duplicate observations
- create a clean analytical table

During validation, 2,184 records were found in the working table,
but only 546 were unique. Duplicate records were removed before
analysis.

## Analysis Questions

1. How have reported anxiety and depression changed from 2019–2024?
2. How do mental health trends differ across age groups?
3. How do trends differ by sex?
4. What differences appear across race and ethnicity?
5. How has reported counseling or therapy use changed?

## Tableau Dashboard

Add dashboard image here.

## Repository Structure

- `sql/` — PostgreSQL analysis
- `python/` — Python analysis
- `r/` — R analysis
- `data/` — analysis dataset
- `images/` — dashboard images
