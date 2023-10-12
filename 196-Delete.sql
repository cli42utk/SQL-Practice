DELETE P1
FROM person P1, person P2
WHERE P1.Email = P2.Email AND P1.id > P2.id
;
