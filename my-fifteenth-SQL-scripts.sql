CREATE Procedure AddLineItem
	@RequestDescription nvarchar(30),
	@ProductPartNumber nvarchar(30),
	@Quantity int = 1

AS
BEGIN
set nocount on;
Declare @RequestiD int, @ProductID int;

Select @RequestId = ID from Request
Where Description = @RequestDescription;

Select @ProductID = ID from Product
Where PartNumber = @ProductPartnumber;

Insert into RequestLine (RequestId, ProductId, Quantity)
values (@RequestId, @ProductId, @Quantity);

END
Go
EXEC AddLineItem @RequestDescription = '1st Request', @ProductPartNumber = 'ECHO';
go

Select * from Product