SELECT person_name
FROM Queue
WHERE turn =  
(SELECT MAX(grouped.turn)
FROM
(SELECT Q1.person_name, Q1.turn
FROM Queue Q1, Queue Q2
WHERE Q1.turn >= Q2.turn
GROUP BY Q1.person_id
HAVING SUM(Q2.weight) <= 1000
) grouped)
;
