USE hr;

DELIMITER $$

DROP PROCEDURE IF EXISTS BuscarMediaPorCategoriaDeTrabalho $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN JobID VARCHAR(300))
BEGIN
  SELECT
    ROUND(AVG(SALARY), 2) AS media
  FROM hr.employees
  GROUP BY JOB_ID
  HAVING JOB_ID = JobID;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');
