
create database DA;
USE DA;
set sql_safe_updates=0;
create table employee
( 
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
);
describe table employee;
desc employee;
drop table emp;
alter table employee 
add gender varchar(10);

alter table employee
 add random varchar(10);
 
alter table employee 
drop random;

RENAME TABLE EMPLOYEE TO EMP;

insert into emp values("vicky",'don','csd',22,193000,'male'),("charming","chetan","csd",21,230000,'male'); 
insert into emp values("siva","ram","ece",22,'200001','male');
select * from emp;
select first_name as firstname,last_name as lastname from emp;
select * from emp where first_name like "v___y";
select * from emp where first_name like "%y";
select * from emp where first_name like "%i__";
select * from emp where first_name like "s%";
select first_name, last_name , age from emp where salary>200000;
select count(*) from emp;
select count(last_name) from emp;
insert into emp values("siva","ram","ece",23,200002,"male");
delete e1 from emp e1 join emp e2 on e1.first_name=e2.first_name and e1.salary=e2.salary and e1.age=23;


create table emp2
(
firstname varchar(20),
lastname varchar(20),
designation varchar(20),
age int,
salary numeric(8,2)
);
insert into emp2 values
 ("siva","ram","hod",32,90000),
 ("charming","chetan","ass.professor",30,70000),
 ("smiley","vishnu","aos.professor",33,65000),
 ("sunil","kumar","dean",41,95000),
 ("victory",'venkatesh',"chairman",50,200000),
 ("shining","shannu","employee",22,15000);
insert into emp2 values("charming","chetan","ass.professor",30,70000);
select * from emp2;
select * from emp2 where designation like "%yee";

update emp2 set lastname="venky" where age=50;
update emp2 set age=age+1 where firstname="smiley";
update emp2 set designation="principal" where designation='dean';
update emp2 set salary=salary+3000 where salary<70000;
update emp2 set salary=salary+4500 where salary>70000;
update emp2 set designation="sr.professor" where designation="ass.professor";
update emp2 set designation="vice principal" where designation="hod";

delete from emp2 where salary in(90000,70000,65000,95000,200000,15000);