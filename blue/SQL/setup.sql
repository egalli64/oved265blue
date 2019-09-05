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


insert into users (user_id, email, name, creditcard, password, surname, licence, username)
values (1, 'alfonsopappalardo@libero.it', 'alfonso', 000111222, 'informatica', 'pappalardo', 12345, 'alfopappa');

insert into users (user_id, email, name, creditcard, password, surname, licence, username)
values (2, 'giacomogaglione@libero.it', 'giacomo', 000123222, 'informatic', 'gaglione', 12344, 'giacgaglio');

insert into users (user_id, email, name, creditcard, password, surname, licence, username)
values (3, 'michelepulizzi@libero.it', 'michele', 000111223, 'informaticaa', 'pulizzi', 12355, 'michipuli');

commit;


