SELECT id, COUNT(*) AS num
FROM
((SELECT requester_id AS id
FROM RequestAccepted)
union all
(SELECT accepter_id AS id
FROM RequestAccepted))unioned
GROUP BY id
ORDER BY COUNT(*) DESC
LIMIT 1
;
