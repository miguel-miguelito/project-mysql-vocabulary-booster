SELECT
  employeeID,
  COUNT(*) AS `Total de pedidos`
FROM w3schools.orders
GROUP BY employeeID
ORDER BY `Total de pedidos`;
