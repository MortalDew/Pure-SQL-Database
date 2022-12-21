USE ProgrammerService


/*������� )��(OUTER JOIN) ������ � �� ������������ ��������*/
SELECT Groups.Title, Seriess.Title, Sertifications.Title
FROM Groups
LEFT JOIN Groups_Seriess ON Groups_Seriess.Group_id = Groups.Id
LEFT JOIN Seriess ON Groups_Seriess.Series_id = Seriess.Id
LEFT JOIN Seriess_Sertifications ON Seriess_Sertifications.Series_id = Seriess.Id
LEFT JOIN Sertifications ON Seriess_Sertifications.Sertification_id = Sertifications.Id


/*������� ���� �������� � �� ������������ �����*/
SELECT Programmers.Name, Programmers.Alias, Programms.Title, Sertifications.Title
FROM Programmers
LEFT JOIN Programmers_Programms ON Programmers_Programms.Programmer_id = Programmers.Id
LEFT JOIN Programms ON Programmers_Programms.Programm_id = Programms.Id
LEFT JOIN Programms_Sertifications ON Programms_Sertifications.Programm_id = Programms.Id
LEFT JOIN Sertifications ON Programms_Sertifications.Sertification_id = Sertifications.Id


/*������� ���� �������� � �� ������� � ���������������� �������*/
SELECT Programmers.Name, Programmers.Alias, Programms.Title, Genres.Title
FROM Programmers 
JOIN Programmers_Programms ON Programmers.Id = Programmers_Programms.Programmer_id
JOIN Programms ON Programms.Id = Programmers_Programms.Programm_id
JOIN Programms_Genres ON Programms_Genres.Programm_id = Programms.Id
JOIN Genres ON Programms_Genres.Genre_id = Genres.Id


/*������� ���� ����� � �� ������� � ���������������� �������*/
SELECT Groups.Title, Programms.Title, Genres.Title
FROM Groups
JOIN Groups_Programms ON Groups_Programms.Group_id = Groups.Id
JOIN Programms ON Programms.Id = Groups_Programms.Programm_id
JOIN Programms_Genres ON Programms_Genres.Programm_id = Programms.Id
JOIN Genres ON Programms_Genres.Genre_id = Genres.Id


/*������� ���� ��)����� � ����� (���� ����)*/
SELECT Programmers.Name, Programmers.Alias, Programms.Title
FROM Programmers
LEFT JOIN Programmers_Programms ON Programmers_Programms.Programmer_id = Programmers.Id
LEFT JOIN Programms ON Programmers_Programms.Programm_id = Programms.Id


/*������ CROSS JOIN*/
SELECT *
FROM Programmers
CROSS JOIN Programms


/*������� �������� �� ���������� ����� � ������� ���-�� �����*/
SELECT Programmers.Name, Programmers.Alias, COUNT(Programms.Id) AS CountOfProgramms 
FROM Programmers
LEFT JOIN Programmers_Programms ON Programmers_Programms.Programmer_id = Programmers.Id
LEFT JOIN Programms ON Programmers_Programms.Programm_id = Programms.Id
GROUP BY Programmers.Name, Programmers.Alias
HAVING COUNT(Programms.Id) >= 1
ORDER BY CountOfProgramms DESC


/*������� �������� �� ���������� �������� � ������� ���-�� ��������*/
SELECT Programmers.Name, Programmers.Alias, COUNT(Seriess.Id) AS CountOfSeriess
FROM Programmers
LEFT JOIN Programmers_Seriess ON Programmers_Seriess.Programmer_id = Programmers.Id
LEFT JOIN Seriess ON Programmers_Seriess.Series_id = Seriess.Id
GROUP BY Programmers.Name, Programmers.Alias
ORDER BY CountOfSeriess DESC


/*������� ������ �� ���������� ����� � ������� ���-�� �����*/
SELECT Groups.Title, COUNT(Programms.Title) AS CountOfProgramms
FROM Groups
LEFT JOIN Groups_Programms ON Groups_Programms.Group_id = Groups.Id
LEFT JOIN Programms ON Groups_Programms.Programm_id = Programms.Id
GROUP BY Groups.Title
ORDER BY CountOfProgramms DESC


/*������� ������ �� ���������� �������� � ������� ���-�� ��������*/
SELECT Groups.Title, COUNT(Seriess.Title) AS CountOfSeriess
FROM Groups
LEFT JOIN Groups_Seriess ON Groups_Seriess.Group_id = Groups.Id
LEFT JOIN Seriess ON Groups_Seriess.Series_id = Seriess.Id
GROUP BY Groups.Title
HAVING COUNT(Seriess.Id) >= 1
ORDER BY CountOfSeriess DESC


/*������� ���-�� ������)����� ��� ������ ����� (���� ����)*/
SELECT Programms.Title, COUNT(Sertifications.Id) AS CountOfSertificate
FROM Programms
LEFT JOIN Programms_Sertifications ON Programms.Id = Programms_Sertifications.Programm_id
LEFT JOIN Sertifications ON Sertifications.Id = Programms_Sertifications.Sertification_id
GROUP BY Programms.Title
ORDER BY CountOfSertificate DESC


SELECT *
FROM Roles
UNION ALL
SELECT *
FROM Permission

