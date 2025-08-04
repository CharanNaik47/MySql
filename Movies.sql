create database Movies;
use Movies;

create table sandalwood(
m_name varchar(20),
m_id int,
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(30),
producer_name varchar(20), 
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int);

create table mollywood(
m_name varchar(20),
m_id int,
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(30),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int);

create table tollywood(
m_name varchar(20),
m_id int,
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(30),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int);

INSERT INTO sandalwood (m_name,m_id,release_date,duration,language,rating,actor_name,producer_name,director_name,budget,collection,platform_release_date,no_of_screens) VALUES
( 'Kantara',1, '2022-09-30', '02:30:00', 'Kannada', 8.5, 'Rishab Shetty', 'Vijay Kiragandur', 'Rishab Shetty', 16000000.00, 160000000.00, '2023-01-01 00:00:00', 1200);
INSERT INTO sandalwood (m_name,m_id,release_date,duration,language,rating,actor_name,producer_name,director_name,budget,collection,platform_release_date,no_of_screens) VALUES
('KGF Chapter 1', 2,'2018-12-21', '02:34:00', 'Kannada', 8.2, 'Yash', 'Vijay Kiragandur', 'Prashanth Neel', 80000000.00, 250000000.00, '2019-01-15 00:00:00', 1800);
INSERT INTO sandalwood (m_name,m_id,release_date,duration,language,rating,actor_name,producer_name,director_name,budget,collection,platform_release_date,no_of_screens) VALUES
( 'KGF Chapter 2',3, '2022-04-14', '02:48:00', 'Kannada', 8.4, 'Yash', 'Vijay Kiragandur', 'Prashanth Neel', 100000000.00, 1250000000.00, '2022-06-01 00:00:00', 3000);
INSERT INTO sandalwood (m_name,m_id,release_date,duration,language,rating,actor_name) VALUES
( 'RangiTaranga', 4,'2015-07-03', '02:30:00', 'Kannada', 8.3, 'Nirup Bhandari');
INSERT INTO sandalwood (m_name,m_id,release_date,duration,budget,collection,platform_release_date,no_of_screens) VALUES
('Ugramm',5, '2014-02-21', '02:16:00', 40000000.00, 250000000.00, '2014-05-01 00:00:00', 800);
INSERT INTO sandalwood (m_name,m_id,duration,rating,actor_name,producer_name,director_name,budget,collection,no_of_screens) VALUES
('Mungaru Male',6, '02:30:00',  8.2, 'Ganesh', 'E. Krishnappa', 'Yogaraj Bhat', 2000000.00, 50000000.00, 400);
INSERT INTO sandalwood (m_name,m_id,release_date,duration,language,rating,actor_name,producer_name,director_name,budget,collection,platform_release_date,no_of_screens) VALUES
( 'Bell Bottom', 7,'2019-02-15', '02:10:00', 'Kannada', 8.0, 'Rishab Shetty', 'T. R. Chandrashekar', 'Jayatheertha', 4000000.00, 25000000.00, '2019-05-01 00:00:00', 450);
INSERT INTO sandalwood (m_name,m_id,release_date,duration,rating,actor_name,producer_name,director_name,budget,platform_release_date) VALUES
('Gaalipata',8, '2008-01-18', '02:35:00', 7.6, 'Ganesh', 'Suryaprakash Rao', 'Yogaraj Bhat', 3000000.00, '2008-04-10 00:00:00');
INSERT INTO sandalwood VALUES ('Tagaru',9, '2018-03-23',100, '02:12:00', 'Kannada', 7.9, 'Shivrajkumar', 'K. P. Srikanth', 'Duniya Soori', 5000000.00, 45000000.00, '2018-07-01 00:00:00', 600);
INSERT INTO sandalwood VALUES ('Hebbuli',10, '2018-05-22',80, '02:30:00', 'Kannada', 8.9, 'Sudeep', 'rajesh', 'mahesh', 45000000.00, 50000000.00, '2023-07-01 00:00:00', 600);
INSERT INTO sandalwood VALUES ('777 Charli',11, '2018-07-23',100, '02:25:00', 'Kannada', 5.9, 'Srakshit', 'lokesh', 'devraj', 5000000.00, 40000000.00, '2023-07-01 00:00:00', 800);
INSERT INTO sandalwood VALUES ('villan',12, '2018-09-24',150, '02:10:00', 'Kannada', 7.9, 'Sudeep', 'vijay', 'rakshith', 5000000.00, 65000000.00, '20-11-01 00:00:00', 600);
INSERT INTO sandalwood VALUES ('kempe gouda',13, '2008-09-08',150, '02:25:00', 'Kannada', 7.9, 'Sudeep', 'vijay', 'rakshith', 5000000.00, 65000000.00, '2008-11-01 00:00:00', 200);
INSERT INTO sandalwood VALUES ('rajahuli',14, '2013-07-24',150, '02:15:00', 'Kannada', 7.0, 'Sudeep', 'vijay', 'rakshith', 5000000.00, 65000000.00, '2013-11-01 00:00:00', 400);
INSERT INTO sandalwood VALUES ('videsha',15, '2012-09-20',150, '02:10:00', 'Kannada', 5.9, 'Sudeep', 'vijay', 'rakshith', 4000000.00, 45000000.00, '2012-11-01 00:00:00', 500);

select * from sandalwood;

INSERT INTO mollywood VALUES
('Avesaam', 101, '2024-05-12', 150.0, '02:15:00', 'Malayalam', 7.8, 'Tovino Thomas', 'Rajesh Pillai', 'Anwar Rasheed', 35000000, 75000000, '2024-07-10 00:00:00', 450),
('Premum', 102, '2023-11-08', 120.0, '02:10:00', 'Malayalam', 6.9, 'Pranav Mohanlal', 'Sandra Thomas', 'Lal Jose', 22000000, 40000000, '2024-01-15 00:00:00', 320),
('2018', 103, '2023-05-05', 180.0, '02:30:00', 'Malayalam', 9.1, 'Tovino Thomas', 'Vineeth Sreenivasan', 'Jude Anthany', 30000000, 180000000, '2023-08-01 00:00:00', 900),
('Sukshmadarshini', 104, '2022-09-20', 140.0, '02:20:00', 'Malayalam', 7.2, 'Kunchacko Boban', 'Aashiq Abu', 'Anjali Menon', 18000000, 38000000, '2022-12-25 00:00:00', 275),
('Marco', 105, '2024-02-17', 160.0, '02:18:00', 'Malayalam', 8.0, 'Fahadh Faasil', 'Sameer Thahir', 'Lijo Jose', 28000000, 55000000, '2024-04-01 00:00:00', 380),
('King of Kotta', 106, '2023-08-24', 200.0, '02:40:00', 'Malayalam', 6.5, 'Dulquer Salmaan', 'Wayfarer Films', 'Abhilash Joshiy', 45000000, 70000000, '2023-10-15 00:00:00', 600),
('Adu Jeevitam', 107, '2024-03-28', 170.0, '02:50:00', 'Malayalam', 8.7, 'Prithviraj', 'K.R. Krishnakumar', 'Blessy', 60000000, 95000000, '2024-06-10 00:00:00', 550),
('Salute', 108, '2022-03-18', 100.0, '02:00:00', 'Malayalam', 7.4, 'Dulquer Salmaan', 'Wayfarer Films', 'Rosshan Andrrews', 15000000, 30000000, '2022-06-01 00:00:00', 200);

INSERT INTO mollywood (m_name, m_id, actor_name, director_name)
VALUES ('Cold Case', 201, 'Prithviraj Sukumaran', 'Tanu Balak');

INSERT INTO mollywood (m_name, release_date, language, rating)
VALUES ('ARM', '2023-10-05', 'Malayalam', 7.9);

INSERT INTO mollywood (m_id, ticket_price, duration, producer_name)
VALUES (203, 120.0, '02:20:00', 'Sajin Kumar');

INSERT INTO mollywood (m_name, collection, platform_release_date)
VALUES ('Pravikoodu Shappu', 40000000, '2024-01-15 00:00:00');

INSERT INTO mollywood (m_name, m_id, budget, no_of_screens)
VALUES ('Memories', 205, 25000000, 300);

INSERT INTO mollywood (m_name, actor_name, ticket_price)
VALUES ('Lucky Baskar', 'Dulquer Salmaan', 150.0);

select * from mollywood;

INSERT INTO tollywood VALUES
('', 101, '2024-05-12', 150.0, '02:15:00', 'Malayalam', 7.8, 'Tovino Thomas', 'Rajesh Pillai', 'Anwar Rasheed', 35000000, 75000000, '2024-07-10 00:00:00', 450),
('Premum', 102, '2023-11-08', 120.0, '02:10:00', 'Malayalam', 6.9, 'Pranav Mohanlal', 'Sandra Thomas', 'Lal Jose', 22000000, 40000000, '2024-01-15 00:00:00', 320),
('2018', 103, '2023-05-05', 180.0, '02:30:00', 'Malayalam', 9.1, 'Tovino Thomas', 'Vineeth Sreenivasan', 'Jude Anthany', 30000000, 180000000, '2023-08-01 00:00:00', 900),
('Sukshmadarshini', 104, '2022-09-20', 140.0, '02:20:00', 'Malayalam', 7.2, 'Kunchacko Boban', 'Aashiq Abu', 'Anjali Menon', 18000000, 38000000, '2022-12-25 00:00:00', 275),
('Marco', 105, '2024-02-17', 160.0, '02:18:00', 'Malayalam', 8.0, 'Fahadh Faasil', 'Sameer Thahir', 'Lijo Jose', 28000000, 55000000, '2024-04-01 00:00:00', 380),
('King of Kotta', 106, '2023-08-24', 200.0, '02:40:00', 'Malayalam', 6.5, 'Dulquer Salmaan', 'Wayfarer Films', 'Abhilash Joshiy', 45000000, 70000000, '2023-10-15 00:00:00', 600),
('Adu Jeevitam', 107, '2024-03-28', 170.0, '02:50:00', 'Malayalam', 8.7, 'Prithviraj', 'K.R. Krishnakumar', 'Blessy', 60000000, 95000000, '2024-06-10 00:00:00', 550),
('Salute', 108, '2022-03-18', 100.0, '02:00:00', 'Malayalam', 7.4, 'Dulquer Salmaan', 'Wayfarer Films', 'Rosshan Andrrews', 15000000, 30000000, '2022-06-01 00:00:00', 200);

INSERT INTO tollywood VALUES
('Pushpa', 301, '2021-12-17', 180.0, '02:59:00', 'Telugu', 8.2, 'Allu Arjun', 'Naveen Yerneni', 'Sukumar', 250000000, 365000000, '2022-03-14 00:00:00', 1000),
('RRR', 302, '2022-03-25', 200.0, '03:07:00', 'Telugu', 9.0, 'NTR & Ram Charan', 'D. V. V. Danayya', 'S. S. Rajamouli', 550000000, 1200000000, '2022-06-20 00:00:00', 1800),
('Salaar', 303, '2023-12-22', 190.0, '02:45:00', 'Telugu', 7.8, 'Prabhas', 'Vijay Kiragandur', 'Prashanth Neel', 400000000, 700000000, '2024-03-01 00:00:00', 1500),
('Sita Ramam', 304, '2022-08-05', 150.0, '02:43:00', 'Telugu', 8.5, 'Dulquer Salmaan', 'Ashwini Dutt', 'Hanu Raghavapudi', 30000000, 90000000, '2022-10-01 00:00:00', 500),
('Dasara', 305, '2023-03-30', 160.0, '02:36:00', 'Telugu', 7.6, 'Nani', 'Sudhakar Cherukuri', 'Srikanth Odela', 65000000, 110000000, '2023-06-01 00:00:00', 750),
('Hi Nanna', 306, '2023-12-07', 170.0, '02:30:00', 'Telugu', 8.0, 'Nani', 'Mohan Cherukuri', 'Shouryuv', 50000000, 85000000, '2024-02-01 00:00:00', 600),
('Veera Simha Reddy', 307, '2023-01-12', 180.0, '02:45:00', 'Telugu', 6.5, 'Balakrishna', 'Mythri Movie Makers', 'Gopichand Malineni', 75000000, 100000000, '2023-03-10 00:00:00', 800),
('Kushi', 308, '2023-09-01', 160.0, '02:45:00', 'Telugu', 6.8, 'Vijay Deverakonda', 'Mythri Movie Makers', 'Shiva Nirvana', 70000000, 95000000, '2023-11-15 00:00:00', 650);

INSERT INTO tollywood (m_name, m_id, actor_name, release_date)
VALUES ('Magadheera', 401, 'Ram Charan', '2009-07-31');

INSERT INTO tollywood (m_name, rating, director_name, ticket_price)
VALUES ('Eega', 8.0, 'S. S. Rajamouli', 100.0);

INSERT INTO tollywood (m_name,m_id, duration, budget, collection)
VALUES ('Bahubali',403, '02:39:00', 180000000, 600000000);

INSERT INTO tollywood (m_name, producer_name)
VALUES ('Surya''s Saturday', 'Vamsi Krishna');

INSERT INTO tollywood (m_name, m_id, actor_name, rating, no_of_screens)
VALUES ('Tholi Prema', 405, 'Varun Tej', 7.5, 450);

INSERT INTO tollywood (m_name,duration, director_name, platform_release_date)
VALUES ('Hit','02:06:00', 'Sailesh Kolanu', '2020-06-01 00:00:00');

INSERT INTO tollywood (m_name, m_id, language, release_date)
VALUES ('Evaru', 407, 'Telugu', '2019-08-15');

INSERT INTO tollywood (m_name,rating, budget, collection, actor_name)
VALUES ('Hanuman',7.9, 30000000, 100000000, 'Teja Sajja');

select * from tollywood;
