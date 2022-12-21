USE ProgrammerService;

SELECT * FROM Roles

SELECT * FROM Permission

SELECT * FROM Accounts

SELECT * FROM Visitors

SELECT * FROM Programmers

SELECT * FROM Groups

SELECT * FROM Programms

SELECT * FROM Seriess

SELECT * FROM Genres

SELECT * FROM Sertifications


/*������� ��� ����� ����� ���*/
SELECT Programms.*, Genres.Title
FROM Programms, Programms_Genres, Genres
WHERE Programms.Id = Programms_Genres.Programm_id 
AND Programms_Genres.Genre_id = Genres.Id 
AND Genres.Title = 'Rap'
	
/*������� ��� �����)������� ������� (����� join)*/
SELECT Programmers.Id, Programmers.Name, Programmers.Alias, Programms.Title
FROM Programmers
JOIN Programmers_Programms ON Programmers_Programms.Programmer_id = Programmers.Id
JOIN Programms ON Programms.Id = Programmers_Programms.Programm_id

/*������� ��� �����)� ������� ������� (����� join)*/
SELECT Programmers.Id, Programmers.Name, Programmers.Alias, Seriess.Title 
FROM Programmers
JOIN Programmers_Seriess ON Programmers_Seriess.Programmer_id = Programmers.Id
JOIN Seriess ON Programmers_Seriess.Series_id = Seriess.Id

/*������� ��� ����� ����������� �� 's'*/
SELECT * 
FROM Programms
WHERE Programms.Title LIKE '%s'

/*������� ����� ������� �������*/
SELECT Seriess.*, Genres.Title FROM Seriess, Seriess_Genres, Genres
WHERE Seriess.Id = Seriess_Genres.Series_id 
AND Seriess_Genres.Genre_id = Genres.Id

/*������� ��� ���� � �� ��������������� �����*/
SELECT Roles.Title, Permission.Title FROM Roles, Roles_Permissions, Permission
WHERE Roles_Permissions.Role_id = Roles.Id 
AND Roles_Permissions.Permission_id = Permission.Id

