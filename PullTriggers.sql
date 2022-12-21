USE ProgrammerService
GO

CREATE TRIGGER Account_INSERT
ON Accounts
AFTER INSERT
AS 
	INSERT INTO Logs(Entity_Id, Representation)
	SELECT inserted.Id, 'Inserted Account: ' + inserted.Email + ' ,Role: ' + Roles.Title
	FROM inserted, Roles, Accounts
	WHERE Roles.Id = Accounts.Role_id

GO


CREATE TRIGGER Account_DELETE
ON Accounts
AFTER DELETE
AS
	INSERT Logs(Entity_Id, Representation)
	SELECT deleted.Id, 'Deleted Account: ' + deleted.Email + 'Role: ' + Roles.Title
	FROM deleted, Roles, Accounts
	WHERE Roles.Id  = Accounts.Role_id

GO
CREATE TRIGGER Series_INSERT
ON Seriess
AFTER INSERT
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT inserted.Id, 'Inserted Series: ' + inserted.Title 
	FROM inserted

GO
CREATE TRIGGER Series_DELETE
ON Seriess
AFTER DELETE
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT deleted.Id, 'Deleted Series: ' + deleted.Title
	FROM deleted

GO
CREATE TRIGGER Programms_INSERT
ON Programms
AFTER INSERT
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT inserted.Id, 'Inserted Programm: ' + inserted.Title
	FROM inserted

GO
CREATE TRIGGER Programms_DELETE
ON Programms
AFTER DELETE
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT deleted.Id, 'Deleted Programm: ' + deleted.Title
	FROM deleted

DROP TRIGGER Programms_DELETE

GO
CREATE TRIGGER Genres_INSERT
ON Genres
AFTER INSERT
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT inserted.Id, 'Inserted Genre: ' + inserted.Title 
	FROM inserted

GO
CREATE TRIGGER Genres_DELETE
ON Genres
AFTER DELETE
AS 
	INSERT Logs(Entity_Id, Representation)
	SELECT deleted.Id, 'Deleted Genre: ' + deleted.Title 
	FROM deleted

GO
INSERT INTO Programms(Title, Date_of_writing) VALUES ('Programm', '2020-01-01')

DELETE Programms WHERE Title = 'Programm'

SELECT * FROM Programms

SELECT * fROM Logs

SELECT * FROM Seriess

EXEC AddSeries 'Series', '2022-01-01'