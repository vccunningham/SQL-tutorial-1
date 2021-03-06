USE [CapstoneDummy]
GO
/****** Object:  StoredProcedure [dbo].[GETALLREQUESTS]    Script Date: 2/4/2020 10:07:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GETALLREQUESTS]
AS
BEGIN
 set nocount on
	Declare cur cursor for
	Select id From Request;
	DECLARE @id int;
	Open cur;

	Fetch Next From cur Into @id;

	While @@FETCH_STATUS = 0
	Begin
	--other statements go here
	Print 'Request id is ' + cast(@id as nvarchar(10));
	Exec UpdateRequestTotal @id;
	Fetch Next From cur Into @id;
	End


	Close cur;
	Deallocate cur;
END
go
exec GetAllRequests;
go