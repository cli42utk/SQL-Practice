SELECT employee_id
FROM Employees E1
WHERE salary < 30000 AND NOT manager_id IN 
(SELECT employee_id
FROM Employees E2)
ORDER BY employee_id
;
