-- ANALYSIS 1: Which Skills are in Demand each role?
SELECT 
	skills,
	count(*) skill_count

FROM [dbo].[dim_skills] s
JOIN [dbo].[bridge_job_skills] b
ON s.skill_id = b.skill_id

JOIN [dbo].[fact_job_postings] f
ON b.job_id = f.job_id

GROUP BY
	skills

ORDER BY
	skill_count DESC

-- Insight:
-- Demand for data-related skills is highly concentrated around a few core technologies, with SQL and Python emerging 
-- as the most frequently requested skills.
-- This indicates that proficiency in these foundational tools is essential for most data roles, regardless of specialisation.