SELECT
  P.ProductName,
  P.Price
FROM w3schools.products AS P
WHERE EXISTS (
  SELECT * FROM w3schools.order_details AS OD
  WHERE P.ProductID = OD.ProductID AND OD.Quantity > 80
)
ORDER BY P.ProductName;
