select * from orders o
join customers c
on c.Id = o.customerId
where o.id = 29

select sum(ol.Quantity * ol.Price)
from orderlines ol
where ol.ordersId = 29

update customers set
sales = (select sum(ol.Quantity * ol.Price)
from orderLines ol
join Orders o
on o.id = ol.ordersId
join Customers c
on c.id = o.CustomerId
where c.name = 'Doud LLC')
where name = 'Doud LLC';



Update Customers Set
sales = sales * 1.1
where city ='Columbus'


select * from customers where city = 'Columbus'

select * from orderlines ol
 
 select ol.id
 from customers c
 join orders o
 on c.Id = o.CustomerId
 join orderlines ol
 on ol.ordersId =o.Id
 where c.sales > 90000;


 update OrderLines set 
 price = price * 0.9
 where id in (select ol.id
 from customers c
 join orders o
 on c.Id = o.CustomerId
 join orderlines ol
 on ol.ordersId =o.Id
 where c.sales > 90000)