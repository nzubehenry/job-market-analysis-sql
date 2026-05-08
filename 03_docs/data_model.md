# Data Model

## Overview

A star schema design was used to structure the dataset for efficient analytical querying and simplified relationship management.

The schema separates transactional job posting data from descriptive dimension data, improving organization and scalability.

---

## Schema Design

### Fact Table

#### `fact_job_postings`
The central table containing job posting information such as:
- job titles
- salaries
- posting dates
- remote work indicators
- company references

This table stores the measurable and analytical data used throughout the project.

---

## Dimension Tables

### `dim_company`
Contains company-related information such as:
- company names
- company links
- metadata related to employers

---

### `dim_skills`
Contains technical skills associated with job postings.

Examples:
- SQL
- Python
- Tableau
- AWS

---

## Bridge Table

### `bridge_job_skills`
Handles the many-to-many relationship between:
- job postings
- technical skills

A single job posting may require multiple skills, while each skill may appear across many job postings.

---

## Relationships

- `fact_job_postings.company_id` → `dim_company.company_id`
- `bridge_job_skills.job_id` → `fact_job_postings.job_id`
- `bridge_job_skills.skill_id` → `dim_skills.skill_id`

---

## Schema Diagram

![Schema Diagram](schema_diagram.png)

---

## Outcome

The star schema structure simplified SQL querying, improved analytical flexibility, and supported efficient aggregation and relationship handling throughout the analysis process.