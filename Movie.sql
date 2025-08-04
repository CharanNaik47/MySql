create database Movie;
use Movie;

create table movie_details(
movie_name varchar(20),
movie_id int,
movie_release_date date,
movie_ticket_price float,
movie_duration time,
language varchar(20),
rating float,
actor_name varchar(30),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int);
desc movie_details;

insert into movie_details values('KGF',1,'19-12-27',100,'02:45:00','kannada',9.5,'Yash','vijay','Prasant',8000000,12000000,'2020-01-08',2500);
insert into movie_details values('KGF 2',1,'2022-06-14',150,'02:55:00','kannada',9.5,'Yash','vijay','Prasant',8000000,12000000,'2020-01-08',2500);
insert into movie_details values('',1,'2015-09-28',100,'02:25:00','kannada',6.5,'sudeep','vijay','Prasant',7000000,12000000,'2022-01-08',1500);

insert into movie_details values('galipata',1,'2006-09-28',100,'02:25:00','kannada',6.5,'ganesh','vijay','Prasant',6000000,10000000,'2006-01-08',1500),
('sarati',1,'2010-09-28',100,'02:25:00','kannada',6.5,'darshan','vijay','prem',4000000,12000000,'2010-01-08',700),
('vajra musti',1,'2000-09-28',100,'02:25:00','kannada',6.5,'shankar nag','vijay','praveen',5000000,3000000,'2001-01-08',500),
('adduri',1,'2010-07-28',100,'02:25:00','kannada',6.5,'druva','druva','Prasant',4000000,70000000,'2011-01-08',500),
('jaki',9,'2014-05-28',60,'02:25:00','kannada',6.5,'puneet','vijay','ganesh',5000000,3000000,'2014-05-02',1000);

delete from movie_details where movie_name='vajra musti' or budget >5000000;