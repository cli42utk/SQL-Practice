SELECT
(CASE 
WHEN id % 2 = 0 THEN id - 1
WHEN id % 2 = 1 AND NOT id = counts THEN id + 1
ELSE id
END) 
AS id, student
FROM seat,
(SELECT COUNT(*) AS counts
FROM seat) seat_counts
ORDER BY 1
;
