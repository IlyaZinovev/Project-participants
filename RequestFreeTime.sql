USE CompanyProjects;
SELECT LastName, FirstName, MidName, 100 - SUM(TimePercentage) AS 'Free Time (%)'
	FROM Participation JOIN Employees ON EmployeeID = Employees.ID
		GROUP BY LastName, FirstName, MidName
UNION
SELECT LastName, FirstName, MidName, 100 AS 'Free Time (%)'
	FROM Participation RIGHT JOIN Employees ON EmployeeID = Employees.ID
		WHERE EmployeeID is NULL
			GROUP BY LastName, FirstName, MidName