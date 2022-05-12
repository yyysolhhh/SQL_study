SELECT E.employee_id 
FROM Employees E LEFT JOIN Salaries S 
ON E.employee_id = S.employee_id 
WHERE E.name IS NULL OR S.salary IS NULL 
UNION 
SELECT S.employee_id 
FROM Employees E RIGHT JOIN Salaries S 
ON E.employee_id = S.employee_id 
WHERE E.name IS NULL OR S.salary IS NULL
ORDER BY employee_id;

SELECT employee_id 
FROM Employees 
WHERE employee_id NOT IN 
	(SELECT employee_id 
	FROM Salaries) 
UNION 
SELECT employee_id 
FROM Salaries 
WHERE employee_id NOT IN 
	(SELECT employee_id 
	FROM Employees)  
ORDER BY employee_id;
