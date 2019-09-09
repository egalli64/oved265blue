
drop table users;
drop table administrators;

create table users (
user_id integer primary key,
name varchar2(100),
last_name varchar2(100),
username varchar2(100) unique not null,
password varchar2(100) not null,
email varchar2(100) unique not null,
licence varchar2(100) unique not null,
card_number integer not null,
card_date integer not null,
card_cvv integer not null);

create sequence my_seq;


create table administrators (
administrator_id integer primary key,
username varchar2(100),
password varchar2(100));

create sequence my_seq2;

insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'Alfonso', 'Pappalardo', 'alfopappa', 'informatica', 'alfonsopappalardo@libero.it', 000111222, 0322, 123, 'AB2411');

insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'Giacomo', 'Gaglione', 'gaglio', 'info', 'gaglione@libero.it', 002341666, 0325, 223, 'GG2411');

insert into users (user_id, name, last_name, username, password, email,  card_number, card_date, card_cvv, licence)
values (my_seq.nextval, 'Michele', 'Pulizzi', 'michipuli', 'prova', 'michelepulizzi@libero.itt', 000111333, 4121, 113, 'MP2411');


commit;

insert into administrators (administrator_id, username, password)
values (my_seq2.nextval, 'alfopappa', 'informatica');

insert into administrators (administrator_id, username, password)
values (my_seq2.nextval, 'gaglio', 'info');

insert into administrators (administrator_id, username, password)
values (my_seq2.nextval, 'michipuli', 'prova');

insert into administrators (administrator_id, username, password)
values (my_seq2.nextval, 'egalli64', 'development');

commit;

