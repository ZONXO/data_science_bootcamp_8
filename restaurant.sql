-- open our database
.open restaurant.db
.mode column 
.table
-- create table
/*CREATE TABLE IF NOT EXISTS customers (
    id int unique,
    name text,
    city text
);
INSERT INTO customers VALUES 
  (1,"peem", "BKK"),
  (2,"non", "BKK"),
  (3,"pea", "LONDON");*/
  
select * from customers;


/*create table if not exists menu(
  menuid int unique,
  nameMenu text,
  ingredientsid int
);*/
/*insert into menu values
  (1,"egg fried rice",1),
  (2,"pad kra pao",2),
  (3,"omlet",1);*/
/*alter table menu add price text;
update menu 
  set price = '30'
  where menuid = 3;*/

  
select * from menu;

/*create table if not exists ingredients(
  ingredientsid int unique,
  ingredientsidName text,
  ingredientsType int
);*/
/*insert into ingredients values
  (1,"egg",1),
  (2,"basil",2),
  (3,"pork",3);*/

select * from ingredients;

/*create table if not exists ingredients_type(
  ingredientsTypeid int unique,
  name text
);*/
/*insert into ingredients_type values
  (1,"egg"),
  (2,"vegetable"),
  (3,"meat");*/

select * from ingredients_type;

/*create table if not exists Kitchen_implements(
  KitchenImplementsid int unique,
  name text
);*/
/*insert into Kitchen_implements values
  (1,"wok");*/

select * from Kitchen_implements;
  

/*create table if not exists employees(
  employeesid int unique,
  name text,
  phone text
);*/

  /*insert into employees values
  (1,"wang",0926335541);*/
 
  
select * from employees;
  

------sub query
select sub1.nameMenu 
  
from (select * from menu
  where menuid = 2) as sub1
join (select * from employees
  where name like '%ang') as sub2
on sub1.employeesid = sub2.employeesid;
  


------with (common table expression)
with 
sub1 as (select * from menu
  where menuid = 2),
sub2 as (select * from employees
  where name like '%ang')

select sub1.nameMenu
from sub1 
join sub2
on sub1.employeesid = sub2.employeesid;

---- join
select nameMenu,price 
from menu  
  join ingredients as ing
  on menu.ingredientsid = ing.ingredientsid
where menu.ingredientsid = 1 ;

--aggregate functions
select price,
  avg(price),
  count(price),
  max(price),
  min(price),
  sum(price)
from menu;
