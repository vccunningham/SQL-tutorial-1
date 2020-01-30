select*
	from customers
	where sales > (select avg(sales) from customers);
select * from customers 
	where sales >
	
	(select max(sales) from customers
	where city = 'cleveland')