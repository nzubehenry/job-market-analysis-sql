--Salary Trends Across Data Job Role

SELECT 
	job_title_short,
	CAST(AVG(salary_annual)
	AS DECIMAL (10,2)) AS avg_salary

FROM 
	[dbo].[fact_job_postings]

WHERE 
	salary_annual IS NOT NULL

GROUP BY
	job_title_short

ORDER BY
	avg_salary DESC


-- Insight:
-- Data-related roles show significant variation in average salaries,
-- with more advanced roles such as Data Scientists and Engineers commanding higher compensation.
-- This reflects the increased demand for specialized technical expertise and experience in the data industry.