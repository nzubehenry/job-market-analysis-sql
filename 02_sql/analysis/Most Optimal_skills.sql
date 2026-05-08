--OPTIMAL SKILLS (HIGH DEMAND + HIGH SALARY)

WITH high_demand AS(
SELECT
	s.skills,
	COUNT (b.skill_id) AS demand_count
FROM fact_job_postings j INNER JOIN bridge_job_skills b
ON j.job_id = b.job_id INNER JOIN dim_skills s
ON b.skill_id = s.skill_id
WHERE 
	job_title_short like '%Analyst%'
GROUP BY 
	s.skills

), 

top_paying_skills AS (
SELECT
	s.skills,
	ROUND(AVG (salary_annual), 2) avg_salary
FROM fact_job_postings f 
INNER JOIN bridge_job_skills b ON
f.job_id = b.job_id 
INNER JOIN dim_skills s ON
b.skill_id = s.skill_id
WHERE 
	job_title_short like '%Analyst%' AND
	salary_annual IS NOT NULL
GROUP BY s.skills
)

SELECT 
	h.skills,
	h.demand_count,
	t.avg_salary
FROM 
	high_demand h
INNER JOIN top_paying_skills t 
ON h.skills = t.skills

WHERE demand_count > 10

ORDER BY 
avg_salary DESC,
demand_count DESC;

-- Insight:
-- The analysis reveals a subset of skills that are both highly demanded and associated with higher salaries.
-- These "optimal skills" represent the most valuable areas for professionals to focus on, 
-- as they offer both strong job opportunities and higher earning potential.