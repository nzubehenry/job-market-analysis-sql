--Top Hiring Companies in the data job market

SELECT TOP 10
	c.[name] AS company_name,
	COUNT(job_id) AS job_count

FROM [dbo].[fact_job_postings] j
JOIN [dbo].[dim_company] c
ON j.company_id = c.company_id

GROUP BY
	c.[name]

ORDER BY 
	job_count DESC


---- Insight:
-- A small number of companies account for a large share of job postings, indicating concentrated hiring activity in the data job market.
-- This suggests that certain organizations are leading in data-driven initiatives and talent acquisition.