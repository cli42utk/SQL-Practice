SELECT E1.employee_id, E1.name, COUNT(*) AS reports_count, ROUND(AVG(E2.age)) AS average_age
FROM Employees E1, Employees E2
WHERE E1.employee_id = E2.reports_to
GROUP BY E1.employee_id
ORDER BY E1.employee_id
;
