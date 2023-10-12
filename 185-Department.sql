SELECT D.name AS Department, E1.name AS Employee, E1.salary
FROM Employee E1 LEFT JOIN Department D
ON E1.departmentId = D.id
WHERE 
(
  SELECT COUNT(DISTINCT e2.Salary)
  FROM Employee E2
  WHERE E1.departmentId = E2.departmentId AND E2.salary > E1.salary

) < 3
;
