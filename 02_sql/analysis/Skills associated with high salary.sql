--which skills are associated with higher salaries?

SELECT 
	skills,
	ROUND(AVG(salary_annual),2) AS average_salary

FROM [dbo].[fact_job_postings] f
JOIN [dbo].[bridge_job_skills] b
ON f.job_id = b.job_id
JOIN [dbo].[dim_skills] s
ON b.skill_id = s.skill_id

WHERE 
	salary_annual IS NOT NULL

GROUP BY
	skills

ORDER BY
	average_salary DESC

-- Insight:
-- Certain technical skills are consistently associated with higher average salaries, indicating that employers place a premium on these capabilities.
-- This highlights the importance of acquiring in-demand technical skills to maximize earning potential in the data field.