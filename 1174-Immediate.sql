SELECT ROUND(COUNT(*) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery) * 100, 2) AS immediate_percentage
FROM Delivery D1
WHERE D1.customer_pref_delivery_date = D1.order_date AND (D1.customer_id, D1.order_date) IN (
  SELECT customer_id, MIN(order_date)
  FROM Delivery
  GROUP BY customer_id
)
;
