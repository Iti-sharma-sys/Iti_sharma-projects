use sql;
select*from orders;
-------Query to find orders where city is null-----

select count(*)
from orders
where City is null;

------update statement to update city as null for order ids:CA-2020-161389,US-2021-156909---

UPDATE Orders
set City = null
where Order_ID IN ('CA-2020-161389','US-2021-156909');
select*from orders

--------wirte queries for customer name starting from 'a'------

select Customer_Name,Order_ID
from Orders
where SUBSTRING( Customer_Name,2,1)='A'
--OR--
select Customer_Name,Order_ID 
from orders
 where Customer_Name like ('_a%');

 ------Query to get customer name which neither starts from 'a'nor'd' and third letter 's'-------

 select  Order_ID,Customer_Name
 from orders
where Customer_Name like'[^A D]%'
and SUBSTRING(Customer_Name,3,1)='s';

--------find top 5 sub_categories in west region by total quantity sold----------

select  top 5 Region,sub_category,sum(Quantity) as total_q
from orders
where Region='WEST'
group by Region,sub_category
order by total_q desc;

------orders placed in january 2020 or january 2022-----------

select Order_id,customer_Name,Order_Date
from orders
where DATEPART(yy,Order_Date)= 2020 and DATEPART(month,Order_Date)=1 
or
DATEPART(yy,Order_Date)= 2021 and DATEPART(month,Order_Date)=1;

--------Find total sales for each region and ship mode combination for orders in year 2020-----

select  Region,Ship_mode,sum(Sales) as total_sales
from orders
where DATEPART(yy,Order_Date)= 2020
group by Region,Ship_mode
order by region, Ship_mode desc;

--------Get total profit,First order date and latest order date for each category----------

select 
Category,
sum(Profit) as total_profit,
min(Order_Date) as first_order_date,
max(Order_Date) as latest_order_date
from orders
group by category
order by category;

---------Get all orders where either quantity is less than 3 or profit is 0--------

select Customer_Name,Quantity,profit
from orders
 where Quantity<3
 OR profit=0;

 ---Query for order details of orders which was placed for the first time with ship mode as 'First class'------------

 select distinct Customer_Name,Order_ID,Order_Date,Ship_Mode
from orders
where Ship_Mode='First Class' and
 Order_Date=(
 select min(Order_date)
 from orders
 where Ship_Mode='First Class');

 ---OR---

 select Top 1 Customer_Name,Order_ID,Order_Date,Ship_Mode
 from orders
 where Ship_Mode='First Class'
 order by Order_Date asc;

