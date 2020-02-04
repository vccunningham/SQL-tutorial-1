CREATE PROCEDURE UPDATEREQUESTTOTAL
@RequestId int

AS
BEGIN
 --calculate total for request
 set nocount on;
 
 Update Request set


 Total = (Select sum(rl.Quantity * p.Price) as 'Request Total'
 from Request r
	join RequestLine rl
		on rl.RequestId = r.Id
		join Product p
		on p.id = rl.ProductId
		where r.id = @RequestId
		)
		Where id = @RequestId

END

go

Select * from Request;