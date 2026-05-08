# Job Market Data Analysis (SQL Project)

> A SQL-based analysis of job market trends, focusing on skill demand, salary insights, hiring patterns, and remote work adoption.

## 📊 Overview

This project explores trends within the data job market using SQL Server and Power Query.  
The analysis focuses on identifying:
- High-paying data roles
- In-demand technical skills
- Remote-friendly positions
- Top hiring companies
- Skills that combine high demand with high salaries

The project follows a complete data workflow including:
- Data cleaning and transformation
- Data modeling using a star schema
- SQL-based analysis and business insights

## ⚙️ Data Pipeline

The project followed the workflow below:

Excel Dataset → Power Query (Cleaning & Transformation) → SQL Server (Data Modeling) → SQL Analysis → Business Insights

## 🧹 Data Cleaning & Preparation

The raw dataset contained multiple worksheets and required preprocessing before analysis.

### Key Cleaning Steps:
- Combined and organized data using Power Query
- Standardized data types for SQL compatibility
- Handled invalid values such as `#NAME?`
- Checked for duplicates and inconsistencies
- Formatted date and salary columns appropriately
- Renamed and structured staging tables (`stg_*`) before modeling

These cleaning steps ensured consistency and reliability throughout the analysis process.

## 🧱 Data Model

A star schema design was used to structure the dataset efficiently for analytical queries.

### Main Tables:
- `fact_job_postings` → central fact table containing job posting records
- `dim_company` → company-related information
- `dim_skills` → technical skills referenced in job postings
- `bridge_job_skills` → bridge table handling the many-to-many relationship between jobs and skills

![Schema Diagram](03_docs/schema_diagram.png)

### 📈 Highest Paying Data Roles

Senior-level positions dominate salary rankings, with Senior Data Scientists and Senior Data Engineers earning the highest average salaries.  
This reflects the premium placed on advanced analytical and engineering expertise.

| Role | Average Salary ($) |
|------|-------------------|
| Senior Data Scientist | 147,353 |
| Senior Data Engineer | 142,584 |
| Data Engineer | 126,502 |
| Data Scientist | 125,877 |
| Machine Learning Engineer | 124,857 |

### 🌍 Remote-Friendly Roles

Engineering-focused roles show the highest proportion of remote opportunities, suggesting that infrastructure and technical development roles adapt more easily to distributed work environments.

| Role | Remote % |
|------|----------|
| Senior Data Engineer | 14.69% |
| Data Engineer | 11.39% |
| Machine Learning Engineer | 10.49% |
| Senior Data Scientist | 10.27% |
| Data Scientist | 8.41% |

### 🔥 Most Frequently Appearing Skills

SQL and Python dominate job postings, reinforcing their importance as foundational skills within the data industry.

| Skill | Frequency |
|------|-----------|
| SQL | 276,358 |
| Python | 273,268 |
| R | 94,175 |
| Java | 61,812 |
| SAS | 59,746 |

### 💡 Optimal Skills (High Demand + High Salary)

The most valuable skills combine strong market demand with high earning potential.  
Technologies related to scalable systems, backend engineering, and cloud infrastructure stand out prominently.

| Skill | Demand Count | Avg Salary ($) |
|------|--------------|----------------|
| Golang | 97 | 136,675 |
| Rust | 84 | 122,040 |
| Scala | 1,831 | 111,901 |
| MongoDB | 1,033 | 109,521 |
| Python | 54,466 | 98,877 |

### 🏢 Top Hiring Companies

A small group of companies account for a large volume of data-related job postings, indicating concentrated hiring activity in the market.

| Company | Job Count |
|---------|-----------|
| Emprego | 6,661 |
| Booz Allen Hamilton | 2,890 |
| Dice | 2,828 |
| HARNHAM | 2,558 |
| Insight Global | 2,254 |

## 🛠️ Tools Used

- SQL Server
- Power Query (Excel)
- Git & GitHub
- dbdiagram.io

## 📁 Project Structure

```plaintext
job_market_analysis/
│
├── 01_data/
├── 02_sql/
│   ├── setup/
│   ├── analysis/
│
├── 03_docs/
│   ├── data_cleaning.md
│   ├── data_model.md
│   ├── analysis_breakdown.md
│
├── README.md
```

---

# 🚀 SECTION 8: HOW TO RUN

## ▶️ How to Run This Project

1. Clone the repository
2. Import the dataset from the `01_data/` folder into SQL Server
3. Run setup scripts inside `02_sql/setup/`
4. Execute analysis queries from `02_sql/analysis/`

---

## 🚀 Key Takeaways

- SQL and Python remain foundational skills in the data industry
- Senior-level and engineering-focused roles command the highest salaries
- Cloud and backend technologies provide strong earning potential
- Remote work adoption varies significantly across job roles
- Combining demand analysis with salary analysis helps identify the most valuable technical skills

This project demonstrates how structured SQL analysis can transform raw job posting data into meaningful business insights.
