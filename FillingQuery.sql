USE ProgrammerService

INSERT INTO Roles (Title) VALUES ('Admin')
INSERT INTO Roles (Title) VALUES ('Visitor')
INSERT INTO Roles (Title) VALUES ('Programmer')
INSERT INTO Roles (Title) VALUES ('Group')

INSERT INTO Permission (Title) VALUES ('View group/programmer account')
INSERT INTO Permission (Title) VALUES ('Add group/programmer account')
INSERT INTO Permission (Title) VALUES ('Remove group/programmer account')
INSERT INTO Permission (Title) VALUES ('Add Series')
INSERT INTO Permission (Title) VALUES ('Remove Series')
INSERT INTO Permission (Title) VALUES ('Add Programm')
INSERT INTO Permission (Title) VALUES ('Remove Programm')
INSERT INTO Permission (Title) VALUES ('Add sertification')
INSERT INTO Permission (Title) VALUES  ('Remove sertification')
INSERT INTO Permission (Title) VALUES ('See logs')

INSERT INTO Roles_Permissions (Role_id, Permission_id)SELECT 1, Id FROM Permission
INSERT INTO Roles_Permissions (Role_id, Permission_id) VALUES (2, 1)
INSERT INTO Roles_Permissions (Role_id, Permission_id)SELECT 3, Id FROM Permission
WHERE Title IN (
	'View group/programmer account',
	'Add group/programmer account',
	'Remove group/programmer account',
	'Add Series',
	'Remove Series',
	'Add Programm',
	'Remove Programm'
	)
INSERT INTO Roles_Permissions (Role_id, Permission_id)SELECT 4, Id FROM Permission
WHERE Title IN (
	'View group/programmer account',
	'Add group/programmer account',
	'Remove group/programmer account',
	'Add Series',
	'Remove Series',
	'Add Programm',
	'Remove Programm'
	)

INSERT INTO Accounts (Email, Password, Role_id) VALUES ('glen228@gmail.com', 'dmkpdsf', 1) /*admin*/
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('just_human@gmail.com', 'woqwmkwqrk', 2)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('Gleb@gmail.com', 'dfefoq', 2)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('programmer@mail.ru', 'gbkmob', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('eagle@gmail.com', 'jbskjdfcn', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('letherprogrammer@gmail.com', 'dsnvos',3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('sandman@mail.ru', 'dgfchjvbkn', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('singerNN@mail.ru', 'rygiufeml', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('CJ@gmail.com', 'oppFSDSV', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('Sean@gmail.com', 'pjqwfpoq', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('Matt@gmail.com', 'nqpojwe', 3)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('rapgroup@mail.ru', 'jqwkmqrw', 4)
INSERT INTO Accounts (Email, Password, Role_id) VALUES ('taim@gmail.com', 'ojdhfaioISDH', 4)

INSERT INTO Visitors (Name, Nickname, Date_of_birth, Account_id) VALUES ('Ivan Ivanov', 'Vanya228', '1999-10-14', 2)
INSERT INTO Visitors (Name, Nickname, Date_of_birth, Account_id) VALUES ('Gleb Glebov', 'Glebchik', '2000-07-29', 3)

INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Michael Noir', 'MC Bullet Proof', '1998-06-05', 4)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Mick Ward', 'DJ Eagle', '1990-05-03', 5)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Livan Livanovich', 'Lether Man', '1970-01-01', 6)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Kit Norman', 'Mr. Sandman', '1980-05-10', 7)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Cj McMoahn', 'CjBigPapa', '1985-10-10', 8)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Sean Guitarist', 'Sean Guitarist', '1987-09-08', 9)
INSERT INTO Programmers (Name, Alias, Date_of_birth, Account_id) VALUES ('Matt Bassist', 'Matt Bass', '1983-11-12', 10)


INSERT INTO Groups (Title, Founding_date, Number_of_programmer, Account_id) VALUES ('Wet Desert', '2020-01-01', 2, 6)
INSERT INTO Groups (Title, Founding_date, Number_of_programmer, Account_id) VALUES ('Thy Art Is Murder', '2006-08-11', 3, 13)

INSERT INTO Related_accounts (Account_id, Programmer_id, Group_id) VALUES (4, 1, 1)

INSERT INTO Programms (Title, Date_of_writing) VALUES ('Dead Cops', '2021-10-23')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Alcohol & Drugs', '2021-10-27')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Flowers', '2021-11-01')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Easy HighGround', '2019-10-17')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Pain Remains', '2022-10-04')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Puppet Master', '2017-11-04')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Son of Misery', '2017-11-07')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Dear Desolation', '2017-12-01')
INSERT INTO Programms (Title, Date_of_writing) VALUES ('Programm', '2020-01-01')

INSERT INTO Seriess (Title, Date_of_writing) VALUES ('Bloody Murder', '2022-11-11')
INSERT INTO Seriess (Title, Date_of_writing) VALUES ('MVP', '2022-12-10')
INSERT INTO Seriess (Title, Date_of_writing) VALUES ('Reign of Darkness', '2022-12-14')
INSERT INTO Seriess (Title, Date_of_writing) VALUES ('Dear Desolation', '2017-11-05')

INSERT INTO Genres (Title) VALUES ('Rap')
INSERT INTO Genres (Title) VALUES ('Trap')
INSERT INTO Genres (Title) VALUES ('Death Core')
INSERT INTO Genres (Title) VALUES ('Death Metal')

INSERT INTO Sertifications (Title, Number_of_sales) VALUES ('Gold', 500000)
INSERT INTO Sertifications (Title, Number_of_sales) VALUES ('Platinum', 1000000)
INSERT INTO Sertifications (Title, Number_of_sales) VALUES ('Diamond', 10000000)


INSERT INTO Programmers_Programms (Programmer_id, Programm_id) VALUES (1, 1)
INSERT INTO Programmers_Programms (Programmer_id, Programm_id) VALUES (1, 2)
INSERT INTO Programmers_Programms (Programmer_id, Programm_id) VALUES (2, 3)

INSERT INTO Groups_Programms (Group_id, Programm_id) VALUES (1, 4)
INSERT INTO Groups_Programms (Group_id, Programm_id) VALUES (1, 5)
INSERT INTO Groups_Programms (Group_id, Programm_id) VALUES (2, 6)
INSERT INTO Groups_Programms (Group_id, Programm_id) VALUES (2, 7)
INSERT INTO Groups_Programms (Group_id, Programm_id) VALUES (2, 8)

INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (1, 1)
INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (1, 2)
INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (2, 1)
INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (3, 2)
INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (4, 3)
INSERT INTO Seriess_Genres (Series_id, Genre_id) VALUES (4, 4)

INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (1, 1)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (2, 1)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (3, 2)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (4, 1)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (5, 1)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (5, 2)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (6, 3)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (7, 3)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (8, 3)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (6, 4)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (7, 4)
INSERT INTO Programms_Genres (Programm_id, Genre_id) VALUES (8, 4)

INSERT INTO Programmers_Seriess (Programmer_id, Series_id) VALUES (1, 2)
INSERT INTO Programmers_Seriess (Programmer_id, Series_id) VALUES (1, 1)
INSERT INTO Programmers_Seriess (Programmer_id, Series_id) VALUES (2, 1)

INSERT INTO Groups_Seriess (Group_id, Series_id) VALUES (1, 3)
INSERT INTO Groups_Seriess (Group_id, Series_id) VALUES (2, 4)

INSERT INTO Groups_Programmers (Group_id, Programmer_id) VALUES (1, 1)
INSERT INTO Groups_Programmers (Group_id, Programmer_id) VALUES (1, 2)
INSERT INTO Groups_Programmers (Group_id, Programmer_id) VALUES (2, 5)
INSERT INTO Groups_Programmers (Group_id, Programmer_id) VALUES (2, 6)
INSERT INTO Groups_Programmers (Group_id, Programmer_id) VALUES (2, 7)

INSERT INTO Seriess_Sertifications (Series_id, Sertification_id) VALUES (1, 1)

INSERT INTO Programms_Sertifications (Programm_id, Sertification_id) VALUES (5, 2)
INSERT INTO Programms_Sertifications (Programm_id, Sertification_id) VALUES (5, 1)