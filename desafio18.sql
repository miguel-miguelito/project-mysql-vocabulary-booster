USE hr;

DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quant INT;
  SELECT COUNT(*)
  FROM hr.employees
  WHERE MONTH(hire_date) = mes AND YEAR(hire_date) = ano
  INTO quant;
  RETURN quant;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
