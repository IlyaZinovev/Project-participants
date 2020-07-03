SELECT TOP 5 ProjectName, COUNT(EmployeeID) AS 'Employees number', SUM(TimePercentage) AS 'Summary Time (%)'
	FROM Participation JOIN Projects ON ProjectID = Projects.ID
		GROUP BY ProjectName
			ORDER BY [Summary Time (%)] DESC