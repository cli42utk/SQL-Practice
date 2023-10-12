SELECT E1.name
FROM Employee E1, Employee E2
WHERE E1.id = E2.managerId
GROUP BY E1.id
HAVING COUNT(*) >= 5
;
