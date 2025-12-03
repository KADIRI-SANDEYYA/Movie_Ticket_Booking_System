
								-- CLAUSES – QUESTIONS 
-- 1.	WRITE A QUERY TO FIND ALL MOVIES RELEASED AFTER 2023. (WHERE)
select * from movies where release_date>'2020-12-31';

-- 2.	WRITE A QUERY TO GET CUSTOMERS WHOSE NAME STARTS WITH 'S'. (LIKE)
select * from customers where name like 's%';

-- 3.	WRITE A QUERY TO FIND SHOWS PRICED BETWEEN 200 AND 300. (BETWEEN)
select * from shows where price between 200 and 300;

-- 4.	WRITE A QUERY TO FIND MOVIES OF GENRE IN ('ACTION', 'DRAMA'). (IN)
select * from movies where genre in ('action','drama');

-- 5.	WRITE A QUERY TO SORT ALL CUSTOMERS BY NAME. (ORDER BY)
select * from customers order by name asc;

-- 6.	WRITE A QUERY TO GROUP SHOWS BY PRICE AND COUNT THEM. (GROUP BY)
select price Ticket_Price,count(*) Total_Shows from shows group by price;

-- 7.	WRITE A QUERY TO FILTER GROUPS HAVING MORE THAN 2 SHOWS. (HAVING)
select price Ticket_Price,count(*) Total_Shows from shows group by price having Total_Shows>2;

-- 8.	WRITE A QUERY TO FETCH ONLY FIRST 5 MOVIES. (LIMIT)
select * from movies limit 5;