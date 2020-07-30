SELECT 
  A.CustomerID,
  A.ContactName AS Nome,
  A.Country AS País,
  COUNT(A.CustomerID) - 1 AS `Número de Compatriotas`
FROM w3schools.customers A, w3schools.customers B
WHERE A.Country = B.Country
GROUP BY A.CustomerID
HAVING `Número de Compatriotas` > 0
ORDER BY Nome;
