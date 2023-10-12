SELECT SUBSTR(trans_date, 1, 7) AS month, country, COUNT(*) AS trans_count, SUM(IF(state="approved", 1, 0)) AS approved_count, SUM(amount) AS trans_total_amount, SUM(IF(state="approved", AMOUNT, 0)) AS approved_total_amount
FROM Transactions
GROUP BY 1, country
;
