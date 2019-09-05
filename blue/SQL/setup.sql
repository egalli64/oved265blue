
drop table users;
drop table administrator;

create table users (
user_id integer primary key,
name varchar2(100),
last_name varchar2(100),
username varchar2(100),
password varchar2(100),
email varchar2(100),
card_number integer,
card_date integer,
card_cvv integer,
licence varchar2(100));

create sequence my_seq;

create table administrator (
administrator_id integer primary key,
username varchar2(100),
password varchar2(100));


insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'alfonso', 'pappalardo', 'alfopappa', 'informatica', 'alfonsopappalardo@libero.it', 000111222, 0322, 123, 'AB2411');

insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'giacomo', 'gaglione', 'gaglio', 'info', 'gaglione@libero.it', 002341666, 0325, 223, 'GG2411');

insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'michele', 'pulizzi', 'michipuli', 'prova', 'michelepulizzi@libero.itt', 000111333, 4121, 113, 'MP2411');


commit;


