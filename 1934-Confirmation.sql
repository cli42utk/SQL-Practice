SELECT S.user_id, ROUND(IFNULL(grouped.confirmation_rate, 0), 2) AS confirmation_rate
FROM
Signups S LEFT JOIN
(SELECT user_id, AVG(IF(action='confirmed', 1, 0)) AS confirmation_rate
FROM Confirmations C
GROUP BY user_id
) grouped
ON S.user_id = grouped.user_id
;
