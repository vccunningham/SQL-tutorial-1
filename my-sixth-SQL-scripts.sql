select * from customers
	where id = 8 or id = 11 or id = 12



	select * from customers
	where id in (select id from customers
	where charindex('bank', Name) > 0) or charindex('cardinal', name) > 0 or charindex('eagle', name) > 0;