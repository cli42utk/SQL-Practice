SELECT Products.product_name, SUM(unit) AS unit
FROM Orders LEFT JOIN Products
ON Orders.product_id = Products.product_id
WHERE SUBSTR(order_date, 1, 7) = "2020-02"
GROUP BY Orders.product_id
HAVING SUM(unit) >= 100
;
