insert into orders (CustomerID, Date, Description)
Values (1, '2020-02-01', 'My first inserted order');

INSERT into OrderLines (OrdersId, Product, Description, Quantity, Price)
	values (28, 'Echo', 'Amazon Echo', 3, 99.99);

INSERT into OrderLines (OrdersId, Product, Description, Quantity, Price)
	values (28, 'EchoDot', 'Amazon Echo Dot', 5, 39.99);

insert into orders (CustomerId, Date, Description)
values (2, '2020-02-03', 'My second inserted order');

insert into Orderlines (OrdersId, Product, Description, Quantity, Price)
values (29, 'Dell', 'Dell Laptop', 2, 699.99);

insert into Orderlines (OrdersId, Product, Description, Quantity, Price)
values (29, 'Apple Watch', 'Apple Watch 4', 3, 1099.99);

insert into Orderlines (OrdersId, Product, Description, Quantity, Price)
values (29, 'Fire Stick 4K', 'Amazon FireStick', 2, 699.99);

--select * from orders
--Where id = (select max(id) from orders)

--select top 2 * from orders
--order by id desc