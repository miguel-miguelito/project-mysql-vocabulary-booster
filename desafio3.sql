SELECT
  job_title,
  AVG(max_salary - min_salary) AS `Diferença média entre salários mínimos e máximos`
FROM hr.jobs
GROUP BY job_title
ORDER BY `Diferença média entre salários mínimos e máximos`;
