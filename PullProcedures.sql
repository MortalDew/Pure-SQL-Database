Use ProgrammerService
GO 

/*Procedures for INSERT each Entity*/

/*������ ��������� ��� ����� ��������, � ��� ������� ����������� � ���������?*/
GO
CREATE PROC AddAccount /*������ ���������� ��������� ������� ������ INSERT � ����� �� ��� ����������� �������*/
	@email VARCHAR(100),
	@password VARCHAR(30),
	@roleTitle VARCHAR(50) 
AS
	INSERT INTO Accounts(Email, Password, Role_id)
	VALUES (
			@email, 
			@password, 
			(SELECT Roles.Id FROM Roles WHERE Roles.Title = @roleTitle)
		   )  
GO

CREATE PROC AddVisitor
	/*��� ���������� ����������*/
	@name VARCHAR(200),
	@nickname VARCHAR(20),
	@dateBirth DATE,
	
	/*��� ���������� ��������*/
	@email VARCHAR(100),
	@password VARCHAR(30),
	@roleTitle VARCHAR(50) 
AS

	EXEC AddAccount @email, @password, @roleTitle

	INSERT INTO Visitors(Name, Nickname, Date_of_birth, Account_id)
	VALUES (
		@name,
		@nickname,
		@dateBirth,
		(SELECT Id FROM Accounts WHERE Id = (SELECT MAX(Id) FROM Accounts))
		 /*��������� ��������� ��� �� �)����� ���������(���. ��������� ����� AddAccount) [����� ����]*/
	)

GO

/*����������� � related_account � ���������*/
CREATE PROC AddProgrammer /*������������� ���������� ������� � ������*/ 
/*(�� ��� ������� ��������, �� ���� ��)������� � ������������� �������, �������� �� ��������?)*/
	@name VARCHAR(200),
	@alias VARCHAR(100),
	@dateBirth DATE,

	/*��� ���������� ��������*/
	@email VARCHAR(100),
	@password VARCHAR(30),
	@roleTitle VARCHAR(50) 
AS
	EXEC AddAccount @email, @password, @roleTitle

	INSERT INTO Programmers(Name, Alias, Date_of_birth, Account_id)
	VALUES(
		@name, 
		@alias,
		@dateBirth,
		(SELECT Id FROM Accounts WHERE Id = (SELECT MAX(Id) FROM Accounts))
		)
GO

/*����������� � related_account � ���������*/
CREATE PROC AddGroup
	@title VARCHAR(100),
	@foundingDate DATE,
	@numberProgrammer INT,

	/*��� ���������� ��������*/
	@email VARCHAR(100),
	@password VARCHAR(30),
	@roleTitle VARCHAR(50) 
AS
	EXEC AddAccount @email, @password, @roleTitle
	
	INSERT INTO Groups(Title, Founding_date, Number_of_programmer, Account_id)
	VALUES(
		@title,
		@foundingDate, 
		@numberProgrammer,
		(SELECT Id FROM Accounts WHERE Id = (SELECT MAX(Id) FROM Accounts))		
		)
GO

CREATE PROC AddProgramm
	@title VARCHAR(100),
	@dateWriting DATE
AS
	INSERT INTO Programms(Title, Date_of_writing)
	VALUES (@title, @dateWriting)
GO

CREATE PROC AddGenre
	@title VARCHAR(100)
AS
	INSERT INTO Genres(Title) VALUES (@title)
GO

CREATE PROC AddSeries
	@title VARCHAR(100), 
	@dateWriting DATE
AS
	INSERT INTO Seriess(Title, Date_of_writing) VALUES (@title, @dateWriting)
GO










/*��������� ��� �������� �����*/

/*
�������� �������� ������ � �������
SELECT * FROM TableName WHERE id=(SELECT max(id) FROM TableName);
*/

CREATE PROC RemoveAccount /*��� ��������� ����� �������� ��� �������� �������� �������� ��������*/
	@email VARCHAR(100)
AS
	DELETE Accounts
	WHERE Email = @email
GO

CREATE PROC RemoveProgramm
	@title VARCHAR(100)
AS
	DELETE Programms
	WHERE Title = @title
GO

CREATE PROC RemoveSeries
	@title VARCHAR(100)
AS
	DELETE Seriess
	WHERE Title = @title
GO

CREATE PROC RemoveGenre
	@title VARCHAR(100)
AS
	DELETE Genres
	WHERE Title = @title
GO
