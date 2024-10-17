--Чтение
select * from customers;

--Редактирование
update products set productcost = productcost * 0.5;

--Удаление записи
delete from orders where productid in (4,5)