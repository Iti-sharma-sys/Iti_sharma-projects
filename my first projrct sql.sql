--Who is the senior most employee based on job title?
Select*from employee;
SELECT TOP 1*
FROM employee
ORDER BY levels DESC;

--Which countries have the most Invoices?
Select*from invoice;
Select count(*) as c,billing_country
from invoice
GROUP BY billing_country
order by c DESC;

--What are top 3 values of total invoice?
Select top 3 total
from invoice
Order by total DESC;

--Which city has the best customers? We would like to throw a promotional Music festival in the city we the most money. Write a query that returns one city that has the highest sum of invoice totals. Retturn both city name & sum of all invoice totals.
SElect*from invoice;
select sum(Total) as invoice_total,billing_city
from invoice
group by billing_city 
order by invoice_total desc;

