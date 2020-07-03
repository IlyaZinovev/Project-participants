USE CompanyProjects;

CREATE TABLE Projects (
	ID INT,
	ProjectName NVARCHAR(100),
	PRIMARY KEY (ID)
);

INSERT INTO Projects VALUES(1, '���������� ���������� ��� ������� ������������ on-line �������');
INSERT INTO Projects VALUES(2, '�������� API ��� crm-������� Roboseller �� ������ ������� GraphQL');
INSERT INTO Projects VALUES(3, '������������ ������');
INSERT INTO Projects VALUES(4, '������ API (JSON HTTP API)');
INSERT INTO Projects VALUES(5, '������ ��� IDEA ');
INSERT INTO Projects VALUES(6, '�� �� ���������� ��������');
INSERT INTO Projects VALUES(7, '��������-���');
INSERT INTO Projects VALUES(8, '���������� ������� ��������� �������� ������ ������������');
INSERT INTO Projects VALUES(9, '���������� ���-���������� ��� ������� ��������� �����');
INSERT INTO Projects VALUES(10, '�������� ����������� ���������� �� OSGi ');


CREATE TABLE Employees (
	ID INT,
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	MidName VARCHAR(20),
	PRIMARY KEY (ID)
);

INSERT INTO Employees VALUES(1, '������', '����', '��������');
INSERT INTO Employees VALUES(2, '�������', '����', '���������');
INSERT INTO Employees VALUES(3, '�������', '����', '�����');
INSERT INTO Employees VALUES(4, '�������', '����������', '����������');
INSERT INTO Employees VALUES(5, '������', '�������', '����������');
INSERT INTO Employees VALUES(6, '���������', '����', '��������');
INSERT INTO Employees VALUES(7, '��������', '�����', '��������');
INSERT INTO Employees VALUES(8, '�����', '������', '����������');
INSERT INTO Employees VALUES(9, '�������', '�����', '���������');
INSERT INTO Employees VALUES(10, '�������', '����', '����������');


CREATE TABLE Participation (
	ID INT,
	EmployeeID INT,
	ProjectID INT,
	TimePercentage INT,
	PRIMARY KEY (ID),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(ID),
	FOREIGN KEY (ProjectID) REFERENCES Projects(ID)
);

INSERT INTO Participation VALUES(1, 1, 1, 30);
INSERT INTO Participation VALUES(2, 1, 4, 10);
INSERT INTO Participation VALUES(3, 1, 7, 45);
INSERT INTO Participation VALUES(4, 2, 3, 61);
INSERT INTO Participation VALUES(5, 2, 10, 23);
INSERT INTO Participation VALUES(6, 3, 1, 10);
INSERT INTO Participation VALUES(7, 3, 2, 10);
INSERT INTO Participation VALUES(8, 3, 3, 10);
INSERT INTO Participation VALUES(9, 3, 4, 10);
INSERT INTO Participation VALUES(10, 3, 5, 10);
INSERT INTO Participation VALUES(11, 3, 6, 10);
INSERT INTO Participation VALUES(12, 3, 7, 10);
INSERT INTO Participation VALUES(13, 3, 8, 10);
INSERT INTO Participation VALUES(14, 3, 9, 10);
INSERT INTO Participation VALUES(15, 3, 10, 10);
INSERT INTO Participation VALUES(16, 4, 2, 27);
INSERT INTO Participation VALUES(17, 4, 4, 15);
INSERT INTO Participation VALUES(18, 4, 6, 9);
INSERT INTO Participation VALUES(19, 6, 7, 76);
INSERT INTO Participation VALUES(20, 7, 1, 10);
INSERT INTO Participation VALUES(21, 7, 9, 61);
INSERT INTO Participation VALUES(22, 8, 3, 33);
INSERT INTO Participation VALUES(23, 8, 6, 25);
INSERT INTO Participation VALUES(24, 8, 8, 5);
INSERT INTO Participation VALUES(25, 8, 9, 10);
INSERT INTO Participation VALUES(26, 8, 10, 11);
INSERT INTO Participation VALUES(27, 9, 1, 15);
INSERT INTO Participation VALUES(28, 9, 5, 52);
INSERT INTO Participation VALUES(29, 9, 10, 31);
INSERT INTO Participation VALUES(30, 10, 7, 80);
INSERT INTO Participation VALUES(31, 10, 9, 11);