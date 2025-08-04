create database Laptop;
use Laptop;
create table laptop_info(
laptop_name char(2),
laptop_id long,
laptop_price bigint);

rename table laptop_info to laptop_details;
desc laptop_details;

alter table laptop_details add laptop_charge_in_mh double;
alter table laptop_details add laptop_time time;

alter table laptop_details drop laptop_time;
desc laptop_details;

alter table laptop_details modify column laptop_id int;
alter table laptop_details modify column laptop_name varchar(20);
alter table laptop_details modify column laptop_price float;
desc laptop_details;