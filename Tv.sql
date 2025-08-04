create database Tv;
use Tv;
create table tv_details(
tv_name varchar(20),
tv_id int,
tv_price float);

rename table tv_details to tv_info;
desc tv_info;

alter table tv_info add tv_size double;
alter table tv_info add buy_year year;

alter table tv_info drop buy_year;
desc tv_info;

alter table tv_info modify column tv_id long;
alter table tv_info modify column tv_name char(8);
alter table tv_info modify column tv_price double;
desc tv_info;