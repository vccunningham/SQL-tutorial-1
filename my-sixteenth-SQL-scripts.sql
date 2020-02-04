CREATE PROCEDURE SetRequestStatus
	@REQUESTID int,
	@IsApproved bit = 1

AS
Begin
set nocount no;
Declare @Status nvarchar(10);
If @IsApproved = 1
Begin
Set @Status = 'Approved';
End 
If @IsApproved = 0
Begin
Set @status = 'Rejected';
	Update Request Set
	Status = @Status
	Where Id = @RequestId;

End
go

CREATE PROCEDURE SetRequestToApproved
	@REQUESTID int
As
Begin

Update Request set
Status = 'Approved'
Where Id = @RequestId;
End
Go

CREATE PROCEDURE SetRequestToRejected
	
	@REQUESTID int
As
Begin
Set nocount no;

Update Request set
Status = 'Rejected'
Where Id = @RequestId;



End
