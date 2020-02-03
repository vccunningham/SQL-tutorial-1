--CREATE Database bootcamp;
--use bootcamp;

CREate table Students (ID int not null primary key identity(1, 1),
Firstname nvarchar(30) not null, 
Lastname nvarchar(30) not null,
Active bit not null default 1,
Birthday datetime not null,
Loan decimal(8, 2));

Insert into students(Firstname, Lastname, Active, Birthday, Loan)
values ('Joe', 'Joe', 1, '1990-01-01', 43000.76)


Insert into students(Firstname, Lastname, Active, Birthday, Loan)
values ('Fred', 'Fred', 1, '1999-03-21', 56765.45)

Insert into students(Firstname, Lastname, Active, Birthday, Loan)
values ('Jeff', 'Jeff', 0, '2001-02-24', 93453.93)

select * from students

CREATE Table Technology (ID int not null primary key identity(100, 100),
Name nvarchar(50) not null,
PrimaryInstructor nvarchar(30) not null,);

Insert into Technology (Name, Primaryinstructor) values ('Greg', 'Dotnet')
Insert into Technology (Name, Primaryinstructor) values ('Sean', 'Java')

CREATE TABLE Cohort (ID int not null primary key identity(1, 1),
Starts DateTime null,
Capacity int not null default 0,
Enrolled int not null default 0,
TechnologyId int foreign key references Technology(Id)); 

Alter TABLE Students
alter column loan decimal (8,2) not null

alter table students
add constraint df_loan default 0 for loan;

alter table cohort 
add note nvarchar(80) not null;

alter table cohort
drop note;


update students set
	loan = 0
	where loan is null;

