create database freaky_league;

create table tournaments (
    id int ;
    `start_date` date,
    end_date date,
    constraint id_tournament primary key (id)
    );