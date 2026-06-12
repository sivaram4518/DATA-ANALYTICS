select concat(firstname,' ',lastname) as fullname from emp2;
select upper(firstname)  from emp2;
select lower(firstname)  from emp2;
select firstname,length(firstname)  from emp2;
select replace(firstname,'- ','')  from emp2;

create table sales(
orderdate date,
 orderid  int,
 cusname varchar(20),
 price float
 );

INSERT INTO sales VALUES
('2026-06-01', 1,'siva',  120000.00),
( '2026-06-02', 2,'Mouse', 5000.00),
( '2026-06-03', 3,'ram',7500.00),
( '2026-06-04', 4,'Monitor', 45000.00),
( '2026-06-05', 5,'jaan',  18000.00);


select * from salesdata4;
alter table salesdata4 modify sdate date;
drop table salesdata4;

select datediff(sysdate(),orderdate) as date_difference from sales;

SELECT orderdate,DATEDIFF(SYSDATE(), orderdate) AS date_difference FROM sales;
show databases;
use da;
show tables;
select * from sales; 
select * from datatime;

select day(orderdate) from sales;
select quarter(orderdate) from sales;
SELECT DATE_FORMAT(orderdate, '%d-%m-%Y')FROM sales;
desc sales;

select * from data_sample;
select count(1) from data_sample where customername like '%z%';
select count(-1) from data_sample where customername like '%z%' or customername like '%a';
select count(0) from data_sample where customername regexp '[^p]';
select count(5) from data_sample where customername regexp '[x-y]';
select count(9666666666) from data_sample where customername regexp '[z,y]';
