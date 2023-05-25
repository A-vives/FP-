--
-- DATABASE: MiniSoccerLeague
--
DROP DATABASE if exists minisoccerleague;
CREATE DATABASE minisoccerleague;
USE minisoccerleague;
----------------------------------------------------------
--
-- Schema for relation countries
--

CREATE TABLE countries (
  id varchar(2) NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL
);
--
-- Populating relation TEAMS
--
INSERT INTO countries (id, name)
VALUES ('UK', 'United Kingdom'),
  ('ES', 'Spain'),
  ('IT', 'Italy');
----------------------------------------------------------
--
-- Schema for relation towns
--

CREATE TABLE towns (
  id varchar(2) NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL,
  country varchar(2) REFERENCES countries (id) ON DELETE
  SET NULL
);
--
-- Populating relation towns
--
INSERT INTO towns (id, name,country)
VALUES ('AT', 'Athens', NULL),
  ('LI', 'Liverpool', 'UK'),
  ('LO', 'London', 'UK'),
  ('MA', 'Manchester', 'UK'),
  ('PM', 'Palma de Mallorca', 'ES');
-- --------------------------------------------------------
--
-- Schema for relation TEAMS
--

CREATE TABLE teams (
  id varchar(3) NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL,
  year smallint(6),
  town varchar(2) REFERENCES towns (id) ON DELETE
  SET NULL
);
--
-- Populating relation teams
--
INSERT INTO teams (id, name, year, town)
VALUES ('ARS', 'Arsenal', 1886, 'LO'),
  ('CHE', 'Chelsea', 1905, 'LO'),
  ('LIV', 'Liverpool', 1892, 'LI'),
  ('MAC', 'Manchester City', 1880, 'MA'),
  ('MAU', 'Manchester United', 1878, 'MA'),
  ('TOT', 'Tottenham Hotspur', 1882, 'LO'),
  ('RMA', 'R. C. D. Mallorca', 1916, 'PM'),
  ('AMG', 'C. D. Amigos', 1920, NULL);
-- --------------------------------------------------------
--
-- Schema for relation matches
--

CREATE TABLE matches (
  tidhome varchar(3) DEFAULT NULL REFERENCES teams (id) ON DELETE CASCADE,
  tidaway varchar(3) DEFAULT NULL REFERENCES teams (id) ON DELETE CASCADE,
  goalshome int(11) DEFAULT '0',
  goalsaway int(11) DEFAULT '0',
  date date NOT NULL DEFAULT CURRENT_DATE,
  PRIMARY KEY (tidhome, tidaway, date)
);
--
-- Populating relation MATCHES
--

INSERT INTO matches (
    tidhome,
    tidaway,
    goalshome,
    goalsaway,
    date
  )
VALUES ('CHE', 'MAU', 0, 0, '2016-11-12'),
  ('LIV', 'TOT', 2, 2, '2016-11-12'),
  ('MAC', 'ARS', 1, 3, '2016-11-13'),
  ('ARS', 'LIV', 1, 3, '2016-11-20'),
  ('MAU', 'MAC', 2, 2, '2016-11-20'),
  ('TOT', 'CHE', 3, 1, '2016-11-21'),
  ('CHE', 'ARS', 0, 1, '2016-11-27'),
  ('LIV', 'MAC', 1, 0, '2016-11-27'),
  ('TOT', 'MAU', 2, 2, '2016-11-28'),
  ('ARS', 'TOT', 3, 3, '2016-12-03'),
  ('LIV', 'MAU', 2, 2, '2016-12-03'),
  ('MAC', 'CHE', 1, 0, '2016-12-04'),
  ('CHE', 'LIV', 1, 0, '2016-12-10'),
  ('MAU', 'ARS', 0, 1, '2016-12-10'),
  ('TOT', 'MAC', 1, 1, '2016-12-11'),
  ('MAU', 'CHE', 1, 2, '2017-01-07'),
  ('TOT', 'LIV', 2, 1, '2017-01-07'),
  ('ARS', 'MAC', 1, 2, '2017-01-08'),
  ('LIV', 'ARS', 0, 1, '2017-01-14'),
  ('MAC', 'MAU', 1, 0, '2017-01-14'),
  ('CHE', 'TOT', 0, 0, '2017-01-15'),
  ('ARS', 'CHE', 0, 0, '2017-01-21'),
  ('MAC', 'LIV', 5, 1, '2017-01-21'),
  ('MAU', 'TOT', 1, 2, '2017-01-22'),
  ('TOT', 'ARS', 2, 1, '2017-02-04'),
  ('MAU', 'LIV', 3, 1, '2017-02-04'),
  ('CHE', 'MAC', 3, 1, '2017-02-05'),
  ('LIV', 'CHE', 2, 2, '2017-02-11'),
  ('ARS', 'MAU', 1, 0, '2017-02-11'),
  ('MAC', 'TOT', 1, 1, '2017-02-12'),
  ('MAU', 'CHE', 0, 1, '2017-11-18'),
  ('MAC', 'ARS', 0, 0, '2017-11-18'),
  ('LIV', 'TOT', 0, 0, '2017-11-19'),
  ('TOT', 'MAC', 6, 0, '2017-11-25'),
  ('CHE', 'LIV', 3, 1, '2017-11-25'),
  ('ARS', 'MAU', 1, 1, '2017-11-26'),
  ('MAU', 'TOT', 1, 2, '2017-12-02'),
  ('MAC', 'LIV', 3, 0, '2017-12-02'),
  ('ARS', 'CHE', 2, 0, '2017-12-03'),
  ('TOT', 'ARS', 1, 0, '2017-12-09'),
  ('MAC', 'CHE', 1, 1, '2017-12-09'),
  ('LIV', 'MAU', 3, 1, '2017-12-10'),
  ('MAU', 'MAC', 2, 1, '2017-12-16'),
  ('CHE', 'TOT', 1, 1, '2017-12-16'),
  ('ARS', 'LIV', 0, 0, '2018-01-17'),
  ('CHE', 'MAU', 2, 0, '2018-01-13'),
  ('ARS', 'MAC', 1, 1, '2018-01-14'),
  ('TOT', 'LIV', 1, 1, '2018-01-14'),
  ('MAC', 'TOT', 2, 1, '2018-01-20'),
  ('LIV', 'CHE', 3, 0, '2018-01-21'),
  ('MAU', 'ARS', 1, 0, '2018-01-21'),
  ('TOT', 'MAU', 1, 0, '2018-01-27'),
  ('LIV', 'MAC', 3, 3, '2018-01-28'),
  ('CHE', 'ARS', 1, 0, '2018-01-28'),
  ('ARS', 'TOT', 0, 2, '2018-02-03'),
  ('CHE', 'MAC', 1, 0, '2018-02-04'),
  ('MAU', 'LIV', 2, 1, '2018-02-04'),
  ('MAC', 'MAU', 3, 2, '2018-02-10'),
  ('TOT', 'CHE', 2, 3, '2018-02-11'),
  ('LIV', 'ARS', 1, 0, '2018-02-11');
----------------------------------------------------------
--
-- Schema for relation players
--
create table players (
  id integer primary key,
  name varchar(100) not null
);
--
-- Populating relation players
--
insert into players
values (1, 'Ronaldo'),
  (2, 'Rooney'),
  (3, 'Mbappe');

----------------------------------------------------------
--
-- Schema for relation players_teams
--
create table players_teams (
  playerid integer references players (id),
  teamid varchar(3) references teams (id),
  start_date date,
  end_date date,
  primary key (playerid, teamid, start_date)
);
--
-- Populating relation players_teams
--
insert into players_teams
values (1, 'MAU', '2003-08-12', '2007-08-31'),
  (1, 'MAU', '2021-09-01', '2022-11-22'),
  (2, 'MAU', '2004-09-01', '2017-11-22');