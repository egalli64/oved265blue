drop table users;
drop table administrator;
create table users  (
user_id integer primary key,
email varchar2(100),
name varchar2(100),
creditcard integer,
password varchar2(100),
surname varchar2(100),
licence varchar2(100),
username varchar2(100));


create table administrator (
administrator_id integer primary key,
username varchar2(100),
password varchar2(100));






