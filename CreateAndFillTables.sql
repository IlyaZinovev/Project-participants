USE CompanyProjects;

CREATE TABLE Projects (
	ID INT,
	ProjectName NVARCHAR(100),
	PRIMARY KEY (ID)
);

INSERT INTO Projects VALUES(1, 'Разработка приложения для анализа посещаемости on-line занятий');
INSERT INTO Projects VALUES(2, 'Создание API для crm-системы Roboseller на основе решения GraphQL');
INSERT INTO Projects VALUES(3, 'Транспортная задача');
INSERT INTO Projects VALUES(4, 'Сервер API (JSON HTTP API)');
INSERT INTO Projects VALUES(5, 'Плагин для IDEA ');
INSERT INTO Projects VALUES(6, 'БД об участниках проектов');
INSERT INTO Projects VALUES(7, 'Телеграм-бот');
INSERT INTO Projects VALUES(8, 'Разработка системы аналитики качества работы разработчика');
INSERT INTO Projects VALUES(9, 'Реализации веб-приложения для анализа торгового рынка');
INSERT INTO Projects VALUES(10, 'Создание консольного приложения на OSGi ');


CREATE TABLE Employees (
	ID INT,
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	MidName VARCHAR(20),
	PRIMARY KEY (ID)
);

INSERT INTO Employees VALUES(1, 'Иванов', 'Иван', 'Иванович');
INSERT INTO Employees VALUES(2, 'Смирнов', 'Яков', 'Макарович');
INSERT INTO Employees VALUES(3, 'Соколов', 'Егор', 'Ильич');
INSERT INTO Employees VALUES(4, 'Петрова', 'Александра', 'Степановна');
INSERT INTO Employees VALUES(5, 'Егоров', 'Евгений', 'Алексеевич');
INSERT INTO Employees VALUES(6, 'Кузнецова', 'Анна', 'Ивановна');
INSERT INTO Employees VALUES(7, 'Лебедева', 'Алена', 'Игоревна');
INSERT INTO Employees VALUES(8, 'Попов', 'Андрей', 'Михайлович');
INSERT INTO Employees VALUES(9, 'Семенов', 'Семен', 'Семенович');
INSERT INTO Employees VALUES(10, 'Морозов', 'Юрий', 'Дмитриевич');


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