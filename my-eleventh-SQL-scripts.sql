--Create Database CapstoneDummy;

CREATE TABLE Users (ID int not null primary key identity(1, 1),
	Username nvarchar(30) not null Unique,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null, 
	PhoneNumber nvarchar(12), 
	Email nvarchar(100),
	Isadmin bit not null default 0,
	IsReviewer bit not null default 0);

	Insert into Users(Username, Password, Firstname, Lastname, PhoneNumber, Email, Isadmin, IsReviewer)
	values ('Tech1', 'Trainee1', 'Joe', 'Joe', '555-222-3333', 'tech1@gmail.com', 0, 1);

	Insert into Users(Username, Password, Firstname, Lastname, PhoneNumber, Email, Isadmin, IsReviewer)
	values ('Tech2', 'Trainee1', 'Jon', 'Jon', '555-123-4567', 'tech2@gmail.com', 0, 1);

	Insert into Users(Username, Password, Firstname, Lastname, PhoneNumber, Email, Isadmin, IsReviewer)
	values ('Tech3', 'Trainee1', 'Jake', 'Jake', '555-765-4321', 'tech3@gmail.com', 0, 1);

	select * from Users;

