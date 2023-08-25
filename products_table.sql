create database homeWork;
create table products(
    id int primary key, name text(), description text(), price int, created_at date, updated_at date);
alter table products alter column name set not null;
alter table products add unique(name);
alter table products drop constraint name;
postgres=# select * from products where name ilike '%a%' and price>5000;
postgres=# select * from products where created_at between '2023-08-20' and '2023-08-25';
postgres=# select name from products where name ilike '%burger%' and created_at = updated_at;