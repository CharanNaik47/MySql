create database pro_Kabaddi_League;
use pro_Kabaddi_League;

create table teams(
team_name varchar(20) not null,
team_id int primary key,
owner_name varchar(25),
coach_name varchar(25),
city varchar(20) unique
);

create table players(
player_name varchar(20),
player_id int primary key,
age bigint,
salary float,
team_id int,foreign key(team_id) references teams(team_id)
);

create table grounds(
ground_name varchar(50),
ground_id int primary key,
location varchar(25),
team_id int,foreign key(team_id) references teams(team_id)
);

create table matches(
match_id int primary key,
match_date date not null,
opponent_team varchar(50),
winning_team varchar(20),
team_id int,
ground_id int,
man_of_the_match int,
foreign key(team_id) references teams(team_id),
foreign key(ground_id) references grounds(ground_id),
foreign key(man_of_the_match) references players(player_id)
);

insert into teams values( 'bangaluru Bulls', 1,'Rohit Shetty','B.C.Ramesh','Bangaluru'),
( 'Patna Pirates', 2,'Vikash Jain','R.M.Singh','Patna'),
('Tamil Thalaivas',3,'Suresh Kumar','J.Udayakumar','Chennai'),
('Telugu Titans',4,'Manish Sharma','Venkatesh Goud','Hyderabad'),
('Jaipur Pink Panthers',5,'Abhishek Bachchan','Sandeep Dhull','Jaipur');

INSERT INTO players (player_name, player_id, age, salary, team_id) VALUES
('Pawan Sehrawat', 1, 27, 2000000, 1),
('Mahender Singh', 2, 26, 1500000, 1),
('Pardeep Narwal', 3, 28, 2500000, 2),
('Monu Goyat', 4, 27, 1800000, 2),
('Ajinkya Pawar', 5, 25, 1600000, 3),
('Rohit Kumar', 6, 24, 1400000, 3),
('Siddharth Desai', 7, 27, 2200000, 4),
('vikas Kandola', 8, 25, 1500000, 4),
('Arjun Deshwal', 9, 23, 1700000, 5),
('Deepak Hooda', 10, 29, 1900000, 5);

INSERT INTO grounds (ground_name, ground_id, location, team_id) VALUES
('Sree Kanteerava Indoor Stadium', 1, 'Bengaluru', 1),
('Patliputra Sports Complex', 2, 'Patna', 2),
('Jawaharlal Nehru Indoor Stadium', 3, 'Chennai', 3),
('G. M. C. Balayogi Indoor Stadium', 4, 'Hyderabad', 4),
('Sawai Mansingh Indoor Stadium', 5, 'Jaipur', 5);

INSERT INTO matches (match_id, match_date, opponent_team, winning_team, team_id, ground_id, man_of_the_match) VALUES
(1, '2025-01-10', 'Patna Pirates', 'Bengaluru Bulls', 1, 1, 1),
(2, '2025-01-12', 'Tamil Thalaivas', 'Patna Pirates', 2, 2, 3),
(3, '2025-01-15', 'Telugu Titans', 'Tamil Thalaivas', 3, 3, 5),
(4, '2025-01-18', 'Jaipur Pink Panthers', 'Telugu Titans', 4, 4, 7),
(5, '2025-01-20', 'Bengaluru Bulls', 'Jaipur Pink Panthers', 5, 5, 9);


