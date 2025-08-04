create database Kabaddi_league;

use Kabaddi_league;

create table Teams(
team_name varchar(25),
team_id int,
no_ofPlayers bigint,
team_code char(5),
team_value double,
team_budget long,
team_rating float,
founding_year year,
reg_time time,
reg_date date,
has_won_champ boolean);

CREATE TABLE players(
player_id int,
player_code CHAR(4),
player_name varchar(50),
player_birth year,
joining_date date,
joining_time time,
player_weight float,
player_height double,
salary long,
games_played bigint,
is_caption boolean);

CREATE TABLE home_ground(
ground_id INT,
ground_code CHAR(6),
ground_name VARCHAR(100),
maintenance_cost long,
seat_capacity bigint,
built_year YEAR,
opening_time TIME,
opening_date DATETIME,
temperature float,
good_weather boolean);

create table matches(
match_id int,
match_code char(8),
venue varchar(70),
match_year year,
match_time time,
match_date datetime,
attendance bigint,
ticket_revenue double,
avg_player_rating float,
was_televised boolean);

CREATE TABLE sponsors(
sponsor_id int,
sponsor_code char(3),
sponsor_name varchar(25),
contract_year year,
signing_time time,
singing_date date,
investment double,
influence_score float,
is_active boolean,
contract_valve long);

