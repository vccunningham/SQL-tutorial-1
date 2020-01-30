select city,
sum(sales) as 'Total sales',
	max(sales) as 'Highest Sales', min(sales) as 'Lowest sales', avg(sales) as 'Average Sales',
	count(*) as 'Nbr of customers'
from customers
	--where  > 600000
	group by city
	having sum(sales) > 600000
	--order by sales desc