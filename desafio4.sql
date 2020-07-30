SELECT
  job_id AS `Código do Cargo`,
  AVG(salary) AS `Média`,
    CASE
      WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Junior'
      WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS `Senioridade`
FROM hr.employees
GROUP BY job_id
ORDER BY `Média`;
