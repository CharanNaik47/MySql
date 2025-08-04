create database Charger;
use Charger;
create table charger_info(
charger_name char(2),
charger_id long,
charger_price bigint);

rename table charger_info to charger_details;
desc charger_details;

alter table charger_details add charger_watt double;
alter table charger_details add charge_time time;

alter table charger_details drop charge_time;
desc charger_details;

alter table charger_details modify column charger_id int;
alter table charger_details modify column charger_name varchar(20);
alter table charger_details modify column charger_price float;
desc charger_details;