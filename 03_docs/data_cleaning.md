# Data Cleaning & Preparation

## Overview

Before analysis, the raw dataset required cleaning and transformation to ensure consistency, accuracy, and compatibility with SQL Server.

The dataset originally contained multiple worksheets representing different entities such as job postings, companies, and skills.

---

## Data Cleaning Process

### 1. Combining and Organizing Data
- Imported the Excel dataset into Power Query
- Reviewed and organized the worksheets into structured tables
- Ensured consistency across related datasets

---

### 2. Handling Data Type Issues
- Standardized numeric, text, and date columns
- Converted salary fields into appropriate numeric formats
- Formatted date columns for SQL compatibility

---

### 3. Handling Invalid and Missing Values
- Identified invalid values such as `#NAME?`
- Removed or corrected problematic records
- Filtered null salary values where necessary during salary analysis

---

### 4. Duplicate and Consistency Checks
- Reviewed potential duplicate records
- Checked for inconsistencies in skill naming conventions
- Standardized column naming for clarity and consistency

---

### 5. Preparing Data for SQL Server
- Imported cleaned datasets into SQL Server staging tables (`stg_*`)
- Structured the data for dimensional modeling and analytical querying

---

## Outcome

The cleaning and preparation process improved data consistency, reduced errors, and ensured reliable analytical results throughout the project.