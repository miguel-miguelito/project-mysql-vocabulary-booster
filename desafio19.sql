USE hr;

DELIMITER $$

DROP PROCEDURE IF EXISTS ExibirHistoricoCompletoPorFuncionario $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(IN employee_id INT)
BEGIN
  SELECT
    JH.EMPLOYEE_ID,
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome Completo`,
    J.JOB_TITLE AS Cargo,
    D.DEPARTMENT_NAME AS Departamento
  FROM hr.job_history AS JH
  INNER JOIN hr.employees AS E
  ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  INNER JOIN hr.jobs AS J
  ON J.JOB_ID = JH.JOB_ID
  INNER JOIN hr.departments AS D
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
  WHERE JH.EMPLOYEE_ID = employee_id;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
