USE hr;

DELIMITER $$

DROP FUNCTION IF EXISTS BuscarQuantidadeDeEmpregosPorFuncionario $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE QUANT INT;
  SELECT
    COUNT(JOB_ID) AS QUANT
  FROM hr.job_history
  WHERE EMPLOYEE_ID = id
  GROUP BY EMPLOYEE_ID
  INTO QUANT;
  RETURN QUANT;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
