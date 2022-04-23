SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary 
FROM Employee E JOIN Department D 
ON E.departmentId = D.id 
WHERE Salary IN 
	(SELECT MAX(salary) 
	FROM Employee 
	GROUP BY departmentId)
;
