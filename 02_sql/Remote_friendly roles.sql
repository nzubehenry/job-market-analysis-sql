-- Remote Work Adoption by Job Role
--This analysis examines the proportion of remote opportunities across different data-related job roles.
SELECT
	job_title_short,
	COUNT(*) total_jobs,
	CAST(
	SUM(CASE
		WHEN job_work_from_home = 1
		THEN 1 ELSE 0
		END) * 100.0 / COUNT(*) 
	AS DECIMAL(10,2)) AS remote_percentage
--Converting the bit(boolean) into numeric values and then using the sum function.

FROM
	[dbo].[fact_job_postings]

GROUP BY
	job_title_short

ORDER BY
	remote_percentage DESC

-- Insight:
-- Remote work adoption varies across job roles, with certain positions like the Engineering roles offering a higher proportion of remote opportunities.
-- This suggests that some roles are more adaptable to remote environments, 
-- likely due to the nature of their tasks and reliance on digital tools.