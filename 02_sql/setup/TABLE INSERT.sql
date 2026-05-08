--Inserting into to my final table for analysis

--Inserting into fact table also editing and selecting essential columns for analysis
INSERT INTO fact_job_postings
SELECT
	job_id,
	company_id,
	job_title_short,

--Standardise location -> Remote Vs Country
	CASE 
		WHEN job_location = 'Anywhere' THEN 'Remote'
		ELSE job_country
	END AS location_normalized,
	
	job_work_from_home,
	job_posted_date,

--creating normalised salary -> salary_annual.
	CASE
		WHEN salary_rate = 'hour' AND salary_hour_avg IS NOT NULL
			THEN salary_hour_avg * 40 * 52
		WHEN salary_rate = 'year' AND salary_year_avg IS NOT NULL
			THEN salary_year_avg
		ELSE NULL
	END AS salary_annual

FROM stg_job_postings;

--Inserting into other dimensional tables.
INSERT INTO dim_company
SELECT DISTINCT * 
FROM stg_company;

INSERT INTO dim_skills
SELECT DISTINCT skill_id, skills, [type]
FROM stg_skills;

INSERT INTO bridge_job_skills
SELECT DISTINCT job_id, skill_id 
FROM stg_job_skills;

----used Distinct to prevent duplicate rows from entering table
--because staging tables are not guaranteed to be clean. Duplcates are usually accidental and unwanted.
--Distinct is not best practise for this, but acceptable here as a quick deduplication step.

