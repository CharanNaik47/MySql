create database Fan1;

use Fan1;

create table fan(
c_name varchar(50),
f_id bigint,
f_colour varchar(20),
speed int,
voltage float,
wings long);

desc fan;
drop table fan;

create table fan_info(
c_name varchar(50),
f_id bigint,
f_colour varchar(20),
speed int,
voltage float,
wings long);

desc fan_info;

rename table fan_info to fan_details;                     
desc fan_details;

alter table fan_details add f_price double;
desc fan_details;
alter table fan_details add c_name varchar(50);

alter table fan_details drop f_id;
desc fan_details;

alter table fan_details modify column speed float;
desc fan_details;
alter table fan_details modify column f_id float;

alter table fan_details rename column c_name to f_name;    

insert into fan_details values('Crompton','Red',2,20.7,4,4.500);
insert into fan_details values('Bajaj','White',2,15.7,3,3.500);
insert into fan_details values('Sony','Blue',2,20.7,2,1.500);
insert into fan_details values('Supreme','Red',2,20.7,4,7.500);
insert into fan_details values('prestige','Black',2,10.6,4,5.500);
select *from fan_details;
alter table fan_details add b_date date ;
alter table fan_details add b_time time ;

insert into fan_details values('Crompton','Red',2,20.7,4,4.500,'2023-7-14','12:30');
insert into fan_details values('Bajaj','White',2,15.7,3,3.500,'2021-7-14','12:30');
insert into fan_details values('Sony','Blue',2,20.7,2,1.500,'2022-2-14','12:30');
insert into fan_details values('Supreme','Red',2,20.7,4,7.500,'2024-8-14','12:30');
insert into fan_details values('prestige','Black',2,10.6,4,5.500,'2020-5-14','12:30');