-- Consultas sql    
select * from clients;
select count(*) from clients;
select * from clients c, orders o where c.idClient = o.idOrdersCliente; 
select Fname, Lname, idOrders, orderStatus from clients c, orders o where c.idClient = o.idOrdersCliente;
select concat(Fname, Lname) as Client, idOrders as Request, orderStatus as Status from clients c, orders o where c.idClient = o.idOrdersCliente;
select * from clients left outer join orders on idClient = idOrdersCliente;
select * from clients order by Fname;
select Fname, sum(sendValue) from clients left outer join orders on idClient = idOrdersCliente
	group by Fname;
select Fname, sum(sendValue) from clients left outer join orders on idClient = idOrdersCliente
	group by Fname
	having sum(sendValue) > 20;