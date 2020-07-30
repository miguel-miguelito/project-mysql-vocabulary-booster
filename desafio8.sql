SELECT
  O.OrderID,
  O.CustomerID,
  C.ContactName,
  O.shipperid
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID = C.CustomerID
WHERE O.shipperid IN (1, 2)
ORDER BY O.CustomerID;
