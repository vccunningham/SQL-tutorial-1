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

CREATE TABLE Vendor (ID int not null primary key identity(1, 1),
	Code nvarchar(30) not null Unique,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null, 
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(30) not null,
	Zipcode nvarchar(30) not null,
	PhoneNumber nvarchar(12), 
	Email nvarchar(100));

Insert into Vendor(Code, Firstname, Lastname, Address, City, State, Zipcode, PhoneNumber, Email)
values ('1221', 'Joe', 'Johnson', '120 W 3rd St.', 'West', 'OH', '45020', '555-123-4567', 'sys@sys.com');

Insert into Vendor(Code, Firstname, Lastname, Address, City, State, Zipcode, PhoneNumber, Email)
values ('1222', 'Jack', 'Sparrow', '333 W 2nd St.', 'West', 'OH', '45020', '555-011-2121', 'sys@sys.com');

Insert into Vendor(Code, Firstname, Lastname, Address, City, State, Zipcode, PhoneNumber, Email)
values ('1223', 'Jim', 'Beam', '2111 W 5th St.', 'West', 'OH', '45020', '555-011-2331', 'sys@sys.com')


select * from Vendor;


CREATE TABLE Product
	(ID int not null primary key identity(1, 1),
	PartNumber nvarchar(30) not null Unique,
	Name nvarchar(30) not null,
	Price Decimal(11,2) not null,
	Unit nvarchar(30) not null,
	PhotoPath nvarchar(255) null,
	VendorID int not null foreign key REFERENCES Vendor(ID));

	INSERT into Product(PartNumber, Name, Price, Unit, VendorID)
	values ('ECHO', 'AMAZON ECHO', '21.99', 'EACH', (Select id from VENDOR where code = '1221'));

	Insert into Product(PartNumber, Name, Price, Unit, VendorID)
	values ('APPL', 'APPLEWATCH', '399.99', 'EACH', (Select id from VENDOR where code = '1222'));

	Insert into Product(PartNumber, Name, Price, Unit, VendorID)
	values ('ECHODOT', 'AMAZON ECHO DOT', '34.99', 'EACH', (Select id from VENDOR where code = '1223'));

	select * from Product

	Alter table Product
	add Name nvarchar(30) not null; 

	CREATE TABLE Request
	(ID int not null primary key identity(1, 1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80) null,
	DeliveryMode nvarchar(20) not null default 'Pickup',
	Status nvarchar(10) not null default 'NEW',
	Total decimal (11,2) not null default 0,
	UserID int not null foreign key references Users(ID));

	Insert into Request(Description, Justification, Total, UserID)
	values ('1st Request', 'None Needed', '0.00', (Select id from Users where Username = 'Tech1'));

	Insert into Request(Description, Justification, Total, UserID)
	values ('2nd Request', 'None Needed', '0.00', (Select id from Users where Username = 'Tech2'));

	Insert into Request(Description, Justification, Total, UserID)
	values ('3rd Request', 'None Needed', '0.00', (Select id from Users where Username = 'Tech3'));

	select * from RequestLine;

	CREATE TABLE RequestLine (ID int not null primary key identity(1, 1),
	RequestID int not null foreign key references Request(ID),
	ProductID int not null foreign key references Product(ID),
	Quantity int not null default 1);

	Insert into RequestLine (RequestID, ProductID)
	values ((Select id from Request where Description = '1st Request'),(Select id from Product where name = 'AMAZON ECHO'));

	Insert into RequestLine (RequestID, ProductID)
	values ((Select id from Request where Description = '2nd Request'),(Select id from Product where name = 'APPLEWATCH'));

	Insert into RequestLine (RequestID, ProductID)
	values ((Select id from Request where Description = '3rd Request'),(Select id from Product where name = 'AMAZON ECHO DOT'));

	Declare @RequestID int = 1;


	
	Select sum(rl.Quantity * p.Price) as 'Request Total'
	
	
	Select p.Name, rl.Quantity, (rl.Quantity * p.Price) as 'Line Total'
	from Request r
	join RequestLine rl
		on rl.RequestId = r.Id
		join Product p
		on p.id = rl.ProductId
		where r.id = @RequestId


