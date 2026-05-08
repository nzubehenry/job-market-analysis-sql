--Company (Dimension Table)
CREATE TABLE dim_company (
	company_id INT PRIMARY KEY,
	name VARCHAR(255),
	link VARCHAR(500),
	link_google VARCHAR(500),
	thumbnail VARCHAR(500)
);

--Skills (Dimension Table)
CREATE TABLE dim_skills (
	skill_id INT PRIMARY KEY,
	skills VARCHAR(255),
	type VARCHAR(100)
);

--Job Postings (Fact Table)
CREATE TABLE fact_job_postings (
	job_id INT PRIMARY KEY,
	company_id INT,
	job_title_short VARCHAR(255),
	location_normalized VARCHAR(100),
	job_work_from_home BIT,
	job_posted_date DATE,
	salary_annual DECIMAL(10,2)
);

--Bridge Table
CREATE TABLE bridge_job_skills (
	job_id INT,
	skill_id INT,
	PRIMARY KEY (job_id, skill_id),
	FOREIGN KEY (job_id) REFERENCES fact_job_postings(job_id),
	FOREIGN KEY (skill_id) REFERENCES dim_skills(skill_id)
);
