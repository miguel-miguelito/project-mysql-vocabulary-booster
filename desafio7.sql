SELECT
  JH.employee_id,
  UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS `Nome completo`,
  JH.start_date,
  E.salary
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.employee_id = E.employee_id
WHERE MONTH(start_date) IN (1, 2, 3)
ORDER BY `Nome completo`;
