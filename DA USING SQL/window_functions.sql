use intro_sql;

show tables;
select * from cash;

select distinct coffee_name,sum(money) over(partition by coffee_name) as total_money from cash;

SELECT  coffee_name, money,ROW_NUMBER() OVER(ORDER BY money DESC) AS row_num FROM cash;

select  coffee_name,money,row_number() over(partition by coffee_name) as row_num from cash;

select row_number() over(partition by coffee_name) as row_num,coffee_name from cash order by coffee_name;
 
select  coffee_name,rank() over(order by money desc)as ran from cash;

select *,dense_rank() over(order by money desc)as ran from cash;

select first_value(coffee_name) over (order by money desc) as highest_money from cash;                        